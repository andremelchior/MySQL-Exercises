CREATE DATABASE atividadeteste;
USE atividadeteste;

CREATE TABLE Funcionarios( 
  CodFunc INT PRIMARY KEY AUTO_INCREMENT, 
  NomeFunc VARCHAR(100) NOT NULL, 
  SexoFunc VARCHAR(1) NOT NULL, 
  BairroFunc VARCHAR(50) NOT NULL, 
  SalFunc DECIMAL(8,2) NOT NULL, 
  SetorFunc VARCHAR(50) NOT NULL 
); 

INSERT INTO Funcionarios 
(NomeFunc,SexoFunc,BairroFunc,SalFunc,SetorFunc) 
VALUES 
('Larissa Menezes','F','Jabaquara',1200,'Marketing'); 

INSERT INTO Funcionarios 
(NomeFunc,SexoFunc,BairroFunc,SalFunc,SetorFunc) 
VALUES 
('Selma Nunes','F','Grajaú',3800,'Vendas');

INSERT INTO Funcionarios 
(NomeFunc,SexoFunc,BairroFunc,SalFunc,SetorFunc) 
VALUES 
('Leandro Henrique','M','Socorro',2950,'RH');

INSERT INTO Funcionarios 
(NomeFunc,SexoFunc,BairroFunc,SalFunc,SetorFunc) 
VALUES 
('Amelia Jeremias','F','Socorro',4200,'Marketing');

INSERT INTO Funcionarios 
(NomeFunc,SexoFunc,BairroFunc,SalFunc,SetorFunc) 
VALUES 
('Cláudio Jorge Silva','M','Jabaquara',1480,'Vendas');

INSERT INTO Funcionarios 
(NomeFunc,SexoFunc,BairroFunc,SalFunc,SetorFunc) 
VALUES 
('Luciano Souza','M','Pedreira',1000,'Vendas');

INSERT INTO Funcionarios 
(NomeFunc,SexoFunc,BairroFunc,SalFunc,SetorFunc) 
VALUES 
('Gabriela Santos Nunes','F','Jurubatuba',4150,''); 

INSERT INTO Funcionarios 
(NomeFunc,SexoFunc,BairroFunc,SalFunc,SetorFunc)
VALUES 
('Rafaela Vieira Jr','F','Jabaquara',700,'Marketing'); 

INSERT INTO Funcionarios 
(NomeFunc,SexoFunc,BairroFunc,SalFunc,SetorFunc) 
VALUES 
('Suzana Crispim','F','Grajaú',5600,'Produção');

INSERT INTO Funcionarios 
(NomeFunc,SexoFunc,BairroFunc,SalFunc,SetorFunc) 
VALUES 
('Sabrina Oliveira Castro','F','Pedreira',2900,'Marketing');

INSERT INTO Funcionarios 
(NomeFunc,SexoFunc,BairroFunc,SalFunc,SetorFunc) 
VALUES 
('Jarbas Silva Nunes','M','Jurubatuba',5300,'Produção');

INSERT INTO Funcionarios 
(NomeFunc,SexoFunc,BairroFunc,SalFunc,SetorFunc) 
VALUES 
('Ralf Borges','M','Jabaquara',1600,'Marketing');

DESC funcionarios;

SELECT * FROM funcionarios;

/*Respostas BD*/

SELECT SUM(SalFunc) AS Total_Salario FROM Funcionarios; /* 01 */


SELECT NomeFunc FROM Funcionarios 
WHERE BairroFunc = 'Jabaquara' 
AND SalFunc = (SELECT MIN(SalFunc) FROM Funcionarios); /* 02 */

SELECT * FROM Funcionarios
WHERE SalFunc = (SELECT MAX(SALFUNC) FROM Funcionarios); /* inverso da 02 */

SELECT NomeFunc, SalFunc FROM Funcionarios ORDER BY SalFunc; /* Consulta para confirmar resultado da 02 */


SELECT AVG(SalFunc) AS media FROM Funcionarios 
WHERE BairroFunc = 'Jurubatuba' OR 'Grajaú'
AND SexoFunc = 'F' AND NomeFunc LIKE '%Nunes'; /* 03 */

SELECT AVG(SalFunc) FROM Funcionarios 
WHERE NomeFunc LIKE '%Nunes'
AND BairroFunc = 'Jurubatuba' OR 'Grajaú'
AND SexoFunc = 'F'; /* Outra forma de fazer a 03 */


SELECT COUNT(*) AS Quantitativo FROM Funcionarios 
WHERE SetorFunc = 'Marketing'; /* 04 */

SELECT NomeFunc, SetorFunc FROM Funcionarios 
WHERE SetorFunc = 'Marketing'; /* Consulta para confirmar resultado da 04 */


SELECT AVG(SalFunc) AS media_salario FROM Funcionarios; /* 05 */


SELECT COUNT(*) AS Quantitativo FROM Funcionarios 
WHERE SalFunc < 3000
AND BairroFunc = 'Socorro'; /* 06 */

SELECT NomeFunc, SalFunc FROM Funcionarios 
WHERE BairroFunc = 'Socorro' 
AND SalFunc < 3000; /* Consulta para confirmar resultado da 06 */


SELECT SUM(SalFunc) AS Soma_Salario FROM Funcionarios
WHERE BairroFunc = 'Socorro'; /* 07 */


SELECT SUM(SalFunc) AS Soma_Salario FROM Funcionarios
WHERE SalFunc > 1000
AND BairroFunc = 'Pedreira'; /* 08 */

SELECT NomeFunc, SalFunc FROM Funcionarios 
WHERE BairroFunc = 'Pedreira'; /* Consulta para confirmar resultado da 08 */
