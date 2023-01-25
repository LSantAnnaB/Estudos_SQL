CREATE DATABASE db_pizzaria_legal;
USE db_pizzaria_legal;


CREATE TABLE tb_categorias  (
	idCategoria int NOT NuLL AUTO_INCREMENT,
    nomeCategoria varchar (255) NOT NULL,
	formatoCategoria varchar (100) NOT NULL,
    PRIMARY KEY (idCategoria)
    
    );
SELECT * FROM tb_categorias;  
 
INSERT INTO tb_categorias
(nomeCategoria,formatoCategoria)
VALUES("Salgada","Octagonal");
INSERT INTO tb_categorias
(nomeCategoria,formatoCategoria)
VALUES("Doce","Quadrada");
INSERT INTO tb_categorias
(nomeCategoria,formatoCategoria)
VALUES("Vegana","Hexagonal");
INSERT INTO tb_categorias
(nomeCategoria,formatoCategoria)
VALUES("Japonesa","Retangular");
INSERT INTO tb_categorias
(nomeCategoria,formatoCategoria)
VALUES("Chinesa","Triangular");
    
CREATE TABLE tb_pizza (
	idPizza int NOT NuLL AUTO_INCREMENT,
    nomePizza varchar (255) NOT NULL,
    saborPizza  varchar(100) NOT NULL,
    precoPizza float NOT NULL,
    qtdPedacosPizza int NOT NULL,
    idCategoria int,
    PRIMARY KEY (idPizza),
    CONSTRAINT fk_Cat_Pizza FOREIGN KEY (idCategoria) REFERENCES tb_categorias ( idCategoria)
    );
    
    select * from tb_pizza;
    
INSERT INTO tb_pizza
(nomePizza,saborPizza,precoPizza,qtdPedacosPizza,idCategoria)
VALUES("Robervaldo","Calabresa",40.00,8,1);
INSERT INTO tb_pizza
(nomePizza,saborPizza,precoPizza,qtdPedacosPizza,idCategoria)
VALUES("Mariclédson","Chocolate",26.33,12,2);
INSERT INTO tb_pizza
(nomePizza,saborPizza,precoPizza,qtdPedacosPizza,idCategoria)
VALUES("Jovenildo","Cogumelos",69.90,10,3);
INSERT INTO tb_pizza
(nomePizza,saborPizza,precoPizza,qtdPedacosPizza,idCategoria)
VALUES("Marcianta","Temaky",90.00,6,4);
INSERT INTO tb_pizza
(nomePizza,saborPizza,precoPizza,qtdPedacosPizza,idCategoria)
VALUES("Esquisofenix","Yaksoba",77.65,6,5);
INSERT INTO tb_pizza
(nomePizza,saborPizza,precoPizza,qtdPedacosPizza,idCategoria)
VALUES("Jurujuba","4 Queijos",40.20,10,1);
INSERT INTO tb_pizza
(nomePizza,saborPizza,precoPizza,qtdPedacosPizza,idCategoria)
VALUES("Destorrez","Cachorro",100.00,12,5);
INSERT INTO tb_pizza
(nomePizza,saborPizza,precoPizza,qtdPedacosPizza,idCategoria)
VALUES("Alucard","Folhas em geral" ,50.00,19,3);
INSERT INTO tb_pizza
(nomePizza,saborPizza,precoPizza,qtdPedacosPizza,idCategoria)
VALUES("Pherb","Frango com bacon",34.00,12,1);


SELECT nomePizza, precoPizza FROM tb_pizza where precoPizza > 45.00;
SELECT nomePizza, precoPizza FROM tb_pizza where precoPizza between 50.00 and 100.00 ;

SELECT nomePizza FROM tb_pizza where nomePizza LIKE "%M%";

SELECT * FROM tb_pizza INNER JOIN tb_Categorias
 ON tb_pizza.idCategoria = tb_categorias.idCategoria;
 
 SELECT nomePizza,nomeCategoria,tb_Categorias.nomeCategoria FROM tb_pizza INNER JOIN tb_Categorias 
 ON tb_pizza.idCategoria = tb_categorias.idCategoria where tb_Categorias.nomeCategoria = "Doce";
 
