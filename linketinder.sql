CREATE TABLE "Candidatos" (
  "id" integer PRIMARY KEY,
  "nome" string,
  "sobrenome" string,
  "data_nascimento" date,
  "email" string,
  "cpf" string,
  "pais" string,
  "cep" integer,
  "descricao" string,
  "senha" password
);

CREATE TABLE "Competencias" (
  "id" integer PRIMARY KEY,
  "competencias" string,
  "id_candidato" integer,
  "id_empresa" integer
);

CREATE TABLE "Empresas" (
  "id" integer PRIMARY KEY,
  "nome" string,
  "email" string,
  "cnpj" string,
  "pais" string,
  "cep" integer,
  "descricao" string,
  "senha" password
);

CREATE TABLE "Vagas" (
  "id" integer PRIMARY KEY,
  "id_empresa" integer,
  "nome" string,
  "descricao" string,
  "local" string
);

ALTER TABLE "Competencias" ADD FOREIGN KEY ("id_candidato") REFERENCES "Candidatos" ("id");

ALTER TABLE "Competencias" ADD FOREIGN KEY ("id_empresa") REFERENCES "Empresas" ("id");

ALTER TABLE "Vagas" ADD FOREIGN KEY ("id_empresa") REFERENCES "Empresas" ("id");