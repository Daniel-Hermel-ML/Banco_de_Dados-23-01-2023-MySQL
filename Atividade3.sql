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



























