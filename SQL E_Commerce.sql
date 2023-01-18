CREATE DATABASE comercio_digital;
USE comercio_digital;

CREATE TABLE produtos (
	idProduto int NOT NuLL AUTO_INCREMENT,
    nomeProduto varchar (255) NOT NULL,
    marcaProduto varchar (255) NOT NULL,
    estoqueProduto int NOT NULL,
    preçoProduto  int NOT NULL,
    PRIMARY KEY (idProduto) 
    );
    
INSERT INTO produtos 
(nomeProduto,marcaProduto,estoqueProduto,preçoProduto)
VALUES ("Moto G1","Motorola", 300, 450);
INSERT INTO produtos
(nomeProduto,marcaProduto,estoqueProduto,preçoProduto)
VALUES ("Moto zPLay","Motorola", 23, 1200);
INSERT INTO produtos
(nomeProduto,marcaProduto,estoqueProduto,preçoProduto)
VALUES ("Moto E","Motorola", 44, 300);
INSERT INTO produtos
(nomeProduto,marcaProduto,estoqueProduto,preçoProduto)
VALUES ("IPhone 8","IPhone", 1000, 2000);
INSERT INTO produtos
(nomeProduto,marcaProduto,estoqueProduto,preçoProduto)
VALUES ("IPhone 11","IPhone", 544, 5000);
INSERT INTO produtos
(nomeProduto,marcaProduto,estoqueProduto,preçoProduto)
VALUES ("IPhone 14","IPhone", 66, 10000);
INSERT INTO produtos
(nomeProduto,marcaProduto,estoqueProduto,preçoProduto)
VALUES ("Galaxy 8","Samsung", 636, 1300);
INSERT INTO produtos
(nomeProduto,marcaProduto,estoqueProduto,preçoProduto)
VALUES ("Galaxy 3E","Samsung", 622, 250);

SELECT * FROM produtos;

SELECT nomeProduto, preçoProduto FROM produtos where preçoProduto > 500;
SELECT nomeProduto, preçoProduto FROM produtos where preçoProduto < 500;

UPDATE produtos
 SET estoqueProduto = 0
 WHERE idProduto = 5;
