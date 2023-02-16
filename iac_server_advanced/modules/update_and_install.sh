#!/bin/bash

## 0 - Atualiza o servidor

function update_server() {
    printf "\nAtualizando o servidor...\n"
    apt-get update
    apt-get upgrade -y
}


## 2 - Instala softwares necessários

apt-get install unzip -y

apt-get install apache2 -y
apt-get install samba -y