# Projeto básico

Nessa pasta está contida o script que seguirá estritamente aquilo que foi proposto pelo desafio, criando somente as pastas, usuários e grupos descritos nos requerimentos.

Para tal, basta executar o script "new_iac_basic.sh".

O script "new_iac2_basic.sh" é um script de automação de infraestrutura que atualiza o servidor, instala softwares necessários, baixa e copia os arquivos da aplicação para o servidor. O script pode ser utilizado em um ambiente de desenvolvimento ou produção para automatizar o processo de configuração do servidor.

------

## Explicando Script "new_iac2_basic.sh"

Em 0, o script começa com saudações e instruções para o usuário.

Em 1, o script atualiza o servidor executando os comandos "apt-get update", "apt-get upgrade" e "systemctl daemon-reexec". O comando "export DEBIAN_FRONTEND=noninteractive" é utilizado para definir o modo "noninteractive", evitando que o sistema solicite confirmações durante a atualização.

Em 2, o script instala o Apache2 e o unzip.

Em 3, o script baixa um arquivo zip contendo os arquivos da aplicação a partir do repositório do GitHub e descompacta esses arquivos.

Em 4, o script copia os arquivos da aplicação descompactados para a pasta "/var/www/html/" do servidor.

Em 5, o script finaliza com uma mensagem indicando que o processo foi concluído.
