# Project 1 — NGINX Hosting

## Overview
This project demonstrates hosting a static web page using NGINX on a Linux server (WSL on Windows).
It covers installation, service management, replacing the default page, permissions, and log inspection.

## What I built
- Installed NGINX on Ubuntu (WSL)
- Started and enabled the nginx service
- Replaced /var/www/html/index.html with a custom page
- Verified the site locally and checked logs
- Documented all commands in commands.md

## Skills demonstrated
- Linux package management (apt)
- Service management with systemctl
- Basic web hosting with NGINX
- File permissions and ownership
- Log inspection and troubleshooting

## How to run (WSL)
1. Update:
   `sudo apt update && sudo apt upgrade -y`
2. Install nginx:
   `sudo apt install nginx -y`
3. Start nginx:
   `sudo systemctl start nginx`
4. Open `http://localhost` in your Windows browser.

