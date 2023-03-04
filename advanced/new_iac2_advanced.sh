#!/bin/bash

    GREEN='\033[0;32m'
    NC='\033[0m'

## 0 - Saudação

    printf "\n${GREEN}Iniciando protocolo new_iac_server_advanced...${NC}\n"
    printf "\n${GREEN}Em caso de dúvida, consulte a documentação disponível em <https://github.com/jhonesaly/project_iac2>${NC}\n"

## 1 - Configurações

    question_number=1

    while true; do

        if [ $question_number -eq 1 ]; then
            read -n 1 -p "Deseja atualizar servidor? [y/n] " ans_a1
            printf "\n...\n"
            
            if [ "$ans_a1" != "y" ] && [ "$ans_a1" != "n" ]; then
                printf "\nDigite um comando válido.\n"
                continue

            else
                question_number=2
                continue
            fi

        elif [ $question_number -eq 2 ]; then
            read -n 1 -p "Deseja criar um servidor web? [y/n] " ans_a2
            printf "\n...\n"
            
            if [ "$ans_a2" != "y" ] && [ "$ans_a2" != "n" ]; then
                printf "\nDigite um comando válido.\n"
                continue
                
            else
                if [ "$ans_a2" = "y" ]; then
                    read -n 1 -p "Deseja fazer o download de um repositório com o conteúdo do site? [y/n] " ans_w1
                    printf "\n...\n"

                    if [ "$ans_w1" != "y" ] && [ "$ans_w1" != "n" ]; then
                        printf "\nDigite um comando válido.\n"
                        continue
                    
                    elif [ $ans_w1 = "y" ]; then
                        read -p "coloque o endereço do repositório para fazer o download: " ans_w2
                    fi
                fi
                
                question_number=3
                continue
            fi
        fi

        printf "\n${GREEN}Configurando...${NC}\n"
        break

    done

## 2 - Atualiza servidor

    if [ $ans_a1 = "y" ]; then
        ./modules/update_server.sh 
    fi

## 3 - Cria servidor web

    if [ $ans_a2 = "y" ]; then
        ./modules/web_server.sh "$ans_w1" "$ans_w2" 
        printf "\n${GREEN}Para acessar o conteúdo do servidor web, digite no browser o IP da máquina que é:${NC}\n" 
        hostname -I

    fi

## 4 - Fim
    
    printf "\n${GREEN}Finalizado.${NC}\n"