CREATE DATABASE db_farmacia_bem_estar;

USE db_farmacia_bem_estar;

CREATE TABLE tb_categorias(
id BIGINT AUTO_INCREMENT,
nome_categoria VARCHAR(20) NOT NULL,
descricao VARCHAR(50),
PRIMARY KEY (id)
);

CREATE TABLE tb_produtos(
id BIGINT AUTO_INCREMENT,
nome_produto VARCHAR(255) NOT NULL,
preco DECIMAL(6,2) NOT NULL,
estoque INT NOT NULL,
id_categoria BIGINT,
PRIMARY KEY (id),
FOREIGN KEY (id_categoria) REFERENCES tb_categorias(id)
);

INSERT INTO tb_categorias (nome_categoria, descricao) VALUES ("Medicamentos", "Remédios");
INSERT INTO tb_categorias (nome_categoria, descricao) VALUES ("Higiene", "Produtos de Higiene");
INSERT INTO tb_categorias (nome_categoria, descricao) VALUES ("Cosméticos", "Produto de beleza");
INSERT INTO tb_categorias (nome_categoria, descricao) VALUES ("Vitaminas", "Suplementos");
INSERT INTO tb_categorias (nome_categoria, descricao) VALUES ("Infantil", "Crianças e bebês");

SELECT * FROM tb_categorias;

INSERT INTO tb_produtos (nome_produto, preco, estoque, id_categoria) VALUES ("Paracetamol", 12.90, 100, 1);
INSERT INTO tb_produtos (nome_produto, preco, estoque, id_categoria) VALUES ("Sabonete Líquido", 9.90, 70, 2);
INSERT INTO tb_produtos (nome_produto, preco, estoque, id_categoria) VALUES ("Shampoo Anticaspa", 18.90, 62, 2);
INSERT INTO tb_produtos (nome_produto, preco, estoque, id_categoria) VALUES ("Batom Hidratante", 25.50, 42, 3);
INSERT INTO tb_produtos (nome_produto, preco, estoque, id_categoria) VALUES ("Pomada para Assadura", 13.90, 30, 5);
INSERT INTO tb_produtos (nome_produto, preco, estoque, id_categoria) VALUES ("Vitamina C", 25.90, 41, 4);
INSERT INTO tb_produtos (nome_produto, preco, estoque, id_categoria) VALUES ("Hidratante Facial", 32.10, 19, 3);
INSERT INTO tb_produtos (nome_produto, preco, estoque, id_categoria) VALUES ("Manteiga de Cacau", 7.90, 100, 3);
INSERT INTO tb_produtos (nome_produto, preco, estoque, id_categoria) VALUES ("Dipirona", 8.30, 60, 1);
INSERT INTO tb_produtos (nome_produto, preco, estoque, id_categoria) VALUES ("DorFlex", 11.30, 56, 1);
INSERT INTO tb_produtos (nome_produto, preco, estoque, id_categoria) VALUES ("Kit Anti-Acne", 149.00, 21, 3);

SELECT * FROM tb_produtos WHERE preco > 50.00;

SELECT * FROM tb_produtos WHERE preco BETWEEN 5.00 AND 60.00;

SELECT * FROM tb_produtos WHERE nome_produto LIKE "%C%";

SELECT nome_produto, preco, estoque, id_categoria, tb_categorias.descricao
FROM tb_produtos INNER JOIN tb_categorias ON tb_produtos.id_categoria = tb_categorias.id;

SELECT nome_produto, id_categoria, tb_categorias.descricao FROM tb_produtos
INNER JOIN tb_categorias ON tb_produtos.id_categoria = tb_categorias.id AND tb_categorias.nome_categoria = "Cosméticos";