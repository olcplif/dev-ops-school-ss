#!/bin/sh
apt-get update
apt-get install -y apache2
service start apache2
chkonfig apache2 on
echo "<html><h1>Welcome to Apache Web Server</h2><h4>Homework for DevOps spring school * SoftServe *</h4><p>By Oleksandr Lysenko</html>" > /var/www/html/index.html