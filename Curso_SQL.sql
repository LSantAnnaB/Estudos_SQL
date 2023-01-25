CREATE DATABASE db_curso_da_minha_vida;
USE db_curso_da_minha_vida;


CREATE TABLE tb_categoria  (
	idCategoria int NOT NuLL AUTO_INCREMENT,
    nomeCategoria varchar (255) NOT NULL,
	modalidadeCategoria varchar (100) NOT NULL,
    PRIMARY KEY (idCategoria)
    
    );
SELECT * FROM tb_categoria;  
 
INSERT INTO tb_categoria
(nomeCategoria,modalidadeCategoria)
VALUES("Tecnologia","Técnico");
INSERT INTO tb_categoria
(nomeCategoria,modalidadeCategoria)
VALUES("Tecnologia","Tecnólogo");
INSERT INTO tb_categoria
(nomeCategoria,modalidadeCategoria)
VALUES("Tecnologia","Bacharel");
INSERT INTO tb_categoria
(nomeCategoria,modalidadeCategoria)
VALUES("Tecnologia","Doutorado");
INSERT INTO tb_categoria
(nomeCategoria,modalidadeCategoria)
VALUES("Tecnologia","PHD");

SELECT * FROM tb_categoria;
    
CREATE TABLE tb_curso (
	idcurso int NOT NuLL AUTO_INCREMENT,
    nomeCurso varchar (255) NOT NULL,
    modalidadeCurso  varchar(100) NOT NULL,
    precoCurso float NOT NULL,
    qntDeAlunosCurso int NOT NULL,
    idCategoria int,
    PRIMARY KEY (idcurso),
    CONSTRAINT fk_Cat_curso FOREIGN KEY (idCategoria) REFERENCES tb_categoria ( idCategoria)
    );
    
    select * from tb_curso;
    
INSERT INTO tb_curso
(nomecurso,modalidadecurso,precocurso,qntDeAlunosCurso,idCategoria)
VALUES("Java","EAD",400.00,100,1);
INSERT INTO tb_curso
(nomecurso,modalidadecurso,precocurso,qntDeAlunosCurso,idCategoria)
VALUES("JavaSript","Presencial",2600.33,40,2);
INSERT INTO tb_curso
(nomecurso,modalidadecurso,precocurso,qntDeAlunosCurso,idCategoria)
VALUES("Banco de Dados","Semipresencial",690.90,10,3);
INSERT INTO tb_curso
(nomecurso,modalidadecurso,precocurso,qntDeAlunosCurso,idCategoria)
VALUES("Angular","Presencial",900.00,6,4);
INSERT INTO tb_curso
(nomecurso,modalidadecurso,precocurso,qntDeAlunosCurso,idCategoria)
VALUES("Node JS","EAD",770.65,60,5);
INSERT INTO tb_curso
(nomecurso,modalidadecurso,precocurso,qntDeAlunosCurso,idCategoria)
VALUES("Type Script","EAD",4000.0,100,1);
INSERT INTO tb_curso
(nomecurso,modalidadecurso,precocurso,qntDeAlunosCurso,idCategoria)
VALUES("Junit","Semipresencial",100.00,15,5);
INSERT INTO tb_curso
(nomecurso,modalidadecurso,precocurso,qntDeAlunosCurso,idCategoria)
VALUES("Phyton","EAD" ,500.00,20,3);
INSERT INTO tb_curso
(nomecurso,modalidadecurso,precocurso,qntDeAlunosCurso,idCategoria)
VALUES("React","Presencial",340.00,30,1);

SELECT * FROM tb_curso;

SELECT nomecurso, precocurso FROM tb_curso where precocurso > 500.00;
SELECT nomecurso, precocurso FROM tb_curso where precocurso between 600.00 and 1000.00 ;

SELECT nomecurso FROM tb_curso where nomecurso LIKE "%J%";

SELECT * FROM tb_curso INNER JOIN tb_categoria
 ON tb_curso.idCategoria = tb_categoria.idCategoria;
 
 SELECT nomecurso,nomeCategoria,tb_categoria.modalidadeCategoria FROM tb_curso INNER JOIN tb_categoria 
 ON tb_curso.idCategoria = tb_categoria.idCategoria where tb_categoria.modalidadeCategoria = "Doutorado";
 
