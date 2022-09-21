#!/bin/bash

Echo "Início do Script"

Echo "Atualizando o Servidor"

apt-get update
apt-get upgrade -y
apt-get install apache2 -y
apt-get install unzip -y
apt-get install unrar -y

Echo "Baixando e copiando os arquivos do site"

cd /tmp
wget https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip
unzip main.zip
cd linux-site-dio-main
cp -R * /var/www/html/
