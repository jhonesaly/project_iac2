# Desafio de Projeto 1 - Bootcamp de Linux

# Sumário

- [Proposta do Projeto](#Proposta-do-Projeto)
    - [Objetivos do Projeto](#Objetivos-do-Projeto)
    - [Requerimentos do Projeto](#Requerimentos-do-Projeto)
- [Organização do Repositório](#organização-do-repositório)
    - [iac_basic](#iac_basic)
    - [iac_advanced](#iac_advanced)
- [Definições Importantes](#Definições-Importantes)
- [Montando na sua máquina](#Montando-na-sua-Máquina)
- [Observações](#Observações)

------
# Proposta do Projeto

Infraestrutura como Código - Script de Provisionamento de um Servidor Web (Apache)

## Objetivos do Projeto

Neste projeto iremos criar um script onde será provisionado um servidor web automaticamente. Um servidor web é um software e hardware que usa HTTP (Hypertext Transfer Protocol) e outros protocolos para responder a solicitações de clientes feitas pela World Wide Web. O principal trabalho de um servidor da web é exibir o conteúdo do site por meio do armazenamento, processamento e entrega de páginas da web aos usuários.

## Requerimentos do Projeto

- Restaurar o snapshot criado anteriormente no virtualbox;
- Atualizar o servidor;
- Instalar o apache2;
- Instalar o unzip;
- Baixar a aplicação disponível no endereço https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip no diretório /tmp;
- Copiar os arquivos da aplicação no diretório padrão do apache;
- Subir arquivo de script para um repositório no GitHub.

------
# Organização do repositório

## iac_server_basic

Script que seguirá estritamente aquilo que foi proposto pelo desafio, criando somente as pastas, usuários e grupos descritos nos requerimentos. 

Dentro da respectiva pasta há um outro README.md que explica detalhadamente o que o script faz.

## iac_server_advanced

Script avançado, que utiliza lógica para permitir a generalização do script básico, permitindo que seja criado quaisquer pastas, usuários e grupos direto na linha de comando de maneira muito mais simplificada. 

Além disso, também é implementado o algoritmo que permite a exclusão de todas as pastas, grupos e usuários anteriores, se for de interesse do administrador. 

Tudo isso utilizando uma estrutura modularizada que permite maior flexibilidade e mais implementações no futuro.

Dentro da respectiva pasta há um outro README.md que explica detalhadamente o que o script faz.

------
# Definições Importantes

## Server

...

------
# Montando na sua máquina

Leia as observações (próxima seção) antes de seguir com a montagem.

Para utilizar os scripts na sua própria máquina, você pode fazer o seguinte:

0 - 

------
# Observações

- O tutorial de montagem leva em consideração que também está sendo utilizada uma máquina linux
- Os scripts não foram testados em todas as distribuições Linux existentes. Recomenda-se teste em um ambiente controlado antes de utilizá-lo em produção.
- A ideia é que o script permita que uma pessoa leiga em programação consiga criar a infraestrutura sem abrir o código, mas mesmo o script básico pode ser utilizado por um programador para criar diretamente aquilo que deseja alterando os parâmetros no código.


[Voltar ao topo](#sumário)