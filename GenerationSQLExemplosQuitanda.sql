CREATE DATABASE db_quitanda;
USE db_quitanda;
CREATE TABLE tb_produtos(
id bigint auto_increment, 
nome varchar(255) not null, 
qunatidade int, 
preco decimal not null,
primary key (id)
);

INSERT INTO tb_produtos(nome, qunatidade, preco) values ("tomate", 100, 8.00);
INSERT INTO tb_produtos(nome, qunatidade, preco) values ("maça", 85, 30.00);
INSERT INTO tb_produtos(nome, qunatidade, preco) values ("laranja", 120, 3.00);
INSERT INTO tb_produtos(nome, qunatidade, preco) values ("banana", 50, 5.00);
INSERT INTO tb_produtos(nome, qunatidade, preco) values ("morango", 39, 10.00);
INSERT INTO tb_produtos(nome, qunatidade, preco) values ("abacate", 180, 3.50);

SELECT*FROM tb_produtos;

SELECT nome FROM tb_produtos; 
SELECT nome, preco FROM tb_produtos;
SELECT * FROM tb_produtos WHERE id=1;
SELECT * FROM tb_produtos WHERE preco > 10.00;
SELECT * FROM tb_produtos WHERE preco > 5.00 AND quantidade < 100;

UPDATE tb_produtos SET preco = 5.00 WHERE id = 1;

DELETE FROM tb_produtos WHERE id = 2;

ALTER TABLE tb_produtos MODIFY preco decimal (6,2);

ALTER TABLE tb_produtos ADD descricao varchar(255);

ALTER TABLE tb_produtos DROP descricao;

ALTER TABLE tb_produtos CHANGE nome nomeproduto varchar(255);

SELECT * FROM tb_produtos ORDER BY nomeproduto ASC;

SELECT * FROM tb_produtos WHERE preco BETWEEN 3.00 AND 15.00;

SELECT * FROM tb_produtos WHERE preco IN (3.00, 4.00,12.00);

SELECT * FROM tb_produtos WHERE nomeproduto LIKE "a%";

SELECT * FROM tb_produtos WHERE nomeproduto LIKE "t_m%";

CREATE TABLE tb_categoria (
id bigint  auto_increment,
descricao varchar (255) not null,
primary key (id)
);

SELECT * FROM tb_categoria;

INSERT INTO tb_categoria (descricao) VALUES ("Fruta");
INSERT INTO tb_categoria (descricao) VALUES ("Verdura");
INSERT INTO tb_categoria (descricao) VALUES ("Legumes");
INSERT INTO tb_categoria (descricao) VALUES ("Hortaliça");

ALTER TABLE tb_produtos ADD categoria_id bigint;

ALTER TABLE tb_produtos ADD CONSTRAINT fk_produtos_categoria FOREIGN KEY (categoria_id) REFERENCES tb_categoria (id);

INSERT INTO tb_produtos(nomeproduto, quantidade, preco, categoria_id) VALUES ("Uva", 10, 15.00, 1);
INSERT INTO tb_produtos(nomeproduto, quantidade, preco, categoria_id) VALUES ("Alface", 20, 3.00, 2);
INSERT INTO tb_produtos(nomeproduto, quantidade, preco, categoria_id) VALUES ("Cenoura", 50, 4.00, 3);

SELECT nomeproduto, quantidade, preco FROM tb_produtos INNER JOIN tb_categoria ON tb_categoria.id = tb_produtos.categoria_id;

SELECT nomeproduto, quantidade, preco FROM tb_produtos LEFT JOIN  tb_categoria ON tb_categoria.id = tb_produtos.categoria_id;

SELECT nomeproduto, quantidade, preco FROM tb_produtos RIGHT JOIN  tb_categoria ON tb_categoria.id = tb_produtos.categoria_id;

SELECT*FROM tb_produtos;

