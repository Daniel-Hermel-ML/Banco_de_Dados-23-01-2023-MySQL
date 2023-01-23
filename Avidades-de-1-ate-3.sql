-- Todos es Exercícios

/* ### ATIVIDADE 1 ###

Crie um banco de dados para um serviço de RH de uma empresa, onde o sistema trabalhará 
com as informações dos colaboradores desta empresa.
*

CREATE DATABASE db_rhgeneration;

USE db_rhgeneration;
/*
Crie uma tabela de colaboradores e determine 5 atributos relevantes dos colaboradores para 
se trabalhar com o serviço deste RH.
*/

CREATE TABLE tb_colaboradores(
	id BIGINT AUTO_INCREMENT,
    nome VARCHAR(255) NOT NULL,
    idade INT,
    telefone INT,
    endereco VARCHAR(255),
    salario DECIMAL NOT NULL,
    PRIMARY KEY(id)
    );
    
-- Insira nesta tabela no mínimo 5 dados (registros).
    
INSERT INTO tb_colaboradores(nome,idade,telefone,endereco,salario) 
VALUES("Daniel",45,123456789,"Rua A casa 2",1500);
INSERT INTO tb_colaboradores(nome,idade,telefone,endereco,salario) 
VALUES("Maria",30,123123123,"Rua A casa 3",1800);
INSERT INTO tb_colaboradores(nome,idade,telefone,endereco,salario) 
VALUES("João",32,234234234,"Rua A casa 4",2500);
INSERT INTO tb_colaboradores(nome,idade,telefone,endereco,salario) 
VALUES("José",28,456456456,"Rua A casa 5",2100);
INSERT INTO tb_colaboradores(nome,idade,telefone,endereco,salario) 
VALUES("Antonio",25,789789789,"Rua A casa 6",2000);

/*
Faça um SELECT que retorne todes os colaboradores com o salário maior do que 2000.
*/

SELECT * FROM tb_colaboradores WHERE salario > 2000;

/*
Faça um SELECT que retorne todes os colaboradores com o salário menor do que 2000.
*/

SELECT * FROM tb_colaboradores WHERE salario < 2000;

/*
Ao término atualize um registro desta tabela através de uma query de atualização.
*/

-- Leitura teste
SELECT* FROM tb_colaboradores;

UPDATE tb_colaboradores SET endereco = "Rua B casa 1" WHERE id = 1;

-- Leitura final
SELECT* FROM tb_colaboradore

-- --------------------------------------------------------------------------------- 
/* ### ATIVIDADE 2 ###
Crie um banco de dados para um e-commerce, onde o sistema trabalhará com as informações dos produtos deste e-commerce.
*/
CREATE DATABASE db_loja_generation;

USE db_loja_generation;

/*
Crie uma tabela de produtos e determine 5 atributos relevantes dos produtos para se trabalhar com o 
serviço deste e-commerce.
*/

CREATE TABLE tb_produtos(
	id BIGINT AUTO_INCREMENT,
    nome VARCHAR(255) NOT NULL,
    descricao VARCHAR(255),
    tamanho VARCHAR(100),
    peso INT,
    preco DECIMAL NOT NULL,
    PRIMARY KEY(id)
);

-- Insira nesta tabela no mínimo 8 dados (registros).
-- 1
INSERT INTO tb_produtos(nome,descricao,tamanho,peso,preco) 
VALUES("Luvas","Luva de lã","unico",180,90);
-- 2
INSERT INTO tb_produtos(nome,descricao,tamanho,peso,preco) 
VALUES("Casaco","Linho","G",1200,620);
-- 3
INSERT INTO tb_produtos(nome,descricao,tamanho,peso,preco) 
VALUES("Blusa","Infantil personagens","P",300,110);
-- 4
INSERT INTO tb_produtos(nome,descricao,tamanho,peso,preco) 
VALUES("Blusa Listrada","Listras horizontais","M",230,502);
-- 5
INSERT INTO tb_produtos(nome,descricao,tamanho,peso,preco) 
VALUES("Calça Jeans","Preta","50",420,685);
-- 6
INSERT INTO tb_produtos(nome,descricao,tamanho,peso,preco) 
VALUES("Chapéu","Times","unico",175,320);
-- 7
INSERT INTO tb_produtos(nome,descricao,tamanho,peso,preco) 
VALUES("Tênis","AllStar","37",435,456);
-- 8
INSERT INTO tb_produtos(nome,descricao,tamanho,peso,preco) 
VALUES("Sapato","Masc. de couro","41",233,789);

