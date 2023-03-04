#!/bin/bash

    GREEN='\033[0;32m'
    NC='\033[0m'

## 0 - Saudações

    printf "\n${GREEN}Iniciando protocolo new_iac_server...\n${NC}"
    printf "\n${GREEN}Em caso de dúvida, consulte a documentação disponível em <https://github.com/jhonesaly/project_iac2>${NC}\n"

## 1 - Atualiza o servidor

    printf "\n${GREEN}Atualizando o servidor...${NC}\n"

    export DEBIAN_FRONTEND=noninteractive
    apt-get update -y
    apt-get upgrade -y -qq
    systemctl daemon-reexec

## 2 - Instala softwares necessários

    apt-get install apache2 -y
    apt-get install unzip -y

## 3 - Baixa arquivos e descompacta arquivos do repositório

    printf "\n${GREEN}Baixando e copiando os arquivos da aplicação...${NC}\n"

    cd /tmp
    wget https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip

    unzip main.zip

## 4 - Copia arquivos do repositório na pasta do servidor

    cd linux-site-dio-main
    cp -R * /var/www/html/

## 5 - Fim

    printf "\n${GREEN}Finalizado.${NC}\n"