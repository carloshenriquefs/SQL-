CREATE DATABASE Virus;

USE Virus;

CREATE TABLE Virus1(
IdVirus INT PRIMARY KEY IDENTITY,
NomeV VARCHAR(255) NOT NULL
);

INSERT INTO Virus1 VALUES ('H1RT');
INSERT INTO Virus1 VALUES ('H7H1');
INSERT INTO Virus1 VALUES ('HUN8');
INSERT INTO Virus1 VALUES ('XH1HX');
INSERT INTO Virus1 VALUES ('XXXX');

SELECT * FROM Virus1;

SELECT REPLACE('H1RT', 'H1', 'X') AS Senha FROM Virus1;
SELECT REPLACE('H7H1', 'H1', 'X') AS Senha FROM Virus1;
SELECT REPLACE('XH1HX', 'H1', 'X') AS Senha FROM Virus1;

SELECT REPLACE('H1RT', 'H1', 'X') AS Senha, 
REPLACE('H7H1', 'H1', 'X') AS Senha, 
REPLACE('XH1HX', 'H1', 'X') AS Senha FROM Virus1;