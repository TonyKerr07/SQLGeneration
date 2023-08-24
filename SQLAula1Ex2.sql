CREATE DATABASE db_ecommerce;
USE db_ecommerce;
CREATE TABLE tb_produtos(
id bigint auto_increment, 
nome varchar(255) not null, 
descricao varchar(255), 
marca varchar(255),
estoque int,
preco decimal (6,2) not null,
primary key (id)
);

INSERT INTO tb_produtos(nome, descricao, marca, estoque, preco) values ("Camiseta preta", "Camiseta de algodão", "Insider", 10, 19.90);
INSERT INTO tb_produtos(nome, descricao, marca, estoque, preco) values ("Celular Samsung", "Smartphone com câmera dupla e 128GB de armazenamento.", "Samsung", 5, 1999.90);
INSERT INTO tb_produtos(nome, descricao, marca, estoque, preco) values ("Tênis Adidas", "Tênis de corrida preto", "Adidas", 15, 199.90);
INSERT INTO tb_produtos(nome, descricao, marca, estoque, preco) values ("Mochila Centauro", "Mochila preta para notebook", "Centauro", 9, 150.00);
INSERT INTO tb_produtos(nome, descricao, marca, estoque, preco) values ("Livro", "Livro de Romance", "Editora abril", 1000, 14.50);
INSERT INTO tb_produtos(nome, descricao, marca, estoque, preco) values ("Fone de ouvido sem fio", "Fone sem fio branco", "Apple", 20, 299.99);
INSERT INTO tb_produtos(nome, descricao, marca, estoque, preco) values ("Vestido de festa", "Vestido preto para ocasiões especiais", "Prada", 5, 999.90);
INSERT INTO tb_produtos(nome, descricao, marca, estoque, preco) values ("Café", "Café Gourmet de torra média", "Melita", 50, 29.99);

SELECT*FROM tb_produtos WHERE preco > 500;
SELECT*FROM tb_produtos WHERE preco < 500;

UPDATE tb_produtos SET preco = 599.99 WHERE id = 3;

SELECT*FROM tb_produtos;