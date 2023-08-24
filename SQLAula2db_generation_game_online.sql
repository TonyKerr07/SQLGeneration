CREATE DATABASE db_generation_game_online;
USE db_generation_game_online;
CREATE TABLE tb_classe(
id bigint auto_increment, 
nome_classe varchar(255) not null, 
descricao_classe varchar(255) not null,
primary key (id)
);
CREATE TABLE tb_personagem(
id bigint auto_increment, 
nome_personagem varchar(255) not null, 
vida int,
ataque int,
defesa int,
id_classe bigint,
primary key (id)
);

ALTER TABLE tb_personagem ADD CONSTRAINT fk_personagem_classe FOREIGN KEY (id_classe) REFERENCES tb_classe (id);

INSERT INTO tb_classe (nome_classe, descricao_classe) VALUES ("Guerreiro", "Mestre do combate corpo a corpo.");
INSERT INTO tb_classe (nome_classe, descricao_classe) VALUES ("Mago", "Manipulador de magia.");
INSERT INTO tb_classe (nome_classe, descricao_classe) VALUES ("Arqueiro", "Especialista em combate à distância.");
INSERT INTO tb_classe (nome_classe, descricao_classe) VALUES ("Ladrão", "Mestre da furtividade e agilidade.");
INSERT INTO tb_classe (nome_classe, descricao_classe) VALUES ("Cavaleiro", "Protetor da honra e da justiça.");

INSERT INTO tb_personagem (nome_personagem, vida, ataque, defesa, id_classe) VALUES ("Thalia", 250, 3000, 1000, 1);
INSERT INTO tb_personagem (nome_personagem, vida, ataque, defesa, id_classe) VALUES ("Kael", 180, 2500, 1500, 2);
INSERT INTO tb_personagem (nome_personagem, vida, ataque, defesa, id_classe) VALUES ("Lyra", 150, 2000, 800, 3);
INSERT INTO tb_personagem (nome_personagem, vida, ataque, defesa, id_classe) VALUES ("Draven", 120, 1800, 1200, 4);
INSERT INTO tb_personagem (nome_personagem, vida, ataque, defesa, id_classe) VALUES ("Selene", 220, 4000, 500, 5);
INSERT INTO tb_personagem (nome_personagem, vida, ataque, defesa, id_classe) VALUES ("Zephyr", 240, 1500, 300, 1);
INSERT INTO tb_personagem (nome_personagem, vida, ataque, defesa, id_classe) VALUES ("Nyx", 180, 1200, 200, 4);
INSERT INTO tb_personagem (nome_personagem, vida, ataque, defesa, id_classe) VALUES ("Orion", 170, 2800, 700, 1);

SELECT * FROM tb_personagem WHERE ataque > 2000;
SELECT * FROM tb_personagem WHERE defesa BETWEEN 1000 AND 2000;
SELECT * FROM tb_personagem WHERE nome_personagem LIKE "%C%";

SELECT tb_personagem.nome_personagem, tb_personagem.vida, tb_personagem.ataque, tb_personagem.defesa, tb_classe.nome_classe, tb_classe.descricao_classe FROM tb_personagem INNER JOIN tb_classe ON tb_classe.id = tb_personagem.id_classe;
SELECT tb_personagem.nome_personagem, tb_personagem.vida, tb_personagem.ataque, tb_personagem.defesa, tb_classe.nome_classe, tb_classe.descricao_classe FROM tb_personagem INNER JOIN tb_classe ON tb_classe.id = tb_personagem.id_classe WHERE tb_classe.nome_classe = "Arqueiro";