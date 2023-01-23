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
SELECT* FROM tb_produtos;

























