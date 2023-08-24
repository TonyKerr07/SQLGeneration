CREATE DATABASE db_farmacia_bem_estar;
USE db_farmacia_bem_estar;
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

INSERT INTO tb_categorias (nome, descricao) VALUES ("Medicamentos", "Produtos medicinais e farmacêuticos.");
INSERT INTO tb_categorias (nome, descricao) VALUES ("Higiene", "Produtos para cuidados pessoais e higiene.");
INSERT INTO tb_categorias (nome, descricao) VALUES ("Cosméticos", "Produtos de beleza e cosméticos.");
INSERT INTO tb_categorias (nome, descricao) VALUES ("Suplementos", "Suplementos alimentares e nutricionais.");
INSERT INTO tb_categorias (nome, descricao) VALUES ("Vitaminas", "Vitaminas e suplementos minerais.");

INSERT INTO tb_produtos (nome, descricao, preco, id_categoria) VALUES ("Paracetamol", "Analgésico e antitérmico.", 10.00, 1);
INSERT INTO tb_produtos (nome, descricao, preco, id_categoria) VALUES ("Shampoo", "Limpeza capilar diária.", 15.00, 2);
INSERT INTO tb_produtos (nome, descricao, preco, id_categoria) VALUES ("Batom", "Produto de maquiagem para lábios.", 25.00, 3);
INSERT INTO tb_produtos (nome, descricao, preco, id_categoria) VALUES ("Whey Protein", "Suplemento proteico para musculação.", 60.00, 4);
INSERT INTO tb_produtos (nome, descricao, preco, id_categoria) VALUES ("Vitamina C", "Suplemento de vitamina C.", 20.00, 5);
INSERT INTO tb_produtos (nome, descricao, preco, id_categoria) VALUES ("Aspirina", "Analgésico e anti-inflamatório.", 12.00, 1);
INSERT INTO tb_produtos (nome, descricao, preco, id_categoria) VALUES ("Loção Hidratante", "Hidratação corporal diária.", 18.00, 2);
INSERT INTO tb_produtos (nome, descricao, preco, id_categoria) VALUES ("Protetor Solar", "Proteção contra raios UV.", 30.00, 2);

SELECT * FROM tb_produtos WHERE preco > 50.00;
SELECT * FROM tb_produtos WHERE preco BETWEEN 5.00 AND 60.00;
SELECT * FROM tb_produtos WHERE nome LIKE "%C%";

SELECT tb_produtos.nome, tb_produtos.descricao, tb_produtos.preco, tb_categorias.nome, tb_categorias.descricao FROM tb_produtos INNER JOIN tb_categorias ON tb_categorias.id = tb_produtos.id_categoria;
SELECT tb_produtos.nome, tb_produtos.descricao, tb_produtos.preco, tb_categorias.nome, tb_categorias.descricao FROM tb_produtos INNER JOIN tb_categorias ON tb_categorias.id = tb_produtos.id_categoria WHERE tb_categorias.nome = "Cosméticos";
