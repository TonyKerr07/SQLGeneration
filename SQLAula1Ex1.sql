CREATE DATABASE db_rhempresa;
USE db_rhempresa;
CREATE TABLE tb_colaboradores(
id bigint auto_increment, 
nome varchar(255) not null, 
CPF varchar(14) not null, 
setor varchar(255) not null,
cargo varchar(255) not null,
salario decimal (6,2) not null,
primary key (id)
);

INSERT INTO tb_colaboradores(nome, CPF, setor, cargo, salario) values ("Antonio", "123.456.789-01", "Portaria", "Controlador de acesso", 1500.00);
INSERT INTO tb_colaboradores(nome, CPF, setor, cargo, salario) values ("Carlos", "987.654.321-01", "Manutenção", "Mecânico", 2200.00);
INSERT INTO tb_colaboradores(nome, CPF, setor, cargo, salario) values ("Pedro", "456.123.789-01", "TI", "Desenvolvedor", 5000.00);
INSERT INTO tb_colaboradores(nome, CPF, setor, cargo, salario) values ("Paulo", "789.456.123-01", "RH", "Assistente Administrativo", 1800.00);
INSERT INTO tb_colaboradores(nome, CPF, setor, cargo, salario) values ("Ana", "321.654.987-01", "Diretoria", "Analista de Dados", 6000.00);

SELECT*FROM tb_colaboradores WHERE salario > 2000;
SELECT*FROM tb_colaboradores WHERE salario < 2000;

UPDATE tb_colaboradores SET salario = 2500.00 WHERE id = 1;

SELECT*FROM tb_colaboradores;


