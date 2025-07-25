CREATE DATABASE db_pizzaria_legal;

USE db_pizzaria_legal;

CREATE TABLE tb_categorias(
id BIGINT AUTO_INCREMENT,
nome_categoria VARCHAR(20) NOT NULL,
descricao VARCHAR(50),
PRIMARY KEY (id)
);

CREATE TABLE tb_pizzas(
id BIGINT AUTO_INCREMENT,
nome_pizza VARCHAR(255) NOT NULL,
preco DECIMAL(6,2) NOT NULL,
tamanho_pizza VARCHAR(20) NOT NULL,
id_categoria BIGINT,
descricao VARCHAR(50),
PRIMARY KEY (id),
FOREIGN KEY (id_categoria) REFERENCES tb_categorias(id)
);

INSERT INTO tb_categorias (nome_categoria, descricao) VALUES ("Salgada");
INSERT INTO tb_categorias (nome_categoria, descricao) VALUES ("Doce");
INSERT INTO tb_categorias (nome_categoria, descricao) VALUES ("Vegetariana");
INSERT INTO tb_categorias (nome_categoria, descricao) VALUES ("Especial");
INSERT INTO tb_categorias (nome_categoria, descricao) VALUES ("Vegana");

SELECT * FROM tb_categorias;

INSERT INTO tb_pizzas (nome_pizza, preco, tamanho_pizza, id_categoria, descricao) VALUES ("Calabresa", 47, "Grande", 1,"");
INSERT INTO tb_pizzas (nome_pizza, preco, tamanho_pizza, id_categoria, descricao) VALUES ("Frango com Catupiry", 54.90, "Grande", 1, "");
INSERT INTO tb_pizzas (nome_pizza, preco, tamanho_pizza, id_categoria, descricao) VALUES ("Mussarela", 45.90, "Média", 1, "");
INSERT INTO tb_pizzas (nome_pizza, preco, tamanho_pizza, id_categoria, descricao) VALUES ("Portuguesa", 50.50, "Média", 1, "");
INSERT INTO tb_pizzas (nome_pizza, preco, tamanho_pizza, id_categoria, descricao) VALUES ("Chocolate com Morango", 57.90, "Média", 2, "");
INSERT INTO tb_pizzas (nome_pizza, preco, tamanho_pizza, id_categoria, descricao) VALUES ("Banana com Doce de Leite", 52, "Grande", 2, "");
INSERT INTO tb_pizzas (nome_pizza, preco, tamanho_pizza, id_categoria, descricao) VALUES ("Romeu e Julieta", 42, "Pequena", 2, "");
INSERT INTO tb_pizzas (nome_pizza, preco, tamanho_pizza, id_categoria, descricao) VALUES ("Brócolis com Alho", 45.90, "Grande", 3, "");
INSERT INTO tb_pizzas (nome_pizza, preco, tamanho_pizza, id_categoria, descricao) VALUES ("Palmito Especial", 46.90, "Grande", 3, "");
INSERT INTO tb_pizzas (nome_pizza, preco, tamanho_pizza, id_categoria, descricao) VALUES ("Camarão com Catupiry", 72.90, "Média", 4, "");
INSERT INTO tb_pizzas (nome_pizza, preco, tamanho_pizza, id_categoria, descricao) VALUES ("Carne Seca com Catupiry", 62, "Grande", 4, "");
INSERT INTO tb_pizzas (nome_pizza, preco, tamanho_pizza, id_categoria, descricao) VALUES ("Quatro Queijos", 54, "Grande", 4, "");
INSERT INTO tb_pizzas (nome_pizza, preco, tamanho_pizza, id_categoria, descricao) VALUES ("Picanha", 82, "Grande", 4, "");
INSERT INTO tb_pizzas (nome_pizza, preco, tamanho_pizza, id_categoria, descricao) VALUES ("Napolitana", 84.74, "Grande", 4, "");
INSERT INTO tb_pizzas (nome_pizza, preco, tamanho_pizza, id_categoria, descricao) VALUES ("Berinjela Assada", 51.47, "Média", 5, "");

SELECT * FROM tb_pizzas WHERE preco > 45.00;

SELECT * FROM tb_pizzas WHERE preco BETWEEN 50.00 AND 100.00;

SELECT * FROM tb_pizzas WHERE nome_pizza LIKE "%M%";

SELECT nome_pizza, preco, tamanho_pizza, id_categoria, tb_categorias.descricao
FROM tb_pizzas INNER JOIN tb_categorias ON tb_pizzas.id_categoria = tb_categorias.id;

SELECT nome_pizza, id_categoria, tb_categorias.descricao FROM tb_pizzas
INNER JOIN tb_categorias ON tb_pizzas.id_categoria = tb_categorias.id AND tb_categorias.nome_categoria = "Doce";