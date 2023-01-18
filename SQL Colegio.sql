CREATE DATABASE colegio;
USE colegio;

CREATE TABLE aluno (
	idAluno int NOT NuLL AUTO_INCREMENT,
    nomeAluno varchar (255) NOT NULL,
    turmaAluno varchar (255) NOT NULL,
    notaAluno int NOT NULL,
    turnoAluno  varchar(255) NOT NULL,
    PRIMARY KEY (idAluno) 
    );
    
INSERT INTO aluno 
(nomeAluno,turmaAluno,notaAluno,turnoAluno)
VALUES ("Jonas da Silva","2° ano fundamental", 10, "Manhã");
INSERT INTO aluno 
(nomeAluno,turmaAluno,notaAluno,turnoAluno)
VALUES ("Douglas da Silva","5° ano fundamental", 4, "Manhã");
INSERT INTO aluno 
(nomeAluno,turmaAluno,notaAluno,turnoAluno)
VALUES ("Lucas Souza","2° ano fundamental", 6, "Tarde");
INSERT INTO aluno 
(nomeAluno,turmaAluno,notaAluno,turnoAluno)
VALUES ("Jonadabe cardozo","2° ano fundamental", 8, "Manhã");
INSERT INTO aluno 
(nomeAluno,turmaAluno,notaAluno,turnoAluno)
VALUES ("Marceli Nascimento","2° ano Colegial", 10, "Noite");
INSERT INTO aluno 
(nomeAluno,turmaAluno,notaAluno,turnoAluno)
VALUES ("LAura Canuto","3° ano Colegial", 7, "Tarde");
INSERT INTO aluno 
(nomeAluno,turmaAluno,notaAluno,turnoAluno)
VALUES ("Roberto Nascimento","8° ano fundamental", 10, "Manhã");
INSERT INTO aluno 
(turmaAluno,notaAluno,turnoAluno)
VALUES ("Diego Mello ","9° ano fundamental", 3, "Manhã");

SELECT * FROM aluno;

SELECT nomeAluno, notaAluno FROM aluno where notaAluno > 7;
SELECT nomeAluno, notaAluno FROM aluno where notaAluno < 7;

UPDATE aluno
 SET turnoAluno = "Noite"
 WHERE idAluno = 8;
