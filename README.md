## Laravel Integrado através do DockerCompose com
##  PHP 7.2 + Composer + MySQL + phpMyAdmin + Nginx
##### Autor: Fábio Pereira, Analista - Área de Tecnologia da Informação - Coren-RS

#### Instruções

Clone este repositório em seu ambiente local:
```bash
$ git clone https://github.com/Coren-RS/lara.git
# se você tiver permissão você pode usar o git clone git@github.com:coren-rs/lara.git
```
Rode o docker-compose:
```bash
$ cd lara/ # necessário pois o comando seguinte deve ser rodado na raiz do projeto
$ docker-compose down; docker-compose up -d --build
```

Rode de dentro do container que executa o PHP o script "roda_composer_e_permissao.sh", para isso:

Entre no container:

```bash
$ docker exec -it php_lara bash 
```

De dentro do container, execute:

```bash
$ ./roda_composer_e_permissao.sh
```

PRONTO!

Agora você já pode acessar:

A página de boas vindas do Laravel através do endereço http://localhost:8080

E o phpMyAdmin através do endereço http://localhost:8081


