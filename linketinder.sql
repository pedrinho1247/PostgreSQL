CREATE TABLE "candidatos" (
  "id" serial PRIMARY KEY,
  "nome" varchar(50),
  "sobrenome" varchar(50),
  "data_nascimento" date,
  "email" varchar(100),
  "cpf" varchar(14),
  "pais" varchar(50),
  "cep" integer,
  "descricao" varchar(255),
  "senha" varchar(255)
);

CREATE TABLE "competencias" (
  "id" serial PRIMARY KEY,
  "competencias" varchar(255),
  "id_candidato" integer,
  "id_empresa" integer
);

CREATE TABLE "empresas" (
  "id" serial PRIMARY KEY,
  "nome" varchar(100),
  "email" varchar(100),
  "cnpj" varchar(18),
  "pais" varchar(50),
  "cep" integer,
  "descricao" varchar(255),
  "senha" varchar(255)
);

CREATE TABLE "vagas" (
  "id" serial PRIMARY KEY,
  "id_empresa" integer,
  "nome" varchar(100),
  "descricao" varchar(255),
  "local" varchar(100)
);

ALTER TABLE "competencias" ADD FOREIGN KEY ("id_candidato") REFERENCES "candidatos" ("id");

ALTER TABLE "competencias" ADD FOREIGN KEY ("id_empresa") REFERENCES "empresas" ("id");

ALTER TABLE "vagas" ADD FOREIGN KEY ("id_empresa") REFERENCES "empresas" ("id");


-- Inserir empresas
INSERT INTO empresas ("nome", "email", "cnpj", "pais", "cep", "descricao", "senha")
VALUES
  ('Empresa A', 'empresaA@example.com', '12345678901234', 'Brasil', 12345678, 'Descrição da Empresa A', 'senha123'),
  ('Empresa B', 'empresaB@example.com', '23456789012345', 'Brasil', 23456789, 'Descrição da Empresa B', 'senha456'),
  ('Empresa C', 'empresaC@example.com', '34567890123456', 'Brasil', 34567890, 'Descrição da Empresa C', 'senha789'),
  ('Empresa D', 'empresaD@example.com', '45678901234567', 'Brasil', 45678901, 'Descrição da Empresa D', 'senhaabc'),
  ('Empresa E', 'empresaE@example.com', '56789012345678', 'Brasil', 56789012, 'Descrição da Empresa E', 'senhadef');

-- Inserir candidatos
INSERT INTO candidatos ("nome", "sobrenome", "data_nascimento", "email", "cpf", "pais", "cep", "descricao", "senha")
VALUES
  ('Candidato 1', 'Sobrenome 1', '1990-01-01', 'candidato1@example.com', '12345678901', 'Brasil', 12345000, 'Descrição do Candidato 1', 'senha123'),
  ('Candidato 2', 'Sobrenome 2', '1995-02-02', 'candidato2@example.com', '23456789012', 'Brasil', 23456000, 'Descrição do Candidato 2', 'senha456'),
  ('Candidato 3', 'Sobrenome 3', '1988-03-03', 'candidato3@example.com', '34567890123', 'Brasil', 34567000, 'Descrição do Candidato 3', 'senha789'),
  ('Candidato 4', 'Sobrenome 4', '1987-04-04', 'candidato4@example.com', '45678901234', 'Brasil', 45678000, 'Descrição do Candidato 4', 'senhaabc'),
  ('Candidato 5', 'Sobrenome 5', '1992-05-05', 'candidato5@example.com', '56789012345', 'Brasil', 56789000, 'Descrição do Candidato 5', 'senhadef');
