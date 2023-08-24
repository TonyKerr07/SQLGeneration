CREATE DATABASE db_cidade_das_carnes;
USE db_cidade_das_carnes;
CREATE TABLE tb_categorias (
id bigint auto_increment,
nome varchar(255) not null,
descricao varchar(255),
primary key (id)
);
CREATE TABLE tb_produtos (
id bigint auto_increment,
nome varchar(255) not null,
descricao varchar(255),
preco decimal(8, 2) not null,
id_categoria bigint,
primary key (id),
foreign key (id_categoria) references tb_categorias(id)
);

INSERT INTO tb_categorias (nome, descricao) VALUES ("Carnes Bovinas", "Carnes de gado.");
INSERT INTO tb_categorias (nome, descricao) VALUES ("Carnes Suínas", "Carnes de porco.");
INSERT INTO tb_categorias (nome, descricao) VALUES ("Carnes de Aves", "Carnes de frango e outras aves.");
INSERT INTO tb_categorias (nome, descricao) VALUES ("Embutidos", "Produtos embutidos e processados.");
INSERT INTO tb_categorias (nome, descricao) VALUES ("Outros", "Outros produtos de açougue.");

INSERT INTO tb_produtos (nome, descricao, preco, id_categoria) VALUES ("Picanha", "Corte nobre de carne bovina.", 80.00, 1);
INSERT INTO tb_produtos (nome, descricao, preco, id_categoria) VALUES ("Linguiça Toscana", "Embutido de carne suína temperada.", 12.00, 2);
INSERT INTO tb_produtos (nome, descricao, preco, id_categoria) VALUES ("Peito de Frango", "Peito de frango desossado.", 25.00, 3);
INSERT INTO tb_produtos (nome, descricao, preco, id_categoria) VALUES ("Alcatra", "Corte de carne bovina macio.", 65.00, 1);
INSERT INTO tb_produtos (nome, descricao, preco, id_categoria) VALUES ("Costelinha de Porco", "Costelas de porco marinadas.", 30.00, 2);
INSERT INTO tb_produtos (nome, descricao, preco, id_categoria) VALUES ("Coxinha da Asa", "Asa de frango com coxinha.", 20.00, 3);
INSERT INTO tb_produtos (nome, descricao, preco, id_categoria) VALUES ("Salsicha", "Embutido de carne mista.", 10.00, 4);
INSERT INTO tb_produtos (nome, descricao, preco, id_categoria) VALUES ("Carne Moída", "Carne bovina moída.", 15.00, 1);

SELECT * FROM tb_produtos WHERE preco > 50.00;
SELECT * FROM tb_produtos WHERE preco BETWEEN 50.00 AND 150.00;
SELECT * FROM tb_produtos WHERE nome LIKE "%C%";

SELECT tb_produtos.nome, tb_produtos.descricao, tb_produtos.preco, tb_categorias.nome, tb_categorias.descricao FROM tb_produtos INNER JOIN tb_categorias ON tb_categorias.id = tb_produtos.id_categoria;
SELECT tb_produtos.nome, tb_produtos.descricao, tb_produtos.preco, tb_categorias.nome, tb_categorias.descricao FROM tb_produtos INNER JOIN tb_categorias ON tb_categorias.id = tb_produtos.id_categoria WHERE tb_categorias.nome = "Carnes de Aves";
