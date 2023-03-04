# Desafio de Projeto 2 - Bootcamp de Linux

## Sumário

- [Resumo do Projeto](#resumo-do-projeto)
- [Organização do Repositório](#organização-do-repositório)
  - [basic](#basic)
  - [advanced](#advanced)
- [Definições Importantes](#definições-importantes)
- [Montando na sua máquina](#montando-na-sua-máquina)
- [Observações](#observações)

------

## Resumo do Projeto

Neste projeto foi criado um script (infra as code) de provisionamento automático de um servidor web que usa HTTP (Hypertext Transfer Protocol) e outros protocolos para responder a solicitações de clientes feitas pela World Wide Web. O principal trabalho de um servidor da web é exibir o conteúdo do site por meio do armazenamento, processamento e entrega de páginas da web aos usuários.

## Requerimentos do Projeto

- Restaurar o snapshot criado anteriormente no virtual box;
- Atualizar o servidor;
- Instalar o apache2;
- Instalar o unzip;
- Baixar a aplicação disponível no endereço https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip no diretório /tmp;
- Copiar os arquivos da aplicação no diretório padrão do apache;
- Subir arquivo de script para um repositório no GitHub.

------

## Organização do repositório

### basic

Script que seguirá estritamente aquilo que foi proposto pelo desafio, criando o servidor e usando o site do instrutor como referência.

Dentro da respectiva pasta há um outro README.md que explica detalhadamente o que o script faz.

### advanced

Nessa pasta está contido o script avançado, que utiliza lógica para permitir a generalização do script básico para qualquer caso semelhante, permitindo que qualquer ação seja opcional e que o site possa ser baixado de qualquer repositório no github.

Tudo isso utilizando uma estrutura modularizada que permite maior flexibilidade e mais implementações no futuro.

Dentro da respectiva pasta há um outro README.md que explica detalhadamente o que o script faz.

------

## Definições Importantes

### **Server**

Um servidor, em informática, é um computador ou um sistema de computação que fornece serviços para outros dispositivos e programas, conhecidos como clientes. Esses serviços podem ser diversos, incluindo armazenamento e gerenciamento de arquivos, acesso a recursos de rede, hospedagem de sites e aplicativos, processamento de dados, entre outros. Os servidores são projetados para serem confiáveis, seguros e escaláveis, para lidar com grandes volumes de solicitações de clientes simultâneas. Eles geralmente operam em sistemas operacionais de servidor específicos, como o Windows Server ou o Linux, e podem ser executados em hardware dedicado ou em nuvem.

### **Web Server**

Um web server é um software de servidor responsável por atender solicitações de clientes (navegadores da web) e entregar conteúdo web, como páginas HTML, imagens, arquivos de áudio e vídeo. Ele é responsável por receber as solicitações dos clientes por meio do protocolo HTTP, processar a solicitação e retornar a resposta apropriada.

O web server pode executar em diferentes sistemas operacionais, como Windows, Linux e Mac OS X. Ele é usado por empresas e organizações para hospedar seus sites na internet, bem como por desenvolvedores que desejam criar e testar aplicativos web em seus computadores locais. Alguns exemplos de servidores web populares são o Apache, o Nginx e o Microsoft IIS.

### **Apache**

O Apache HTTP Server, mais conhecido como Apache, é um servidor web de código aberto, gratuito e multiplataforma, mantido pela Apache Software Foundation. Ele foi lançado em 1995 e é um dos servidores web mais populares e amplamente usados no mundo, com mais de 50% de participação no mercado de servidores web.

O Apache é conhecido por sua estabilidade, segurança, flexibilidade e extensibilidade, suportando várias tecnologias e linguagens de programação, como PHP, Perl, Python e Ruby. Ele é executado em vários sistemas operacionais, incluindo Linux, Unix, Windows, macOS e outros. O servidor Apache é altamente configurável e pode ser personalizado para atender às necessidades específicas de diferentes aplicativos e sites da web. Ele é amplamente utilizado para hospedar sites, aplicativos da web, serviços web e outras soluções de software baseadas na web.

------

## Montando na sua máquina

Leia as observações (próxima seção) antes de seguir com a montagem.

Para utilizar os scripts na sua própria máquina, você pode fazer o seguinte (em 7 todos os comandos são concatenados para facilitar):

0 - Logue como super usuário, isso facilitará o processo da criação da infraestrutura. Ao encerrar, saia do usuário root por questões de segurança.

    sudo su
  
1 - Vá para a raiz e, caso ainda não tenha uma pasta para receber o conteúdo, crie uma (ex: downloads)

    cd /
    mkdir downloads
    cd downloads

2 - Caso sua máquina não tenha o apt unzip, o instale por meio de:

    apt-get install unzip

3 - Faça o download dos arquivos necessários no GitHub:

    wget https://github.com/jhonesaly/project_iac2/archive/refs/heads/main.zip

4 - Descompacte o arquivo baixado.

    unzip main.zip

5 - Atribua a possibilidade de ler, editar e executar os arquivos na pasta extraída:

    chmod -R 771 project_iac2-main

6 - Pronto, os scripts estão aptos a serem executados. Escolha se quer executar o básico ou avançado, entre na pasta e execute o respectivo script. Por exemplo:

    cd project_iac2-main
    cd basic
    ./new_iac_server_basic.sh

7 - Comandos compilados para facilitar (basta copiar tudo, colar e executar no terminal):

    cd /
    mkdir downloads
    cd downloads
    apt-get install unzip
    wget https://github.com/jhonesaly/project_iac2/archive/refs/heads/main.zip
    unzip main.zip
    chmod -R 771 project_iac2-main
    cd project_iac2-main
    cd advanced
    ./new_iac_server_advanced.sh

------

## Observações

- O tutorial de montagem leva em consideração que também está sendo utilizada uma máquina Linux
- Os scripts não foram testados em todas as distribuições Linux existentes. Recomenda-se teste em um ambiente controlado antes de utilizá-lo em produção.
- A ideia é que o script permita que uma pessoa leiga em programação consiga criar a infraestrutura sem abrir o código, mas mesmo o script básico pode ser utilizado por um programador para criar diretamente aquilo que deseja alterando os parâmetros no código.

[Voltar ao topo](#sumário)