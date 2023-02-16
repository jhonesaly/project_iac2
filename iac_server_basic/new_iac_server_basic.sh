#!/bin/bash

## 0 - Saudações

printf "\nIniciando protocolo new_iac_server...\n"
printf "\nEm caso de dúvida, consulte a documentação disponível em <https://github.com/jhonesaly/project_iac2>\n"

## 1 - Atualiza o servidor

printf "\nAtualizando o servidor...\n"

apt-get update
apt-get upgrade -y

## 2 - Instala software que permite máquina funcionar como servidor web

apt-get install apache2 -y
apt-get install unzip -y

## 2 - Baixa arquivos do repositório

printf "\nBaixando e copiando os arquivos da aplicação...\n"

cd /tmp
wget https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip

## 3 - Descompacta arquivo baixado

unzip main.zip

## 4 - muda para pasta criada pela descompactação

cd linux-site-dio-main
cp -R * /var/www/html/
#  - Fim

printf "\nFinalizado.\n"