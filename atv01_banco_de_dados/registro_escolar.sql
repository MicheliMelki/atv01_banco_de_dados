CREATE DATABASE db_registro_escolar;

USE db_registro_escolar;

CREATE TABLE tb_lista_nota(
id BIGINT AUTO_INCREMENT,
nome VARCHAR(255) NOT NULL,
serie VARCHAR(255) NOT NULL,
nota_um DECIMAL(4,2) NOT NULL,
nota_dois DECIMAL(4,2) NOT NULL,
nota_final DECIMAL(4,2) NOT NULL,
PRIMARY KEY(id)
);

SELECT * FROM tb_lista_nota;

INSERT INTO tb_lista_nota(nome, serie, nota_um, nota_dois, nota_final) VALUES (
"Camila", "Terceiro Ano", 8.5, 10, 9.25);
INSERT INTO tb_lista_nota(nome, serie, nota_um, nota_dois, nota_final) VALUES (
"Lana", "Terceiro Ano", 9, 10, 9.5);
INSERT INTO tb_lista_nota(nome, serie, nota_um, nota_dois, nota_final) VALUES (
"Zayn", "Segundo Ano", 7, 6, 6.5);
INSERT INTO tb_lista_nota(nome, serie, nota_um, nota_dois, nota_final) VALUES (
"Lauren", "Terceiro Ano", 5, 10, 7.5);
INSERT INTO tb_lista_nota(nome, serie, nota_um, nota_dois, nota_final) VALUES (
"Dinah", "Terceiro Ano", 8, 5, 6.5);
INSERT INTO tb_lista_nota(nome, serie, nota_um, nota_dois, nota_final) VALUES (
"Ally", "Terceiro Ano", 7, 8, 7.5);
INSERT INTO tb_lista_nota(nome, serie, nota_um, nota_dois, nota_final) VALUES (
"Normani", "Oitavo Ano", 9, 7, 8);
INSERT INTO tb_lista_nota(nome, serie, nota_um, nota_dois, nota_final) VALUES (
"Harry", "Sexto Ano", 4, 5, 4.5);
INSERT INTO tb_lista_nota(nome, serie, nota_um, nota_dois, nota_final) VALUES (
"Louis", "Terceiro Ano", 7.5, 4.5, 6);

SELECT * FROM tb_lista_nota;

SELECT * FROM tb_lista_nota WHERE nota_final > 7;

SELECT * FROM tb_lista_nota WHERE nota_final < 7;

UPDATE tb_lista_nota SET nota_um = 9 WHERE id = "5";

UPDATE tb_lista_nota SET nota_final = 7 WHERE id = "5";

SELECT * FROM tb_lista_nota;





