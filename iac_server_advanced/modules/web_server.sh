#!/bin/bash

ans_w1="$1"
ans_w2="$2"

## 0 - Instala softwares necessários

printf "\nBaixando softwares necessários...\n"

export DEBIAN_FRONTEND=noninteractive
apt-get install apache2 -y -qq
systemctl daemon-reexec

## 1 - Baixa arquivos e descompacta arquivos do repositório

if [ "$ans_w1" = "y" ]; then
    printf "\nBaixando e copiando os arquivos da aplicação...\n"
    
    apt-get install unzip -y

    cd /tmp
    wget "$ans_w2" -O my_app.zip
    unzip my_app.zip -d my_app_folder
    cd my_app_folder
    cp -R * /var/www/html/
fi


# read -p "coloque o endereço do repositório para fazer o download: " ans_w1






## 2 - Copia arquivos do repositório na pasta do servidor

