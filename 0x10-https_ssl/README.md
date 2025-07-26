# 0x10-https_ssl

This directory contains scripts and configuration files related to HTTPS, SSL, and domain management for the ALX System Engineering & DevOps project.

## Files

- `0-world_wide_web`: Bash script to display information about subdomains for a given domain using `dig` and `awk`. It outputs the record type and destination IP for subdomains such as `www`, `lb-01`, `web-01`, and `web-02`.
- `1-haproxy_ssl_termination`: Script to configure SSL termination on HAProxy.
- `100-redirect_http_to_https`: Script or configuration to redirect HTTP traffic to HTTPS.

## Usage

Run the scripts on your Ubuntu servers as instructed in the project tasks. For `0-world_wide_web`, use:

```bash
./0-world_wide_web <domain> [subdomain]
```

- If only `<domain>` is provided, the script will display info for the subdomains: `www`, `lb-01`, `web-01`, and `web-02`.
- If both `<domain>` and `[subdomain]` are provided, it will display info for the specified subdomain only.

## Purpose

These scripts help automate the configuration and auditing of domain subdomains, SSL, and HTTPS setups to meet the requirements of the ALX project.
