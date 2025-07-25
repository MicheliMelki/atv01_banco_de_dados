CREATE DATABASE db_sistema_rh;

USE db_sistema_rh;

CREATE TABLE tb_funcionarios(
id BIGINT AUTO_INCREMENT,
nome VARCHAR(255) NOT NULL,
salario DECIMAL(6,2) NOT NULL,
setor VARCHAR(255) NOT NULL,
cargo VARCHAR(255) NOT NULL,
data_contratacao DATE,
PRIMARY KEY(id)
);

SELECT * FROM tb_funcionarios;

INSERT INTO tb_funcionarios(nome, salario, setor, cargo, data_contratacao) VALUES (
"Lana", 9000, "Tecnologia", "Gerente", '2013-03-18');
INSERT INTO tb_funcionarios(nome, salario, setor, cargo, data_contratacao) VALUES (
"Zayn", 7000, "Tecnologia", "Programador", '2015-03-25');
INSERT INTO tb_funcionarios(nome, salario, setor, cargo, data_contratacao) VALUES (
"Camila", 5000, "Marketing", "Representante", '2023-05-14');
INSERT INTO tb_funcionarios(nome, salario, setor, cargo, data_contratacao) VALUES (
"Isabela", 2800, "Administrativo", "Supervisora", '2024-08-10');
INSERT INTO tb_funcionarios(nome, salario, setor, cargo, data_contratacao) VALUES (
"Michael", 1600, "Administrativo", "Estagiário", '2025-01-05');
INSERT INTO tb_funcionarios(nome, salario, setor, cargo, data_contratacao) VALUES (
"Roberto", 1100, "Marketing", "Estagiário", '2025-03-20');
INSERT INTO tb_funcionarios(nome, salario, setor, cargo, data_contratacao) VALUES (
"Leticia", 2000, "Tecnologia", "Estagiária", '2025-06-09');

SELECT * FROM tb_funcionarios WHERE salario < 2000;

SELECT * FROM tb_funcionarios WHERE salario > 2000;

UPDATE tb_funcionarios SET salario = 2500 WHERE id = "6";

SELECT * FROM tb_funcionarios;