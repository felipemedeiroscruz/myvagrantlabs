#!/bin/bash 
#atualiza os pacotes 
apt update -y
apt upgrade -y

# instala o apache
apt install -y apache2 apache2-utils

# instala o banco
apt install -y mariadb-server mariadb-client

# instala o PHP 
apt install software-properties-common apt-transport-https -y
add-apt-repository ppa:ondrej/php -y
apt update -y
apt upgrade -y
install php-7.4 libapache2-mod-php7.4 -y
systemctl restart apache2
apt install -y php7.4-fpm libapache2-mod-fcgid
a2enmod proxy_fcgi setenvif && sudo a2enconf php7.4-fpm
systemctl restart apache2
systemctl status php7.4-fpm

# Habilitar o Start Automatico
systemctl enable mariadb
systemctl enable apache2

#teste do php 
cd /var/www/html
mkdir php
cd php
echo "<?php phpinfo(); ?>" >info.php
