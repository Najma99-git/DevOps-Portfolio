#!/bin/bash

apt-get update -y

apt-get install -y \
  apache2 \
  php \
  php-mysql \
  mariadb-server \
  wget \
  unzip


systemctl enable mariadb
systemctl start mariadb

mysql -e "CREATE DATABASE wordpress;"
mysql -e "CREATE USER 'wordpress'@'localhost' IDENTIFIED BY 'wordpress123';"
mysql -e "GRANT ALL PRIVILEGES ON wordpress.* TO 'wordpress'@'localhost';"
mysql -e "FLUSH PRIVILEGES;"


cd /tmp

wget https://wordpress.org/latest.tar.gz

tar -xzf latest.tar.gz

rm -f /var/www/html/index.html

cp -r wordpress/* /var/www/html/


cd /var/www/html

cp wp-config-sample.php wp-config.php

sed -i "s/database_name_here/wordpress/" wp-config.php
sed -i "s/username_here/wordpress/" wp-config.php
sed -i "s/password_here/wordpress123/" wp-config.php


chown -R www-data:www-data /var/www/html
chmod -R 755 /var/www/html

systemctl enable apache2
systemctl restart apache2
