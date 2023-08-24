CREATE DATABASE db_escola;
USE db_escola;
CREATE TABLE tb_estudantes(
id bigint auto_increment, 
nome varchar(255) not null, 
CPF varchar(14) not null, 
datanasc date not null,
email varchar(255) not null,
curso varchar(255) not null,
nota decimal (4,2) not null,
primary key (id)
);

INSERT INTO tb_estudantes (nome, CPF, datanasc, email, curso, nota) values ('João da Silva', '123.456.789-00', '1990-05-15', 'joao@email.com', 'Engenharia', 7.8);
INSERT INTO tb_estudantes (nome, CPF, datanasc, email, curso, nota) values ('Maria Santos', '987.654.321-00', '1995-09-20', 'maria@email.com', 'Medicina', 9.0);
INSERT INTO tb_estudantes (nome, CPF, datanasc, email, curso, nota) values ('Carlos Oliveira', '456.789.123-00', '1998-03-10', 'carlos@email.com', 'Direito', 5.5);
INSERT INTO tb_estudantes (nome, CPF, datanasc, email, curso, nota) values ('Ana Pereira', '654.321.987-00', '2000-11-02', 'ana@email.com', 'Administração', 6.0);
INSERT INTO tb_estudantes (nome, CPF, datanasc, email, curso, nota) values ('Pedro Souza', '234.567.890-00', '1997-07-25', 'pedro@email.com', 'Ciência da Computação', 7.0);
INSERT INTO tb_estudantes (nome, CPF, datanasc, email, curso, nota) values ('Mariana Silva', '789.012.345-00', '1999-01-18', 'mariana@email.com', 'Psicologia', 10.0);
INSERT INTO tb_estudantes (nome, CPF, datanasc, email, curso, nota) values ('Lucas Costa', '567.890.123-00', '1996-12-07', 'lucas@email.com', 'Engenharia Civil', 8.5);
INSERT INTO tb_estudantes (nome, CPF, datanasc, email, curso, nota) values ('Isabela Rodrigues', '345.678.901-00', '2002-08-14', 'isabela@email.com', 'Arquitetura', 4.9);

SELECT * FROM tb_estudantes WHERE nota > 7;
SELECT * FROM tb_estudantes WHERE nota < 7;

UPDATE tb_estudantes SET nota = 7.0 WHERE id = 4;

SELECT * FROM tb_estudantes;
