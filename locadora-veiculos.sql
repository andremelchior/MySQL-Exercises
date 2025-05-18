CREATE DATABASE Locadora;

SHOW DATABASES;

USE Locadora;

CREATE TABLE Clientes(
  Cod_Cliente bigint not null auto_increment primary key,
  Nome varchar(20) not null,
  Sobrenome varchar(30) not null,
  Sexo char(1) not null,
  Data_Nasc date not null,
  RG varchar(11) not null,
  CPF bigint not null,
  Habilitacao varchar(10) not null,
  UNIQUE(cpf)
);

CREATE TABLE Funcionario(
  Cod_Funcionario bigint not null auto_increment primary key,
  Nome varchar(20) not null,
  Sobrenome varchar(30) not null,
  Sexo char(1) not null,
  CPF bigint not null,
  Salario decimal(10,2) not null,
  Data_Admissao date,
  UNIQUE(cpf)
);

CREATE TABLE Endereco(
  Cod_End bigint not null auto_increment primary key,
  UF char(2) not null,
  Cidade varchar(30) not null,
  Bairro varchar(20) not null,
  Logradouro varchar(45) not null,
  Numero int(4) not null,
  Complemento varchar(30),
  CEP int not null
);

CREATE TABLE Telefone(
  Cod_Telefone bigint not null auto_increment primary key,
  Numero_Tel bigint not null
  DDD int not null
);

CREATE TABLE Locacao(
  Cod_Locacao bigint not null auto_increment primary key,
  Func_Locador varchar(60) not null,
  Veiculo_Locado int not null,
  Tipo_Pagamento varchar(30) not null,
  Valor decimal(10,2) not null,
  Hora_Data datetime 
);

CREATE TABLE Veiculo(
  Cod_Veiculo bigint not null auto_increment primary key,
  Marca varchar(45) not null,
  Ano int(4) not null,
  Quilometragem decimal(10,2),
  Placa varchar(7) not null
);

#Relacionamentos:

ALTER TABLE Telefone ADD cod_cliente int;
ALTER TABLE Telefone ADD FOREIGN KEY (cod_cliente) REFERENCES Clientes(cod_cliente);
ALTER TABLE Telefone ADD cod_funcionario int;
ALTER TABLE Telefone ADD FOREIGN KEY (cod_funcionario) REFERENCES Funcionario(cod_funcionario);
ALTER TABLE Funcionario ADD cod_cliente int;
ALTER TABLE Funcionario ADD FOREIGN KEY (cod_cliente) REFERENCES Clientes(cod_cliente);
ALTER TABLE Endereco ADD cod_cliente int;
ALTER TABLE Endereco ADD cod_funcionario int;
ALTER TABLE Endereco ADD FOREIGN KEY (cod_cliente) REFERENCES Clientes(cod_cliente);
ALTER TABLE Endereco ADD FOREIGN KEY (cod_funcionario) REFERENCES Funcionario(cod_funcionario);
ALTER TABLE Locacao ADD cod_funcionario int;
ALTER TABLE Locacao ADD cod_veiculo int;
ALTER TABLE Locacao ADD FOREIGN KEY (cod_funcionario) REFERENCES Funcionario(cod_funcionario);
ALTER TABLE Locacao ADD FOREIGN KEY (cod_veiculo) REFERENCES veiculo(cod_veiculo);
ALTER TABLE Locacao ADD FOREIGN KEY (Veiculo_Locado) REFERENCES Veiculo(Co
d_Veiculo);
