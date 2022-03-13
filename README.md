# Servidores provisionados com Vagrant [VirtualBox]

## Resumo.

Iniciamente a voz utilizada foi do Ubutun server 20.04 LTS, onde criei para utilizar com o vagrant em meus testes, foi disponobilizada na **"Vagrant Cloud"**. https://app.vagrantup.com/felipemedeiros/boxes/focal



## Requisitos.

Para provisionar as maquinas virtuais basta instalar o Virtualbox, Vagrant, obtendo os pacotes dos respectivos desenvolvedores, por questao de apenas pegar as vesoes mais atuais, este lab foi desenvolvido usando o virtualbox 6.1.32 e Vagrant 2.2.19, aconselho usar as versoes mais recentes. 

Ressalto que ainda deve instalar o pluguin **vagrant-vbguest**   pra isso basta rodar o comando *vagrant plugin install vagrant-vbguest*.
    
    As vezes a maquina virtual da um erro sobre range de IPS, basta uma pequena ediçao ou criar um arquivo em /etc/vbox
    networks.conf com e colocar as seguintes informações.

      * 10.0.0.0/8 192.168.0.0/16
      * 2001::/64


## Servidores Configurados.

| Pasta    | Sistema Operecional|Configuraçoes do servidor |
| -------------|------- |:-------------:|
| server_apache_mariadb_php7.4| Ubuntu Server 20.04 Lts |Apache + MariaDb + Php7.4     |
| server_apache_mariadb_php 8.0 | Ubuntu Server 20.04 Lts   | Apache + MariaDb + Php7.4



## Pasta Sincronizada

O  As maquinas virtuais sincroniza a pasta /home/felipe/web da maquina local com o diretorio /var/www/html da maquina hospedeira, basta alterar conforme seu gosto, a linha nº 6 do respectivo vagrant file. 

## Maria DB 

Se encontra apenas instalado, basta realizar a configuração inicial com o comando **mysql_secure_installation**, e configurar ao seu gosto. 

## Portas redirecionadas. 

As portas SSH, HTTP e Mysql já estão devidamente configuradas, apenas a porta Http (80) que redireciona para a porta (8080)

Se acessar na maquina local o apache pelo brownser digitando 127.0.0.1:8080 e ainda obter as informações do php pelo 127.0.0.1:8080/php/info.php

## Future Features 

Vou adicionado os serviores que uso para trabalhar Com desenvolvimento, seja PHP, Java, apache, nginx Toncat, etc, embreve com o Centos8.

## Utilizando 

Tudo lido e revisado, só colocar a mao na massa basta navegar pelo terminal e usar os seguintes comandos
Vagrant up (vai iniciar a maquina virtual)
vagrant ssh (vai permitir o acesso ao terminal da maquina virtual pelo ssh)
vagrant halt (desliga a maquina virtual)
vagrant destroy (deleta a maquina virtual)

 
