# Boas vindas ao repositório do projeto One For All!

Aqui você vai encontrar os detalhes de como estruturar o desenvolvimento do projeto a partir desse repositório.

---

# Habilidades

Neste projeto, é capaz de:

- Modelar um banco de dados

- Identificar entidades, atributos e relacionamentos

- Aplicar a 1ª, 2ª e 3ª Forma Normal

- Criar tabelas

---

## Desenvolvimento

Normalizando uma tabela na terceira forma normal e acessar as informações desta tabela através de `queries` utilizando `SQL`.

---

## Implementações técnicas

- Para executar localmente os testes, é preciso escrever o seguinte no seu terminal:

  ```sh
  MYSQL_USER=<SEU_NOME_DE_PESSOA_USUARIA> MYSQL_PASSWORD=<SUA SENHA> HOSTNAME=<NOME_DO_HOST> PORT=<PORTA> npm test
  ```

  - Ou seja, suponha que para poder acessar a base de dados feita neste projeto você tenha `root` como seu nome de pessoa usuária, `password` como senha, `localhost` como host e `1337` como porta. Logo, você executaria:

    ```sh
    MYSQL_USER=root MYSQL_PASSWORD=password HOSTNAME=localhost PORT=3306 npm test
    ```

  - Usando o exemplo anterior de base, suponha que você não tenha setado uma senha para `root` e esteja usando a porta padrão (3306). Neste caso, você executaria:
    ```sh
    MYSQL_USER=root MYSQL_PASSWORD= HOSTNAME=localhost PORT= npm test
    ```

**Dica**: variáveis de ambiente definidas na mesma linha do comando valem apenas para aquele comando. Se preferir, você pode exportar as variáveis de ambiente para toda a _sessão_ (todos os comandos até você fechar aquele terminal). Por exemplo:

```sh
export MYSQL_USER=root MYSQL_PASSWORD=password HOSTNAME=localhost PORT=3306
```

E depois disso você só precisa rodar `npm test` quando for testar os projetos.

<details close>
  <summary>O que está sendo feito</summary>
  <br>
   > :point_right: ideia geral:
  - Baixa e executa uma imagem _docker_ do MySQL na versão 5.7.
  
  > :point_right: flag --name:
  - Define um nome para o nosso _container_: "meu-mysql-5_7".

> :point_right: flag -e:

- Define definimos a nossa variável de ambiente "MYSQL_ROOT_PASSWORD" com o valor "1234".

> :point_right: flag -d:

- Define que o container rode em segundo plano.

> :point_right: flag -p:

- Mapeia uma porta local a uma porta do _container_.

> :point_right: mysql:5.7:

- Define qual versão da imagem mySQL queremos, no caso, a 5.7, que é a esperada pelo avaliador.
</details>

Utilizando o comando acima, para executar os testes localmente basta digitar no terminal:

```sh
MYSQL_USER=root MYSQL_PASSWORD=1234 HOSTNAME=localhost npm test
```

---
