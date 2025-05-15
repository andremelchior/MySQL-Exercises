CREATE DATABASE empresa;

USE empresa;

CREATE TABLE cargo(
    Cod_Cargo int not null auto_increment,
    Nome_Cargo varchar(20) not null,
    CONSTRAINT PK_codCargo PRIMARY KEY (Cod_Cargo),
    CONSTRAINT UN_nomeCargo UNIQUE (Nome_Cargo)
);

CREATE TABLE funcionario(
    Cod_Funcionario int not null auto_increment,
    Cod_Cargo int,
    Nome_Func varchar(40) not null,
    Salario_Func decimal(10,2) not null,
    RG_Func char(9) not null,
    CONSTRAINT PK_codFuncionario PRIMARY KEY (Cod_Funcionario),
    CONSTRAINT FK_codCargoFuncionario FOREIGN KEY (Cod_Cargo)
    REFERENCES cargo(Cod_Cargo)
);

INSERT INTO cargo 
VALUES (
	default, 
    "Presidente"
),
(
	default, 
    "Gerente"
),
(
	default, 
    "Supervisor"
),
(
	default, 
    "Revisor"
),
(
	default, 
    "Redator"
);


INSERT INTO funcionario VALUES
						(default, 5, "Luiz Pereira", 3000.00, 27291905),
						(default, 5, "Antonio Almeida", 3000.00, 15970247),
						(default, 3, "Donizete Ribeiro", 2800.00, 27151908),
						(default, 3, "Gabriela Moura", 4700.00, 255279145),
						(default, 2, "Emilio Duarte", 5000.00, 17278246),
						(default, 1, "Carolina Ferreira", 9000.00, 18154578);
                        
SELECT * FROM funcionario;
SELECT * FROM cargo;

SELECT * FROM cargo cg
INNER JOIN funcionario func
ON cg.Cod_Cargo = func.Cod_Cargo;
