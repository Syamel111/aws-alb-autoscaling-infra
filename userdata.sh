#!/bin/bash
apt update -y
apt install -y nginx
echo "<h1>Hello from $(hostname)</h1>" > /var/www/html/index.html
systemctl start nginx

