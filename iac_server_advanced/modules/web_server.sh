#!/bin/bash

ans_w1="$1"
ans_w2="$2"

## 0 - Instala softwares necessários

printf "\nBaixando softwares necessários...\n"

apt-get install apache2 -y
apt-get install unzip -y
apt-get autoremove -y

## 1 - Baixa arquivos e descompacta arquivos do repositório

if [ "$ans_w1" = "y" ]; then
    printf "\nBaixando e copiando os arquivos da aplicação...\n"
    
    cd /tmp
    wget "$ans_w2" -O my_app.zip
    unzip my_app.zip -d my_app_folder
    cd my_app_folder
    cp -R * /var/www/html/
fi


# read -p "coloque o endereço do repositório para fazer o download: " ans_w1






## 2 - Copia arquivos do repositório na pasta do servidor

