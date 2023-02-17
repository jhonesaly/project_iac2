#!/bin/bash

## 0 - Saudação

printf "\nIniciando protocolo new_iac_server_advanced...\n"
printf "\nEm caso de dúvida, consulte a documentação disponível em <https://github.com/jhonesaly/project_iac2>\n"

question_number=1


    read -n 1 -p "Deseja atualizar servidor? [y/n] " ans_a1
    printf "\n...\n"
    read -n 1 -p "Deseja criar servidor web? [y/n] " ans_a2

while true; do

## 0 - Configurações

    if [ $question_number -eq 1 ]; then
        read -n 1 -p "Deseja atualizar servidor? [y/n] " ans_a1
    elif [ $question_number -eq 2 ]; then
        read -n 1 -p "Deseja criar um servidor web? [y/n] " ans_a2
    else
        read -n 1 -p "Deseja criar um servidor de arquivo? [y/n] " ans_a3
    fi

    if [ "$ans_a1" != "y" ] && [ "$ans_a1" != "n" ]; then
        printf "\nDigite um comando válido.\n"
        continue
    elif [ "$ans_a2" != "y" ] && [ "$ans_a2" != "n" ]; then
        printf "\nDigite um comando válido.\n"
        question_number=2
        continue
    elif [ "$ans_a3" != "y" ] && [ "$ans_a3" != "n" ]; then
        printf "\nDigite um comando válido.\n"
        question_number=3
        continue
    fi

    # Todas as perguntas foram respondidas corretamente, então saia do loop
    break
done



    if [ "$ans_a1" != "y" ] && [ "$ans_a1" != "n" ]; then
        printf "\nDigite um comando válido.\n"
        continue

    elif [ $ans_a1 = "n" ]; then
        printf "\n...\n"
        break

    else
        printf "\nDigite comandos válidos.\n"
        continue

    fi

done

## 1 Atualiza servidor

if [ $ans_a1 = "y" ]; then
    ./modules/update_server.sh 
fi

## 2 Cria servidor web

if [ $ans_a2 = "y" ]; then
    ./modules/web_server.sh        
fi

## Cria servidor de arquivos

## Cria servidor de banco de dados

##  - Fim
printf "\nFinalizado.\n"