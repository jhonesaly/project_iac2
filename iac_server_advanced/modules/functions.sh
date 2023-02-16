#!/bin/bash

## 0 - Atualiza o servidor

function update_server() {
    printf "\nAtualizando o servidor...\n"
    apt-get update
    apt-get upgrade -y
}