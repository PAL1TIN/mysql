create database Banco;
use Banco;

CREATE TABLE Agencia (
    num_agencia INT NOT NULL,
    nome VARCHAR(45) NOT NULL,
    cidade VARCHAR(45) NOT NULL,
	
    constraint pk_Agencia primary key(num_agencia) 
    );

CREATE TABLE Cliente (
    cpf_cliente INT NOT NULL,
    nome VARCHAR(45) NOT NULL,
    cidade VARCHAR(45) NOT NULL,
    constraint pk_Cliente primary key(cpf_cliente) 
);

CREATE TABLE Conta (
    num_conta INT NOT NULL,
    num_agencia INT NOT NULL,
    cpf_cliente INT NOT NULL,
    saldo DECIMAL(10, 2) NOT NULL,
    FOREIGN KEY (num_agencia) REFERENCES Agencia(num_agencia),
    FOREIGN KEY (cpf_cliente) REFERENCES Cliente(cpf_cliente),
    constraint pk_Conta primary key(num_conta) 
);

INSERT INTO Agencia (num_agencia, nome, cidade) VALUES
(1, 'Cidade Luz', 'Paris'),
(2, 'Cidade Verde', 'Teresina'),
(3, 'Cidade Maravilhosa', 'Rio de Janeiro'),
(4, 'Ilha do Amor', 'São Luís'),
(5, 'Terra do Sol', 'Natal');

INSERT INTO Cliente (cpf_cliente, nome, cidade) VALUES
(123, "Jean Marie", 'Paris'),
(234, 'Chico da Silva', 'Teresina'),
(345, 'Maria de Deus', 'Teresina'),
(456, 'João Santana', 'São Luís'),
(567, 'Pedro dos Anjos', 'Natal'),
(789, 'Angelina Jolie', 'Paris'),
(367, 'Zé da Roça', 'Rio de Janeiro'),
(233, 'Julião Santos', 'São Luís'),
(890, 'Raimundo Danio', 'São Luís');


INSERT INTO Conta (num_conta, cpf_cliente, num_agencia, saldo) VALUES
(1, 123, 1, 1000.00),
(2, 234, 2, 2000.00),
(3, 345, 2, 1500.00),
(4, 567, 4, 2500.00),
(5, 789, 3, 2800.00),
(6, 367, 3, 1500.00),
(7, 233, 4, 2500.00),
(8, 890, 4, 1500.00),
(9, 233, 5, 1450.00),
(10, 890, 5, 1800.00),
(11, 567, 2, 1000.00);

SELECT nome FROM Agencia;
SELECT nome, cidade FROM Agencia;
SELECT num_conta, cpf_cliente FROM Conta WHERE saldo > 2000.00;
SELECT cpf_cliente, nome FROM Cliente WHERE cidade = 'Teresina';
