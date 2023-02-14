#!/bin/bash

## 0 - Exclui todos os usuários, exceto o usuário root
printf "\nExcluindo usuários...\n"

for user in $(ls /home); do
  if [ $user != "root" ]; then
    sudo userdel -rf $user 2> /dev/null
  fi
done

## 1 - Exclui todos os grupos com id superior a 999 e menor que 1100
printf "\nExcluindo grupos...\n"

for group in $(cut -d: -f1 /etc/group); do
  id=$(getent group $group | cut -d: -f3)

  if [ $id -gt 999 ] && [ $id -lt 1100 ]; then
    if [ $group != "sync" ]; then
      sudo groupdel -f $group
    fi
  fi
done

## 2 - Exclui todas as pastas anteriores da empresa.
printf "\nExcluindo pastas...\n"

### 2.1 - Procurar diretório com nome que contém "_directories"
dir=$(find / -type d -name "*_directories" 2>/dev/null)

### 2.2 - Verificar se algum diretório foi encontrado
if [ -z "$dir" ]; then
  printf "\nDiretório de empresa anterior não encontrado.\n"

else
### 2.3 - Exclui o diretório encontrado
  sudo rm -rf $dir

fi

### 2.4 - Exclui os diretórios dos usuários
for user in $(ls /home); do
  sudo rm -rf /home/$user
done

## 3 - Adiciona novo usuário administrador

printf "\nAdicionando novo usuário administrador...\n"

read -p "Digite o nome do novo usuário administrador: " user_adm
adduser $user_adm
usermod -aG sudo $user_adm