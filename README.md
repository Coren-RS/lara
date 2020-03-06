```bash
$ git clone https://github.com/Coren-RS/lara.git # ou git clone git@github.com:coren-rs/lara.git se você tiver permissão

$ cd lara/
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




