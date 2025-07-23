# Installs and configures Nginx to serve 'Hello World!' at root and 301 redirect /redirect_me
package { 'nginx':
  ensure => installed,
}

service { 'nginx':
  ensure     => running,
  enable     => true,
  require    => Package['nginx'],
}

file { '/var/www/html/index.html':
  ensure  => file,
  content => "Hello World!\n",
  owner   => 'www-data',
  group   => 'www-data',
  mode    => '0644',
  require => Package['nginx'],
}

file { '/etc/nginx/sites-available/default':
  ensure  => file,
  owner   => 'root',
  group   => 'root',
  mode    => '0644',
  require => Package['nginx'],
  notify  => Service['nginx'],
  content => template('nginx_default.erb'),
}

# Template for nginx config
file { '/etc/puppetlabs/code/environments/production/modules/nginx/templates/nginx_default.erb':
  ensure  => file,
  content => @(END)
server {
    listen 80 default_server;
    listen [::]:80 default_server;
    root /var/www/html;
    index index.html index.htm index.nginx-debian.html;
    server_name _;
    location / {
        try_files $uri $uri/ =404;
    }
    location = /redirect_me {
        return 301 https://www.google.com;
    }
}
| END
}
