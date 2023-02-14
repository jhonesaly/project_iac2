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

Infraestrutura como Código: Script de Criação de Estrutura de Usuários, Diretórios e Permissões

## Objetivos do Projeto

criar um script onde toda a infraestrutura de usuários, grupos de usuários, diretórios e permissões serão criadas automaticamente. Será realizado o upload do arquivo de script no GitHub para futuras reutilizações do script. Sendo assim, toda nova máquina virtual que for iniciada já estará pronta para uso quando o script for executado.

## Requerimentos do Projeto

Diretórios:

- /publico
- /adm
- /ven
- /sec

Grupos (explicação):

- 1: GRP_ADM (administrativo)
- 2: GRP_VEN (vendas)
- 3: GRP_SEC (secretariado)

Usuários (grupo):

- carlos (1)
- maria (1)
- joao (1)
- debora (2)
- sebastiana (2)
- roberto (2)
- josefina (3)
- amanda (3)
- rogerio (3)

------
# Organização do repositório

## iac_basic

Script que seguirá estritamente aquilo que foi proposto pelo desafio, criando somente as pastas, usuários e grupos descritos nos requerimentos. 

Dentro da respectiva pasta há um outro README.md que explica detalhadamente o que o script faz.

## iac_advanced

Script avançado, que utiliza lógica para permitir a generalização do script básico, permitindo que seja criado quaisquer pastas, usuários e grupos direto na linha de comando de maneira muito mais simplificada. 

Além disso, também é implementado o algoritmo que permite a exclusão de todas as pastas, grupos e usuários anteriores, se for de interesse do administrador. 

Tudo isso utilizando uma estrutura modularizada que permite maior flexibilidade e mais implementações no futuro.

Dentro da respectiva pasta há um outro README.md que explica detalhadamente o que o script faz.

------
# Definições Importantes

## Linux

O Linux é um sistema operacional de código aberto, baseado no kernel Linux, que é amplamente utilizado em servidores, supercomputadores, dispositivos móveis e outros sistemas. 

O Linux é conhecido pela sua estabilidade, segurança, flexibilidade e capacidade de customização, e é disponibilizado em diversas distribuições, como o Ubuntu, Debian, Fedora, CentOS, entre outras. 

O sistema é composto por diversas ferramentas e aplicativos de linha de comando e gráficos, permitindo a realização de diversas tarefas, como edição de textos, programação, gerenciamento de arquivos, execução de servidores e muito mais. 

Além disso, o Linux é um sistema operacional altamente escalável e personalizável, permitindo que os usuários adaptem o sistema às suas necessidades específicas.

É amplamente utilizado no segmento de servidores e por desenvolvedores de software, mas ainda existe um grande espaço para crescimento no segmento de computadores pessoais. 


## Infraestruturas como Código

A infraestrutura como código (IaC, do inglês Infrastructure as Code) é uma abordagem para provisionar, gerenciar e configurar recursos de infraestrutura de TI de maneira programática, utilizando código. 

Com a IaC, são criados arquivos de configuração que incluem as especificações da sua infraestrutura, permitindo a criação, atualização e exclusão de recursos de forma automatizada, padronizada e escalável. 

Além disso, a IaC assegura o provisionamento do mesmo ambiente todas as vezes e possibilita a definição de toda a infraestrutura de um ambiente, desde a rede até as instâncias de servidores e suas configurações, em um único conjunto de arquivos de código-fonte.

Ao adotar a IaC, os desenvolvedores não precisam provisionar e gerenciar manualmente servidores, sistemas operacionais, armazenamento e outros componentes de infraestrutura sempre que criam ou implantam uma aplicação. 

Dessa forma, a IaC traz uma série de benefícios, como maior eficiência, consistência, agilidade e segurança na gestão da infraestrutura de TI. 

Com a automatização do provisionamento da infraestrutura, os desenvolvedores conseguem dedicar mais tempo para atividades de desenvolvimento e inovação, aumentando a produtividade e permitindo que a equipe foque em tarefas mais estratégicas.

------
# Montando na sua máquina

Leia as observações (próxima seção) antes de seguir com a montagem.

Para utilizar os scripts na sua própria máquina, você pode fazer o seguinte:

0 - Logue como super usuário, isso facilitará o processo da criação da infraestrutura. Ao encerrar, deslogue do root por questões de segurança.

    > su
    > Password:
    #> 

1 - Vá para a raiz e, caso ainda não tenha uma pasta para receber o conteúdo, crie uma (ex: downloads)

    > cd /
    > mkdir downloads
    > cd downloads

2 - Caso sua máquina não tenha o apt unzip, o instale por meio de:

    > apt-get install unzip

3 - Faça o download dos arquivos necessários no GitHub:

    > wget https://github.com/jhonesaly/project_iac1/archive/refs/heads/master.zip

4 - Descompacte o arquivo baixado.

    > unzip master.zip

5 - Atribua a possibilidade de ler, editar e executar os arquivos na pasta extraída:

    > chmod -R 771 project_iac1-master

6 - Pronto, os scripts estão aptos a serem excutados. Escolha se quer executar o básico ou avançado, entre na pasta e execute o respectivo script. Por exemplo:

    > cd project_iac1-master
    > cd iac_basic
    > ./new_iac_basic.sh

7 - Para verificar os diretórios criados:

    > cd /
    > ls -l

8 - Para verificar os usuários criados:

    > cut -d: -f1 /etc/passwd

9 - Para verificar os grupos criados:

    > cat /etc/group | column -t

------
# Observações

- O tutorial de montagem leva em consideração que também está sendo utilizada uma máquina linux
- Os scripts não foram testados em todas as distribuições Linux existentes. Recomenda-se teste em um ambiente controlado antes de utilizá-lo em produção.
- Certifique-se de que os nomes de usuários e grupos não estejam duplicados em seu sistema antes de executar o script.
- A ideia é que o script permita que uma pessoa leiga em programação consiga criar a infraestrutura sem abrir o código, mas mesmo o script básico pode ser utilizado por um programador para criar diretamente aquilo que deseja alterando os parâmetros no código.


[Voltar ao topo](#sumário)