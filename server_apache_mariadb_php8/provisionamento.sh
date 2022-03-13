#!/bin/bash 
#atualiza os pacotes 
yum -y update 

# instala o servidor de banco de dados 
wget https://repo.mysql.com//mysql80-community-release-el7-5.noarch.rpm
rpm -Uvh mysql80-community-release-el7-5.noarch  

# instala o apache 
yum install httpd

# instala o PHP 
yum -y install https://dl.fedoraproject.org/pub/epel/epel-release-latest-7.noarch.rpm
yum -y install https://rpms.remirepo.net/enterprise/remi-release-7.rpm
yum -y install yum-utils
yum-config-manager --disable 'remi-php*'
yum-config-manager --enable remi-php80
yum -y install php php-{cli,fpm,mysqlnd,zip,devel,gd,mbstring,curl,xml,pear,bcmath,json}


# habilita iniciar serviço 

systemctl start httpd
systemctl start mysqld

# Habilitar o Start Automatico
systemctl enable mysqld
systemctl enable httpd