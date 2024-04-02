# Sistema de Recrutamento - README

Este é um esquema de banco de dados para um sistema de recrutamento, que inclui tabelas para armazenar informações sobre candidatos, empresas, competências e vagas de emprego.

## Tabelas e Relações

### Tabela `candidatos`

Esta tabela armazena informações sobre os candidatos, incluindo seu nome, sobrenome, data de nascimento, email, CPF, país, código postal (CEP), descrição e senha.

- `id`: Identificador único do candidato (chave primária).
- `nome`: Nome do candidato.
- `sobrenome`: Sobrenome do candidato.
- `data_nascimento`: Data de nascimento do candidato.
- `email`: Endereço de e-mail do candidato.
- `cpf`: Número do CPF do candidato.
- `pais`: País de residência do candidato.
- `cep`: Código postal do candidato.
- `descricao`: Descrição do perfil do candidato.
- `senha`: Senha do candidato.

### Tabela `competencias`

Esta tabela armazena as competências dos candidatos em relação às empresas.

- `id`: Identificador único da competência (chave primária).
- `competencias`: Descrição das competências.
- `id_candidato`: Identificador do candidato associado (chave estrangeira referenciando a tabela `candidatos`).
- `id_empresa`: Identificador da empresa associada (chave estrangeira referenciando a tabela `empresas`).

### Tabela `empresas`

Esta tabela armazena informações sobre as empresas que oferecem vagas de emprego.

- `id`: Identificador único da empresa (chave primária).
- `nome`: Nome da empresa.
- `email`: Endereço de e-mail da empresa.
- `cnpj`: Número do CNPJ da empresa.
- `pais`: País da empresa.
- `cep`: Código postal da empresa.
- `descricao`: Descrição da empresa.
- `senha`: Senha da empresa.

### Tabela `vagas`

Esta tabela armazena informações sobre as vagas de emprego oferecidas pelas empresas.

- `id`: Identificador único da vaga (chave primária).
- `id_empresa`: Identificador da empresa que oferece a vaga (chave estrangeira referenciando a tabela `empresas`).
- `nome`: Nome da vaga.
- `descricao`: Descrição da vaga.
- `local`: Localização da vaga.

## Relações entre Tabelas

- A tabela `competencias` tem uma relação de muitos-para-um com as tabelas `candidatos` e `empresas`, onde cada registro pode estar associado a apenas um candidato ou empresa, mas um candidato ou empresa pode ter várias competências.
- A tabela `vagas` tem uma relação de muitos-para-um com a tabela `empresas`, onde cada vaga está associada a apenas uma empresa, mas uma empresa pode ter várias vagas.

## Abaixo temos a modelagem do banco de dados para a aplicação Linketinder (foi utlizado o dbdiagram para isso0

![modelagem](https://github.com/pedrinho1247/PostgreSQL/assets/106709624/32c574d6-536f-43a2-a2fc-1c6bebe8980a)
