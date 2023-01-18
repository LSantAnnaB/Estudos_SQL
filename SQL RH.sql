CREATE DATABASE rh;
USE rh;

CREATE TABLE colaborador (
	idColaborador int NOT NuLL AUTO_INCREMENT,
    nomeColaborador varchar (255) NOT NULL,
    tempoColaborador varchar (255) NOT NULL,
    salarioColaborador int NOT NULL,
    senoridadeColaborador  varchar(255) NOT NULL,
    PRIMARY KEY (idColaborador) 
    );
    
INSERT INTO colaborador 
(nomeColaborador,tempoColaborador,salarioColaborador,senoridadeColaborador)
VALUES ("Jonas da Silva","2 anos", 3200, "jr");
INSERT INTO colaborador 
(nomeColaborador,tempoColaborador,salarioColaborador,senoridadeColaborador)
VALUES ("Douglas da Silva","5 anos", 6000, "PL");
INSERT INTO colaborador 
(nomeColaborador,tempoColaborador,salarioColaborador,senoridadeColaborador)
VALUES ("Lucas Souza","4 anos", 6000, "PL");
INSERT INTO colaborador 
(nomeColaborador,tempoColaborador,salarioColaborador,senoridadeColaborador)
VALUES ("Jonadabe cardozo","6 meses", 800, "Estagiário");
INSERT INTO colaborador 
(nomeColaborador,tempoColaborador,salarioColaborador,senoridadeColaborador)
VALUES ("Marceli Nascimento","2 anos", 1000, "JR");
INSERT INTO colaborador 
(nomeColaborador,tempoColaborador,salarioColaborador,senoridadeColaborador)
VALUES ("LAura Canuto","3 anos", 1200, "JR");
INSERT INTO colaborador 
(nomeColaborador,tempoColaborador,salarioColaborador,senoridadeColaborador)
VALUES ("Roberto Nascimento","8 anos", 9000, "SR");
INSERT INTO colaborador 
(nomeColaborador,tempoColaborador,salarioColaborador,senoridadeColaborador)
VALUES ("Diego Mello ","9 anos", 9000, "SR");

SELECT * FROM colaborador;

SELECT nomeColaborador, salarioColaborador FROM colaborador where salarioColaborador > 2000;
SELECT nomeColaborador, salarioColaborador FROM colaborador where salarioColaborador < 2000;

UPDATE colaborador
 SET senoridadeColaborador = "Jr", salarioColaborador = 2000
 WHERE idColaborador = 4;
