#!/bin/bash

## 0 - Saudação

printf "\nIniciando protocolo new_iac_server_advanced...\n"
printf "\nEm caso de dúvida, consulte a documentação disponível em <https://github.com/jhonesaly/project_iac2>\n"

## 1 - Atualiza servidor

. /modules

while true; do

    read -n 1 -p "Deseja atualizar servidor? [y/n] " ans_a1
    ans_a1=${ans_a1:-y}

    if [ $ans_a1 = "y" ]; then
        update_server
        break

    elif [ $ans_a1 = "n" ]; then
        break

    else
        printf "\nDigite um comando válido.\n"
        continue

    fi

done

## Cria servidor de arquivos

## Cria servidor de web

## Cria servidor de banco de dados

##  - Fim
printf "\nFinalizado.\n"