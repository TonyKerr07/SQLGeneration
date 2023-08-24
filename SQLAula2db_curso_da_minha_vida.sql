CREATE DATABASE db_curso_da_minha_vida;
USE db_curso_da_minha_vida;
CREATE TABLE tb_categorias (
id bigint auto_increment,
nome varchar(255) not null,
descricao varchar(255),
primary key (id)
);
CREATE TABLE tb_cursos (
id bigint auto_increment,
nome varchar(255) not null,
descricao varchar(255),
preco decimal(8, 2) not null,
id_categoria bigint,
primary key (id),
foreign key (id_categoria) references tb_categorias(id)
);

INSERT INTO tb_categorias (nome, descricao) VALUES ("Programação", "Cursos de programação e desenvolvimento.");
INSERT INTO tb_categorias (nome, descricao) VALUES ("Design", "Cursos de design gráfico e web.");
INSERT INTO tb_categorias (nome, descricao) VALUES ("Negócios", "Cursos de administração e negócios.");
INSERT INTO tb_categorias (nome, descricao) VALUES ("Idiomas", "Cursos de idiomas e comunicação.");
INSERT INTO tb_categorias (nome, descricao) VALUES ("Saúde", "Cursos na área de saúde e bem-estar.");

INSERT INTO tb_cursos (nome, descricao, preco, id_categoria) VALUES ("Curso de Java", "Aprenda a programar em Java.", 600.00, 1);
INSERT INTO tb_cursos (nome, descricao, preco, id_categoria) VALUES ("Curso de Photoshop", "Domine o Photoshop.", 300.00, 2);
INSERT INTO tb_cursos (nome, descricao, preco, id_categoria) VALUES ("Curso de Administração", "Princípios básicos de administração.", 400.00, 3);
INSERT INTO tb_cursos (nome, descricao, preco, id_categoria) VALUES ("Curso de Inglês", "Aprenda inglês do básico ao avançado.", 800.00, 4);
INSERT INTO tb_cursos (nome, descricao, preco, id_categoria) VALUES ("Curso de Saúde Mental", "Cuidando da sua mente e bem-estar.", 350.00, 5);
INSERT INTO tb_cursos (nome, descricao, preco, id_categoria) VALUES ("Curso de Python", "Introdução à programação em Python.", 550.00, 1);
INSERT INTO tb_cursos (nome, descricao, preco, id_categoria) VALUES ("Curso de Illustrator", "Design vetorial com Illustrator.", 280.00, 2);
INSERT INTO tb_cursos (nome, descricao, preco, id_categoria) VALUES ("Curso de Gestão de Projetos", "Práticas de gestão de projetos.", 700.00, 3);
    
SELECT * FROM tb_cursos WHERE preco > 500.00;
SELECT * FROM tb_cursos WHERE preco BETWEEN 600.00 AND 1000.00;
SELECT * FROM tb_cursos WHERE nome LIKE "%J%";

SELECT tb_cursos.nome, tb_cursos.descricao, tb_cursos.preco, tb_categorias.nome, tb_categorias.descricao FROM tb_cursos INNER JOIN tb_categorias ON tb_categorias.id = tb_cursos.id_categoria;
SELECT tb_cursos.nome, tb_cursos.descricao, tb_cursos.preco, tb_categorias.nome, tb_categorias.descricao FROM tb_cursos INNER JOIN tb_categorias ON tb_categorias.id = tb_cursos.id_categoria WHERE tb_categorias.nome = "Programação";
