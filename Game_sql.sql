CREATE DATABASE db_generation_game_online;
USE db_generation_game_online;


CREATE TABLE tb_class (
	idClass int NOT NuLL AUTO_INCREMENT,
    nomeClass varchar (255) NOT NULL,
	categoriaClass varchar (100) NOT NULL,
    PRIMARY KEY (idClass)
    
    );
    
INSERT INTO tb_class
(nomeClass,categoriaClass)
VALUES("Necromante","Combate a distância");
INSERT INTO tb_class
(nomeClass,categoriaClass)
VALUES("Guerreiro","Corpo a corpo");
INSERT INTO tb_class
(nomeClass,categoriaClass)
VALUES("Cruzado","Combate a distância e Corpo a corpo");
INSERT INTO tb_class
(nomeClass,categoriaClass)
VALUES("Mago","Combate a distância");
INSERT INTO tb_class
(nomeClass,categoriaClass)
VALUES("Arqueiro","Combate a distância");
    
CREATE TABLE tb_personagem (
	idPersonagem int NOT NuLL AUTO_INCREMENT,
    nomePersonagem varchar (255) NOT NULL,
    atkPersonagem  int NOT NULL,
    defPersonagem int NOT NULL,
    armasPersonagem varchar(100) NOT NULL,
    idClass int,
    PRIMARY KEY (idPersonagem),
    CONSTRAINT fk_Class_Person FOREIGN KEY (idClass) REFERENCES tb_Class ( idClass)
    );
    
    select * from tb_personagem;
    
INSERT INTO tb_personagem
(nomePersonagem,atkPersonagem,defPersonagem , armasPersonagem,idClass)
VALUES("Robervaldo",4200,4000,"Cajado do vázio",1);
INSERT INTO tb_personagem
(nomePersonagem,atkPersonagem,defPersonagem , armasPersonagem,idClass)
VALUES("Mariclédson",3620,2623,"Espada de duas mãos",2);
INSERT INTO tb_personagem
(nomePersonagem,atkPersonagem,defPersonagem , armasPersonagem,idClass)
VALUES("Jovenildo",1142,1114,"Espada e Escudo",3);
INSERT INTO tb_personagem
(nomePersonagem,atkPersonagem,defPersonagem , armasPersonagem,idClass)
VALUES("Marcianta",1215,9000,"varinha do harry",4);
INSERT INTO tb_personagem
(nomePersonagem,atkPersonagem,defPersonagem , armasPersonagem,idClass)
VALUES("Esquisofenix",7000,600,"Arcos da justiça",5);
INSERT INTO tb_personagem
(nomePersonagem,atkPersonagem,defPersonagem , armasPersonagem,idClass)
VALUES("Jurujuba",5000,4020,"Foice da morte",1);
INSERT INTO tb_personagem
(nomePersonagem,atkPersonagem,defPersonagem , armasPersonagem,idClass)
VALUES("Destorrez",1000,6000,"Arco de bambu",5);
INSERT INTO tb_personagem
(nomePersonagem,atkPersonagem,defPersonagem , armasPersonagem,idClass)
VALUES("Alucard",4000,5000,"Cruz e Espada",3);
INSERT INTO tb_personagem
(nomePersonagem,atkPersonagem,defPersonagem , armasPersonagem,idClass)
VALUES("Pherb",3000,2500,"Osso de um Renegado",1);


SELECT nomePersonagem, atkPersonagem FROM tb_personagem where atkPersonagem > 2000;
SELECT nomePersonagem, defPersonagem FROM tb_personagem where defPersonagem between 1000 and 2000 ;

SELECT nomePersonagem FROM tb_personagem where nomePersonagem LIKE "%C%";

SELECT * FROM tb_personagem INNER JOIN tb_class 
 ON tb_personagem.idClass = tb_class.idClass;
 
 SELECT nomePersonagem,categoriaClass,tb_class.nomeClass FROM tb_personagem INNER JOIN tb_class 
 ON tb_personagem.idClass = tb_class.idClass where tb_class.nomeClass = "necromante";
 
  SELECT nomePersonagem,categoriaClass,tb_class.nomeClass FROM tb_personagem INNER JOIN tb_class 
 ON tb_personagem.idClass = tb_class.idClass where tb_class.nomeClass = "Guerreiro";
 
  SELECT nomePersonagem,categoriaClass,tb_class.nomeClass FROM tb_personagem INNER JOIN tb_class 
 ON tb_personagem.idClass = tb_class.idClass where tb_class.nomeClass = "mago";
 
