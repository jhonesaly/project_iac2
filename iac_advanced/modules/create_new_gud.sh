#!/bin/bash

## 0 - Saudação
printf "\nComeçando a criação da nova infraestrutura...\n"
read -p "Digite o nome da empresa dona do sistema: " company

## 1 - Cria o diretório da empresa
mkdir /${company}_directories

## 2 - Cria o diretório público e modifica a permissão de acesso
printf "\nCriando diretório público e configurando...\n"

mkdir /${company}_directories/public
chown root:root /${company}_directories/public
chmod 777 /${company}_directories/public


## 3 - Recebe a instrução e cria os grupos, seus diretórios e modifica suas permissões de acesso de acordo com o grupo

read -p "Digite o nome das equipes separadas por espaço: " -a groups

printf "\nCriando grupos, seus diretórios e configurando...\n"

for group in "${groups[@]}"; do
    mkdir /${company}_directories/$group
    groupadd GRP_${group}
    chown root:GRP_${group} /${company}_directories/$group
    chmod 770 /${company}_directories/$group
done

## 4 - Recebe a instrução e cria os usuários, já os coloca nos seus respectivos grupos
printf "\nCriando usuários...\n"

for group in "${groups[@]}"; do
    read -p "Digite o nome dos colaboradores da equipe ${group} separandos por espaço: " -a users
    for user in "${users[@]}"; do
        useradd ${user} -m -s /bin/bash -p $(openssl passwd -6 123) -G GRP_${group}
    done
done