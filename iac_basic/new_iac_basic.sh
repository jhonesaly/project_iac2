#!/bin/bash

## 0 - Saudações

printf "\nIniciando protocolo new_iac...\n"
printf "\nEm caso de dúvida, consulte a documentação disponível em <https://github.com/jhonesaly/project_iac1\n>"

## 1 - Criando novos diretórios

printf "\nCriando diretórios...\n"

mkdir /publico
mkdir /adm
mkdir /ven
mkdir /sec

## 2 - Criando novos grupos

printf "\nCriando grupos de usuários...\n"

groupadd GRP_ADM
groupadd GRP_VEN
groupadd GRP_SEC

## 3 - Criando novos usuários

printf "\nCriando usuários e os adicionando nos grupos...\n"

useradd carlos -c "Carlos" -m -s /bin/bash -p $(openssl passwd -6 123) -G GRP_ADM
useradd maria -c "Maria" -m -s /bin/bash -p $(openssl passwd -6 123) -G GRP_ADM
useradd joão -c "João" -m -s /bin/bash -p $(openssl passwd -6 123) -G GRP_ADM

useradd debora -c "Debora" -m -s /bin/bash -p $(openssl passwd -6 123) -G GRP_VEN
useradd sebastiana -c "Sebastiana" -m -s /bin/bash -p $(openssl passwd -6 123) -G GRP_VEN
useradd roberto -c "Roberto" -m -s /bin/bash -p $(openssl passwd -6 123) -G GRP_VEN

useradd josefina -c "Josefina" -m -s /bin/bash -p $(openssl passwd -6 123) -G GRP_SEC
useradd amanda -c "Amanda" -m -s /bin/bash -p $(openssl passwd -6 123) -G GRP_SEC
useradd rogerio -c "Rogerio" -m -s /bin/bash -p $(openssl passwd -6 123) -G GRP_SEC

## 4 - Alterando permissões

printf "\nEspecificando permissões do diretórios...\n"

chown root:GRP_ADM /adm
chown root:GRP_VEN /ven
chown root:GRP_SEC /sec
chown root:root /publico

chmod 770 /adm
chmod 770 /ven
chmod 770 /sec
chmod 777 /publico

## 5 - Mudar dono de todos os diretórios criados para root

sudo chown -R root:root /publico
sudo chown -R root:root /adm
sudo chown -R root:root /ven
sudo chown -R root:root /sec

## 6 - Conceder permissões a todos os usuários dentro do diretório publico

sudo chmod -R 777 /publico

## 7 - Conceder permissões aos usuários dentro de seus respectivos diretórios

sudo chmod -R 770 /adm
sudo chmod -R 770 /ven
sudo chmod -R 770 /sec

# 8 - Fim

printf "\nFinalizado.\n"