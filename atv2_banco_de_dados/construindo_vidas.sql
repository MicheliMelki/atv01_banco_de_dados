CREATE DATABASE db_construindo_vidas;

USE db_construindo_vidas;

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

INSERT INTO tb_categorias (nome_categoria, descricao) VALUES ("Ferramentas", "Geral");
INSERT INTO tb_categorias (nome_categoria, descricao) VALUES ("Elétrica", "Materiais Elétricos");
INSERT INTO tb_categorias (nome_categoria, descricao) VALUES ("Tintas", "Geral");
INSERT INTO tb_categorias (nome_categoria, descricao) VALUES ("Construção", "Materiais de Construção");
INSERT INTO tb_categorias (nome_categoria, descricao) VALUES ("Hidráulica", "Materiais em Geral");

SELECT * FROM tb_categorias;

INSERT INTO tb_produtos (nome_produto, preco, estoque, id_categoria) VALUES ("Martelo", 45.90, 31, 1);
INSERT INTO tb_produtos (nome_produto, preco, estoque, id_categoria) VALUES ("Serra Elétrica", 350.90, 12, 1);
INSERT INTO tb_produtos (nome_produto, preco, estoque, id_categoria) VALUES ("Fios Elétricos", 120.90, 42, 2);
INSERT INTO tb_produtos (nome_produto, preco, estoque, id_categoria) VALUES ("Tinta Branca", 180.50, 22, 3);
INSERT INTO tb_produtos (nome_produto, preco, estoque, id_categoria) VALUES ("Rolo de Pintura", 19.90, 40, 3);
INSERT INTO tb_produtos (nome_produto, preco, estoque, id_categoria) VALUES ("Cimento", 30.65, 41, 4);
INSERT INTO tb_produtos (nome_produto, preco, estoque, id_categoria) VALUES ("Tijolo", 2.10, 600, 4);
INSERT INTO tb_produtos (nome_produto, preco, estoque, id_categoria) VALUES ("Tubo PVC", 15.30, 100, 5);

SELECT * FROM tb_produtos WHERE preco > 100.00;

SELECT * FROM tb_produtos WHERE preco BETWEEN 70.00 AND 150.00;

SELECT * FROM tb_produtos WHERE nome_produto LIKE "%C%";

SELECT nome_produto, preco, estoque, id_categoria, tb_categorias.descricao
FROM tb_produtos INNER JOIN tb_categorias ON tb_produtos.id_categoria = tb_categorias.id;

SELECT nome_produto, id_categoria, tb_categorias.descricao FROM tb_produtos
INNER JOIN tb_categorias ON tb_produtos.id_categoria = tb_categorias.id AND tb_categorias.nome_categoria = "Hidráulica";