#!/bin/bash 
#atualiza os pacotes 
apt update -y
apt upgrade -y

# instala o apache
apt install -y apache2 apache2-utils

# instala o banco
apt install -y mariadb-server mariadb-client

# instala o PHP 
apt install -y software-properties-common
add-apt-repository ppa:ondrej/php
apt update
apt install -y php8.0 libapache2-mod-php8.0
systemctl restart apache2
apt update -y
apt install -y php8.0-fpm libapache2-mod-fcgid
a2enmod proxy_fcgi setenvif
a2enconf php8.0-fpm
systemctl restart apache2

# Habilitar o Start Automatico
systemctl enable mariadb
systemctl enable apache2

#teste do php 
cd /var/www/html
mkdir php
cd php
echo "<?php phpinfo(); ?>" > info.php
