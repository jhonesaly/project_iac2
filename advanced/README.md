# iac_server_advanced

Nessa pasta está contida o script avançado, que utiliza lógica para permitir a generalização do script básico para qualquer caso semelhante.

Tudo isso utilizando uma estrutura modularizada que permite maior flexibilidade e mais implementações no futuro.

Para tal, basta executar o script "new_iac_server_advanced.sh".

O script "new_iac_server_advanced.sh" é responsável por conduzir o usuário por um conjunto de perguntas iniciais que ajudarão a configurar o servidor.

------

## Explicando Script new_iac_advanced

Em 1, ele entra em um loop while que faz uma série de perguntas ao usuário.

A primeira pergunta, número 1, pergunta se o usuário deseja atualizar o servidor. Em seguida, a resposta é verificada e, se for inválida, o loop continua, e o usuário é solicitado novamente a resposta para a pergunta 1.

A pergunta 2 pergunta se o usuário deseja criar um servidor web, com a opção de fazer o download de um repositório com o conteúdo do site. Se a resposta for inválida, o loop continua, e o usuário é solicitado novamente a resposta para a pergunta 2.

Se o usuário responde "y" à pergunta 2, a pergunta 3 solicita o endereço do repositório que deve ser baixado. Se a resposta for inválida, o loop continua, e o usuário é solicitado novamente a resposta para a pergunta 3.

Depois de responder a todas as perguntas, o script faz uma configuração e, em seguida, verifica se a resposta para a pergunta 1 foi "y". Se a resposta for "y", ele executará o script "./modules/update_server.sh", que atualizará o servidor.

Em seguida, o script verifica se a resposta para a pergunta 2 foi "y". Se a resposta for "y", ele executará o script "./modules/web_server.sh" e passará o endereço do repositório, se a resposta à pergunta 3 for "y".

Finalmente, o script informa ao usuário que a execução foi concluída.

### Módulo update_server

O código apresenta um módulo chamado "update_server.sh" que realiza a atualização do sistema operacional Ubuntu Server. 

O módulo contém os seguintes passos:

Em 0, o módulo começa com a saudação e a mensagem "Atualizando o servidor...".

Então, é definida a variável de ambiente "DEBIAN_FRONTEND" como "noninteractive", o que evita que o processo de atualização interrompa a execução devido a possíveis solicitações de entrada do usuário.

Em seguida, são executados os seguintes comandos:

"apt-get update -y": atualiza o cache de repositórios e pacotes do sistema operacional.
"apt-get upgrade -y -qq": realiza a atualização do sistema operacional e seus pacotes, mantendo as configurações atuais e não exibindo a saída do comando no terminal.
"systemctl daemon-reexec": reinicia o sistema para que as atualizações tenham efeito.
"apt-get autoremove -y": remove pacotes que não são mais necessários no sistema.

Dessa forma, o módulo "update_server" mantém o sistema operacional Ubuntu Server atualizado e limpo, garantindo maior segurança e estabilidade para o servidor.

### Módulo web_server

O código apresenta um módulo chamado "web_server.sh" que é responsável por configurar e baixar os arquivos de uma aplicação web em um servidor Apache.

Em 0, é instalado o Apache e demais softwares necessários para execução do módulo.

Em 1, verifica-se a variável "ans_w1", que representa se o usuário deseja baixar o repositório de uma aplicação. Se essa variável for "y", o módulo continua e baixa o repositório em "/tmp". Em seguida, o arquivo é descompactado e é obtido o nome da pasta do repositório. Por fim, copia-se todo o conteúdo da pasta do repositório baixado para "/var/www/html/", que é a pasta padrão do Apache para hospedar conteúdo web.
