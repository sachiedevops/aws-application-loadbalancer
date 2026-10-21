#!/bin/bash

apt-get update -y
apt-get install -y apache2

systemctl enable --now apache2

echo "<h1>Server Details</h1>" > /var/www/html/index.html
echo "<p><strong>Hostname: $(hostname)</strong></p>" >> /var/www/html/index.html
echo "<p><strong>IP Address: $(hostname -I | awk '{print $1}')</strong></p>" >> /var/www/html/index.html
