#!/bin/bash

## 0 - Saudação

printf "\nIniciando protocolo new_iac_server_advanced...\n"
printf "\nEm caso de dúvida, consulte a documentação disponível em <https://github.com/jhonesaly/project_iac2>\n"

question_number=1

while true; do

## 0 - Configurações

    if [ $question_number -eq 1 ]; then
        read -n 1 -p "Deseja atualizar servidor? [y/n] " ans_a1
        printf "\n...\n"
        
        if [ "$ans_a1" != "y" ] && [ "$ans_a1" != "n" ]; then
            printf "\nDigite um comando válido.\n"

        else
             question_number=2
             continue
        fi


    elif [ $question_number -eq 2 ]; then
        read -n 1 -p "Deseja criar um servidor web? [y/n] " ans_a2
        printf "\n...\n"
        
        if [ $ans_a2 = "y" ]; then
            read -p "coloque o endereço do repositório para fazer o download: " ans_w1
        fi
        
        if [ "$ans_a2" != "y" ] && [ "$ans_a2" != "n" ]; then
            printf "\nDigite um comando válido.\n"

        else
             question_number=3
             continue
        fi


    fi

    printf "\nConfigurando...\n"
    break

done

## 1 Atualiza servidor

if [ $ans_a1 = "y" ]; then
    ./modules/update_server.sh "$ans_w1"
fi

## 2 Cria servidor web

if [ $ans_a2 = "y" ]; then
    ./modules/web_server.sh        
fi

## Cria servidor de arquivos

## Cria servidor de banco de dados

##  - Fim
printf "\nFinalizado.\n"