#!/bin/bash

## 0 - Instala softwares necessários

printf "\nBaixando softwares necessários...\n"

apt-get install apache2 -y
apt-get install unzip -y
apt-get autoremove -y

## 1 - Baixa arquivos e descompacta arquivos do repositório

printf "\nBaixando e copiando os arquivos da aplicação...\n"

cd /tmp

ans_w1="$1"

wget "$ans_w1" -O my_app.zip
unzip my_app.zip -d my_app_folder

## 2 - Copia arquivos do repositório na pasta do servidor

cd my_app_folder
cp -R * /var/www/html/