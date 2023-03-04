#!/bin/bash

    GREEN='\033[0;32m'
    NC='\033[0m'

## 0 - Atualiza o servidor

    printf "\n${GREEN}Atualizando o servidor...${NC}\n"

    export DEBIAN_FRONTEND=noninteractive
    apt-get update -y
    apt-get upgrade -y -qq
    systemctl daemon-reexec
    apt-get autoremove -y