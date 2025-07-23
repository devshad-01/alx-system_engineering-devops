# Configures Nginx to add X-Served-By header with the server's hostname using Puppet
package { 'nginx':
  ensure => installed,
}

service { 'nginx':
  ensure     => running,
  enable     => true,
  require    => Package['nginx'],
}

# Insert add_header after server_name _; using the $hostname fact
exec { 'add_x_served_by_header':
  command => "sed -i '/server_name _;/a \\tadd_header X-Served-By ${::hostname};' /etc/nginx/sites-available/default",
  unless  => "grep -q 'add_header X-Served-By' /etc/nginx/sites-available/default",
  require => Package['nginx'],
  notify  => Service['nginx'],
}
