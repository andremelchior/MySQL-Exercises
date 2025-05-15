CREATE DATABASE prova;

USE prova;


CREATE TABLE brinquedo(
    Cod_brin int not null auto_increment primary key,
    Nome_brin varchar(30) not null,
    Idade_brinc int not null,
    QTd_brin int not null,
    Valor_brinc decimal(10,2) not null
);

SHOW tables;

DESC brinquedo;

INSERT INTO brinquedo VALUES
(1,'Amiguinha',7,100,150.00),
(2,'Bebê Balancinho',3,200,30.00),
(3,'Bebê Chuverinho',3,50,25.00),
(4,'Bolinha de Sabão',5,40,30.00),
(5,'Emília', 2,70,60.00),
(6,'Hora do Papá',1,50,50.00),
(7,'Frutinha Chaveirinho',2,30,20.00),
(8,'Banco Imobiliário',10,10,100.00),
(9,'Cai não Cai',3,15,35.00),
(10,'Cara a Cara',4,16,28.00),
(11,'Cilada',10,17,25.00),
(12,'Combate',7,19,40.00),
(13,'Detetive',7,20,50.00),
(14,'A Galinha Magricela',7,21,9.00),
(15,'Puxa Puxa Batatinha',2,22,150.00),
(16,'Robô baby',2,23,150.00),
(17,'Action Man',3,26,150.00),
(18,'Batcicle',5,30,180.00),
(19,'Batman',3,40,50.00),
(20,'Superman',4,50,50.00),
(21,'Maga Patalógica',4,66,100.00),
(22,'Paty Gatinha',30,80,20.00),
(23,'Goleiro Maluco',5,92,20.00),
(24,'Bichinhos do Bebê',6,100,20.00),
(25,'Caixa-Encaixa',7,200,35.00),
(26,'Guitarrinha do Bebê',4,200,80.00),
(27,'Sr. e Sra. Cabeça de Batata',6,300,150.00),
(28,'Ponteirinho',4,100,50.00),
(29,'BateCar',5,200,30.00),
(30,'CapotCar',5,200,30.00);


#1
UPDATE brinquedo
SET Valor_brinc = Valor_brinc+10;

#2
UPDATE brinquedo
SET Valor_brinc = Valor_brinc * 1.1
WHERE Nome_brin LIKE 'c%';

#3
UPDATE brinquedo
SET QTd_brin = QTd_brin + 10
WHERE Valor_brinc < 50.00;

#4
UPDATE brinquedo
SET Idade_brinc = Idade_brinc - 1
WHERE Nome_brin LIKE '%Bebê%';

#5
UPDATE brinquedo
SET Idade_brinc = Idade_brinc - 1
AND Valor_brinc = Valor_brinc + 20
WHERE Nome_brin LIKE '%Galinha%';

#6
UPDATE brinquedo
SET Valor_brinc = Valor_brinc + 5
WHERE Nome_brin LIKE '%batat%'
OR Nome_brin LIKE '%batatinha%';

#7
UPDATE brinquedo
SET Valor_brinc = Valor_brinc + 20
AND QTd_brin = QTd_brin - 5
AND Idade_brinc = Idade_brinc + 1
WHERE Valor_brinc <= 30.00 
AND QTd_brin >=100 
AND Nome_brin LIKE 'B%';