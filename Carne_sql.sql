CREATE DATABASE db_cidade_das_carnes;
USE db_cidade_das_carnes ;


CREATE TABLE tb_categorias  (
	idCategoria int NOT NuLL AUTO_INCREMENT,
    nomeCategoria varchar (255) NOT NULL,
	tipoCategoria varchar (100) NOT NULL,
    PRIMARY KEY (idCategoria)
    
    );
SELECT * FROM tb_categorias;  
 
INSERT INTO tb_categorias
(nomeCategoria,tipoCategoria)
VALUES("Carne","Bovina");
INSERT INTO tb_categorias
(nomeCategoria,tipoCategoria)
VALUES("Carne","Suina");
INSERT INTO tb_categorias
(nomeCategoria,tipoCategoria)
VALUES("Carne","Peixe");
INSERT INTO tb_categorias
(nomeCategoria,tipoCategoria)
VALUES("Carne","frango");
INSERT INTO tb_categorias
(nomeCategoria,tipoCategoria)
VALUES("Carne","Ovina");
    
CREATE TABLE tb_produto (
	idProduto int NOT NuLL AUTO_INCREMENT,
    nomeProduto varchar (255) NOT NULL,
	qualidadeProduto  varchar(100) NOT NULL,
    precoProduto float NOT NULL,
    kgProduto int NOT NULL,
    idCategoria int,
    PRIMARY KEY (idproduto),
    CONSTRAINT fk_Cat_produto FOREIGN KEY (idCategoria) REFERENCES tb_categorias ( idCategoria)
    );
    
    select * from tb_produto;
    
INSERT INTO tb_produto
(nomeproduto,qualidadeProduto,precoproduto,kgProduto,idCategoria)
VALUES("Picanha	","Primeira",90.00,1,1);
INSERT INTO tb_produto
(nomeproduto,qualidadeProduto,precoproduto,kgProduto,idCategoria)
VALUES("filé mignon","Primeira",102.00,1,1);
INSERT INTO tb_produto
(nomeproduto,qualidadeProduto,precoproduto,kgProduto,idCategoria)
VALUES("Acém","Segunda",39.90,1,1);
INSERT INTO tb_produto
(nomeproduto,qualidadeProduto,precoproduto,kgProduto,idCategoria)
VALUES("Maminha","Primeira",45.00,1,1);
INSERT INTO tb_produto
(nomeproduto,qualidadeProduto,precoproduto,kgProduto,idCategoria)
VALUES("Picanha Suína","Primeira",77.65,1,2);
INSERT INTO tb_produto
(nomeproduto,qualidadeProduto,precoproduto,kgProduto,idCategoria)
VALUES("Salmão","Primeira",96.20,1,3);
INSERT INTO tb_produto
(nomeproduto,qualidadeProduto,precoproduto,kgProduto,idCategoria)
VALUES("Peito de frango","Segunda",29.30,1,4);
INSERT INTO tb_produto
(nomeproduto,qualidadeProduto,precoproduto,kgProduto,idCategoria)
VALUES("Filé de cordeiro","Primeira" ,50.00,1,5);

SELECT * FROM tb_produto;

SELECT nomeproduto, precoproduto FROM tb_produto where precoproduto > 50.00;
SELECT nomeproduto, precoproduto FROM tb_produto where precoproduto between 50.00 and 150.00 ;

SELECT nomeproduto FROM tb_produto where nomeproduto LIKE "%C%";

SELECT * FROM tb_produto INNER JOIN tb_Categorias
 ON tb_produto.idCategoria = tb_categorias.idCategoria;
 
 SELECT nomeproduto,nomeCategoria,tb_Categorias.tipoCategoria FROM tb_produto INNER JOIN tb_Categorias 
 ON tb_produto.idCategoria = tb_categorias.idCategoria where tb_Categorias.tipoCategoria = "bovina";
 
