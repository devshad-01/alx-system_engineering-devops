# Firewall Configuration

This project configures the UFW firewall on web-01 to block all incoming traffic except for essential ports:

- TCP port 22 (SSH)
- TCP port 80 (HTTP)
- TCP port 443 (HTTPS/SSL)

## Commands used

```sh
apt-get update
apt-get install -y ufw
ufw --force reset
ufw default deny incoming
ufw default allow outgoing
ufw allow 22/tcp
ufw allow 80/tcp
ufw allow 443/tcp
ufw --force enable
```

The script `0-block_all_incoming_traffic_but` automates these steps to ensure only the required ports are open for incoming connections.