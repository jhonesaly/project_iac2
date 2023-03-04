#!/bin/bash

    GREEN='\033[0;32m'
    NC='\033[0m'

    ans_w1="$1"
    ans_w2="$2"

## 0 - Instala softwares necessários

    printf "\n${GREEN}Baixando softwares necessários...${NC}\n"

    export DEBIAN_FRONTEND=noninteractive
    apt-get install apache2 -y -qq
    systemctl daemon-reexec

## 1 - Baixa arquivos e descompacta arquivos do repositório

    if [ "$ans_w1" = "y" ]; then
        printf "\n${GREEN}Baixando e copiando os arquivos da aplicação...${NC}\n"
        
        apt-get install unzip -y

        cd /tmp || return
        wget "$ans_w2" -O my_app.zip
        unzip my_app.zip

        # Extrair o nome da pasta do repositório baixado usando a ferramenta basename
        app_folder_name=$(basename $(unzip -l my_app.zip | awk '{print $NF}' | grep -E '/$' | head -n 1) "/")

        # Usar o nome da pasta do repositório baixado na linha cp
        cp -R "$app_folder_name"/* /var/www/html/
        cd - || return
        
    fi