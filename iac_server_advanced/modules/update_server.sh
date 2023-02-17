#!/bin/bash

## 0 - Atualiza o servidor

# function update_server() {
#     printf "\nAtualizando o servidor...\n"
#     apt-get update
#     apt-get upgrade -y
# }

printf "\nAtualizando o servidor...\n"

export DEBIAN_FRONTEND=noninteractive
apt-get update -y
apt-get upgrade -y -qq
systemctl daemon-reexec