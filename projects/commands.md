# Project 1 — NGINX Hosting (Commands)

## System update
sudo apt update -y
sudo apt upgrade -y

## Install NGINX
sudo apt install nginx -y

## Service management
sudo systemctl start nginx
sudo systemctl restart nginx
sudo systemctl stop nginx
sudo systemctl enable nginx
sudo systemctl status nginx

## Check IP and connectivity
hostname -I
ip addr show
curl -I http://localhost

## Replace default page (edit with nano)
sudo cp /var/www/html/index.nginx-debian.html /var/www/html/index.nginx-debian.html.bak 2>/dev/null || true
sudo tee /var/www/html/index.html > /dev/null <<'HTML'
<html>
  <head><title>Addy's NGINX Project</title></head>
  <body>
    <h1>Welcome to Addy's DevOps NGINX Project</h1>
    <p>This page is hosted on NGINX inside WSL.</p>
  </body>
</html>
HTML

## Permissions (optional)
sudo chown -R $USER:www-data /var/www/html
sudo chmod -R 775 /var/www/html

## Logs
sudo tail -n 50 /var/log/nginx/access.log
sudo tail -n 50 /var/log/nginx/error.log
sudo journalctl -u nginx --no-pager -n 100

