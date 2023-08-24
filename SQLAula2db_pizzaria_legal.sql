CREATE DATABASE db_pizzaria_legal;
USE db_pizzaria_legal;
CREATE TABLE tb_categorias(
id bigint auto_increment,
nome varchar(255) not null,
descricao varchar(255),
primary key (id)
);
CREATE TABLE tb_pizzas(
id bigint auto_increment,
nome varchar(255) not null,
descricao varchar(255),
preco decimal(8, 2) not null,
id_categoria bigint,
primary key (id),
foreign key (id_categoria) references tb_categorias(id)
);

INSERT INTO tb_categorias (nome, descricao) VALUES ("Salgada", "Pizzas tradicionais salgadas.");
INSERT INTO tb_categorias (nome, descricao) VALUES ("Doce", "Pizzas doces e saborosas.");
INSERT INTO tb_categorias (nome, descricao) VALUES ("Vegetariana", "Pizzas sem carne, com muitos vegetais.");
INSERT INTO tb_categorias (nome, descricao) VALUES ("Especial", "Pizzas gourmet e especiais.");
INSERT INTO tb_categorias (nome, descricao) VALUES ("Calzone", "Pizzas fechadas em formato de calzone.");

INSERT INTO tb_pizzas (nome, descricao, preco, id_categoria) VALUES ("Margherita", "Molho de tomate, mussarela, manjericão.", 40.00, 1);
INSERT INTO tb_pizzas (nome, descricao, preco, id_categoria) VALUES ("Pepperoni", "Molho de tomate, mussarela, pepperoni.", 45.00, 1);
INSERT INTO tb_pizzas (nome, descricao, preco, id_categoria) VALUES ("Chocolate com Morango", "Chocolate, morango, leite condensado.", 30.00, 2);
INSERT INTO tb_pizzas (nome, descricao, preco, id_categoria) VALUES ("Quatro Queijos", "Molho de tomate, mussarela, provolone, gorgonzola, parmesão.", 50.00, 1);
INSERT INTO tb_pizzas (nome, descricao, preco, id_categoria) VALUES ("Vegetariana", "Molho de tomate, mussarela, diversos vegetais.", 42.00, 3);
INSERT INTO tb_pizzas (nome, descricao, preco, id_categoria) VALUES ("Frutos do Mar", "Molho de tomate, camarão, lula, mariscos.", 55.00, 4);
INSERT INTO tb_pizzas (nome, descricao, preco, id_categoria) VALUES ("Calzone de Frango", "Mussarela, frango desfiado, requeijão.", 48.00, 5);
INSERT INTO tb_pizzas (nome, descricao, preco, id_categoria) VALUES ("Portuguesa", "Molho de tomate, mussarela, presunto, ovo, cebola.", 47.00, 1);

SELECT * FROM tb_pizzas WHERE preco > 45.00;
SELECT * FROM tb_pizzas WHERE preco BETWEEN 50.00 AND 100.00;
SELECT * FROM tb_pizzas WHERE nome LIKE "%M%";

SELECT tb_pizzas.nome, tb_pizzas.descricao, tb_pizzas.preco, tb_categorias.nome, tb_categorias.descricao FROM tb_pizzas INNER JOIN tb_categorias ON tb_categorias.id = tb_pizzas.id_categoria;
SELECT tb_pizzas.nome, tb_pizzas.descricao, tb_pizzas.preco, tb_categorias.nome, tb_categorias.descricao FROM tb_pizzas INNER JOIN tb_categorias ON tb_categorias.id = tb_pizzas.id_categoria WHERE tb_categorias.nome = "Doce";
