#!/bin/bash

## 0 - Saudações

printf "\nIniciando protocolo new_iac_server...\n"
printf "\nEm caso de dúvida, consulte a documentação disponível em <https://github.com/jhonesaly/project_iac2>\n"

## 1 - Atualiza o servidor

printf "\nAtualizando o servidor...\n"

apt-get update
apt-get upgrade -y
apt-get install apache2 -y
apt-get install unzip -y

## 2 - Baixa arquivos do repositório e 

printf "\nBaixando e copiando os arquivos da aplicação...\n"

cd /tmp
wget https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip
unzip main.zip
cd linux-site-dio-main
cp -R * /var/www/html/
#  - Fim

printf "\nFinalizado.\n"