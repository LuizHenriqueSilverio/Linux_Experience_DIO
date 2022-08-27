#!/bin/bash

echo "Atualizando o servidor..."

apt-get update
apt-get upgrade -y

##############################################

echo "Instalando o apache..."

apt-get install apache2 -y

echo "Instalando o unzip..."

apt-get install unzip -y

##############################################

echo "Baixando arquivos de configuração..."

cd /tmp
wget https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip
unzip main.zip
cd linux-site-dio-main

##############################################

echo "Configurando o apache..."

cp -R * /var/www/html/

echo "Configuração finalizada!!!"
