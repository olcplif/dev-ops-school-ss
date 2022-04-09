#!/bin/sh
apt-get update
apt-get install apache2 -y
#cp /home/ubuntu/upload/index.html /var/www/html
#chmod 644 /var/www/html/index.html
systemctl enable apache2
systemctl start apache2
echo "<html><h1>Welcome to Apache Web Server</h2><h4>Homework for DevOps spring school * SoftServe *</h4><p>By Oleksandr Lysenko</html>" > /var/www/html/index.html
