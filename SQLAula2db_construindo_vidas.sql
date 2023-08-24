CREATE DATABASE db_construindo_vidas;
USE db_construindo_vidas;
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

INSERT INTO tb_categorias (nome, descricao) VALUES ("Materiais de Construção", "Produtos diversos para construção.");
INSERT INTO tb_categorias (nome, descricao) VALUES ("Ferramentas", "Ferramentas para trabalho em construção.");
INSERT INTO tb_categorias (nome, descricao) VALUES ("Hidráulica", "Produtos para sistemas hidráulicos.");
INSERT INTO tb_categorias (nome, descricao) VALUES ("Elétrica", "Produtos para sistemas elétricos.");
INSERT INTO tb_categorias (nome, descricao) VALUES ("Acabamentos", "Produtos de acabamento e decoração.");

INSERT INTO tb_produtos (nome, descricao, preco, id_categoria) VALUES ("Cimento", "Material básico para construção.", 20.00, 1);
INSERT INTO tb_produtos (nome, descricao, preco, id_categoria) VALUES ("Martelo", "Ferramenta para bater e fixar pregos.", 15.00, 2);
INSERT INTO tb_produtos (nome, descricao, preco, id_categoria) VALUES ("Tubo PVC", "Tubo de PVC para sistemas hidráulicos.", 10.00, 3);
INSERT INTO tb_produtos (nome, descricao, preco, id_categoria) VALUES ("Fio Elétrico", "Fio para instalações elétricas.", 8.00, 4);
INSERT INTO tb_produtos (nome, descricao, preco, id_categoria) VALUES ("Tinta Látex", "Tinta para pintura interna.", 30.00, 5);
INSERT INTO tb_produtos (nome, descricao, preco, id_categoria) VALUES ("Tijolo", "Bloco de tijolo para construção.", 1.50, 1);
INSERT INTO tb_produtos (nome, descricao, preco, id_categoria) VALUES ("Alicate", "Ferramenta para cortar e prender fios.", 12.00, 2);
INSERT INTO tb_produtos (nome, descricao, preco, id_categoria) VALUES ("Vaso Sanitário", "Vaso para banheiros.", 150.00, 3);

SELECT * FROM tb_produtos WHERE preco > 100.00;
SELECT * FROM tb_produtos WHERE preco BETWEEN 70.00 AND 150.00;
SELECT * FROM tb_produtos WHERE nome LIKE "%C%";

SELECT tb_produtos.nome, tb_produtos.descricao, tb_produtos.preco, tb_categorias.nome, tb_categorias.descricao FROM tb_produtos INNER JOIN tb_categorias ON tb_categorias.id = tb_produtos.id_categoria;
SELECT tb_produtos.nome, tb_produtos.descricao, tb_produtos.preco, tb_categorias.nome, tb_categorias.descricao FROM tb_produtos INNER JOIN tb_categorias ON tb_categorias.id = tb_produtos.id_categoria WHERE tb_categorias.nome = "Hidráulica";
