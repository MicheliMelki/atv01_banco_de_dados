CREATE DATABASE db_ecommerce;

USE db_ecommerce;

CREATE TABLE tb_produtos(
id BIGINT AUTO_INCREMENT,
produto VARCHAR(255) NOT NULL,
valor DECIMAL(6,2) NOT NULL,
categoria VARCHAR(255) NOT NULL,
qtd_estoque INT,
marca VARCHAR(255) NOT NULL,
PRIMARY KEY(id)
);

SELECT * FROM tb_produtos;

INSERT INTO tb_produtos(produto, valor, categoria, qtd_estoque, marca) VALUES (
"X-BOX SERIES X", 5498, "Eletrônico", 250, "Microsoft");
INSERT INTO tb_produtos(produto, valor, categoria, qtd_estoque, marca) VALUES (
"PlayStation 5", 3681, "Eletrônico", 350, "SONY");
INSERT INTO tb_produtos(produto, valor, categoria, qtd_estoque, marca) VALUES (
"Red Dead Redemption 2", 173, "Jogo Eletrônico", 37, "Rockstar Games");
INSERT INTO tb_produtos(produto, valor, categoria, qtd_estoque, marca) VALUES (
"Detroit: Become Human", 189.99, "Jogo Eletrônico", 10, "Quantic Dream");
INSERT INTO tb_produtos(produto, valor, categoria, qtd_estoque, marca) VALUES (
"Project Zomboid", 59.99, "Jogo Eletrônico", 100, "The Indie Stone");
INSERT INTO tb_produtos(produto, valor, categoria, qtd_estoque, marca) VALUES (
"Days Gone", 199.50, "Jogo Eletrônico", 350, "Bend Studio");
INSERT INTO tb_produtos(produto, valor, categoria, qtd_estoque, marca) VALUES (
"CONTROLE SEM FIO XBOX", 692.16, "Eletrônico", 50, "Microsoft");
INSERT INTO tb_produtos(produto, valor, categoria, qtd_estoque, marca) VALUES (
"Controle sem fio DualSense", 546.90, "Eletrônico", 100, "SONY");

SELECT * FROM tb_produtos;

SELECT * FROM tb_produtos WHERE valor > 500;

SELECT * FROM tb_produtos WHERE valor < 500;

UPDATE tb_produtos SET qtd_estoque = 100 WHERE id = 2;

