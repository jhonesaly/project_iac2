#!/bin/bash

## 0 - Saudações

printf "\nIniciando protocolo new_iac_server...\n"
printf "\nEm caso de dúvida, consulte a documentação disponível em <https://github.com/jhonesaly/project_iac2>\n"

## 1 - Atualiza o servidor

printf "\nAtualizando o servidor...\n"

apt-get update -y
apt-get upgrade -y
systemctl daemon-reexec

## 2 - Instala softwares necessários

apt-get install apache2 -y
apt-get install unzip -y

## 3 - Baixa arquivos e descompacta arquivos do repositório

printf "\nBaixando e copiando os arquivos da aplicação...\n"

cd /tmp
wget https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip

unzip main.zip

## 4 - Copia arquivos do repositório na pasta do servidor

cd linux-site-dio-main
cp -R * /var/www/html/

## 5 - Fim

printf "\nFinalizado.\n"