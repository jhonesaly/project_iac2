#!/bin/bash

## 0 - Atualiza o servidor

printf "\nAtualizando o servidor...\n"

export DEBIAN_FRONTEND=noninteractive
apt-get update -y
apt-get upgrade -y -qq
systemctl daemon-reexec
apt-get autoremove -y