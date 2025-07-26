# 0x0F-load_balancer

This directory contains scripts and configuration files related to load balancer and web server setup for the ALX System Engineering & DevOps project.

## Files

- `0-custom_http_response_header`: Bash script to configure Nginx to add a custom `X-Served-By` header with the server's hostname in HTTP responses.
- `1-install_load_balancer`: Script to install and configure a load balancer (e.g., HAProxy).
- `2-puppet_custom_http_response_header.pp`: Puppet manifest to automate the addition of the custom HTTP response header.

## Usage

Run the scripts on your Ubuntu servers as instructed in the project tasks. Ensure you have the necessary permissions and that Nginx or HAProxy is installed where required.

## Purpose

These scripts help automate the configuration of web servers and load balancers to meet the requirements of the ALX project, including custom HTTP headers and high availability setups.
