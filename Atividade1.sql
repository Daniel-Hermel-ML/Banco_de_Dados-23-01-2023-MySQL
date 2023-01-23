/* ### ATIVIDADE 1 ###

Crie um banco de dados para um serviço de RH de uma empresa, onde o sistema trabalhará 
com as informações dos colaboradores desta empresa.
*/

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
SELECT* FROM tb_colaboradores;