/*
Faça um SELECT que retorne todes os produtos com o valor maior do que 500.
*/

SELECT * FROM tb_produtos WHERE preco > 500;

/*
Faça um SELECT que retorne todes os produtos com o valor menor do que 500.
*/

SELECT * FROM tb_produtos WHERE preco < 500;

/*
Ao término atualize um registro desta tabela através de uma query de atualização.
*/

-- Leitura teste
SELECT* FROM tb_produtos;

UPDATE tb_produtos SET descricao = "De lã selecionada" WHERE id = 2;

-- Leitura final
SELECT* FROM tb_produtos;v
-- ---------------------------------------------------------------------------------
/* ### ATIVIDADE 3 ###
Crie um banco de dados para um registro de uma escola, onde o sistema trabalhará 
com as informações dos estudantes deste registro dessa escola.
*/

CREATE DATABASE db_generation_educacao;

USE db_generation_educacao;

/*
Crie uma tabela estudantes e utilizando a habilidade de abstração e determine 5 atributos 
relevantes dos estudantes para se trabalhar com o serviço dessa escola.
*/
CREATE TABLE tb_estudantes(
	id BIGINT AUTO_INCREMENT,
    nome VARCHAR(255) NOT NULL,
    idade INT,
    disciplina VARCHAR(100),
    turma VARCHAR(100),
    nota FLOAT NOT NULL,
    PRIMARY KEY(id)
);

/*
Insira nesta tabela no mínimo 8 dados (registros).
*/
-- 1
INSERT INTO tb_estudantes(nome,idade,disciplina,turma,nota) 
VALUES("João",12,"Português","turma 12",7.0);
-- 2
INSERT INTO tb_estudantes(nome,idade,disciplina,turma,nota) 
VALUES("Maria ",13,"Português","turma 12",7.2);
-- 3
INSERT INTO tb_estudantes(nome,idade,disciplina,turma,nota)  
VALUES("José ",12,"Português","turma 12",6.5);
-- 4
INSERT INTO tb_estudantes(nome,idade,disciplina,turma,nota) 
VALUES("Pedro",12,"Português","turma 12",5.3);
-- 5
INSERT INTO tb_estudantes(nome,idade,disciplina,turma,nota)  
VALUES("Lucas",12,"Português","turma 12",5.9);
-- 6
INSERT INTO tb_estudantes(nome,idade,disciplina,turma,nota)  
VALUES("Raquel",13,"Português","turma 12",6.9);
-- 7
INSERT INTO tb_estudantes(nome,idade,disciplina,turma,nota)  
VALUES("Zila",11,"Português","turma 12",5.3);
-- 8
INSERT INTO tb_estudantes(nome,idade,disciplina,turma,nota)  
VALUES("Fabiana",12,"Português","turma 12",6.2);

/*
Faça um SELECT que retorne todes o/a(s) estudantes com a nota maior do que 7.0.
*/

SELECT * FROM tb_estudantes WHERE nota > 7.0; 

/*
Faça um SELECT que retorne todes o/a(s) estudantes com a nota menor do que 7.0.
*/

SELECT * FROM tb_estudantes WHERE nota < 7.0;

/*
Ao término atualize um registro desta tabela através de uma query de atualização.
*/

-- leitura teste
SELECT * FROM tb_estudantes;

UPDATE tb_estudantes set nota = 7.3 WHERE id = 4;

-- leitura final

SELECT * FROM tb_estudantes;


