CREATE DATABASE Livraria;

USE Livraria;

CREATE TABLE LIVROS(
NomeLivro VARCHAR(50),
NomeAutor VARCHAR(50), 
SexoAutor CHAR(1),
NumeroP CHAR(10),
NomeEditora VARCHAR(50),
ValorLivro DECIMAL(6,2),
UF CHAR(2),
AnoPublicacao INT
);

INSERT INTO LIVROS VALUES('Cavaleiro Real', 'Ana Claudia', 'F', '465', 'Atlas', 49.9, 'RJ', 2009);
INSERT INTO LIVROS VALUES('SQL para leigos', 'Jo�o Nunes', 'M', '450', 'Addison', 98, 'SP', 2018);
INSERT INTO LIVROS VALUES('Receitas Caseiras', 'Celia Tavares', 'F', '210', 'Atlas', 45, 'RJ', 2008);
INSERT INTO LIVROS VALUES('Pessoas Efetivas', 'Eduardo Santos', 'M', '390', 'Beta', 78.99,'RJ',2018);
INSERT INTO LIVROS VALUES('Habitos Saud�veis', 'Eduardo Santos', 'M', '630','Beta',150.98,'RJ', 2019);
INSERT INTO LIVROS VALUES('A Casa Marrom', 'Hermes Macedo', 'M', '250','Bubba',60, 'MG', 2016);
INSERT INTO LIVROS VALUES('Estacio Querido', 'Geraldo Francisco', 'M', '310', 'Insignia', 100, 'ES', 2015);
INSERT INTO LIVROS VALUES('Pra sempre amigas', 'Leda Silva', 'F', '510', 'Insignia', 78.98, 'ES', 2011);
INSERT INTO LIVROS VALUES('Copas inesqueciveis', 'Marco Alcantara', 'M', '200', 'Larson', 130.98,'RS', 2018);
INSERT INTO LIVROS VALUES('O poder da mente', 'Clara Mafra','F','120', 'Continental',56.58,'SP',2017);

/* TRAZER TODOS OS DADOS */
SELECT * FROM LIVROS;

/* TRAZER O NOME DO LIVRO E O NOME DA EDITORA */
SELECT NOMELIVRO, NOMEEDITORA FROM LIVROS;

/* TRAZER O NOME DO LIVRO E A UF DOS LIVROS PUBLICADOS POR AUTORES DO SEXO MASCULINO*/
SELECT NOMELIVRO, UF FROM LIVROS
WHERE SEXOAUTOR = 'M';

/* TRAZER O NOME DO LIVRO E O NUMERO DE PAGINAS DOS LIVROS PUBLICADOS POR AUTORES DO SEXO FEMININO*/
SELECT NOMELIVRO, NumeroP FROM LIVROS
WHERE SEXOAUTOR = 'F';

/* TRAZER OS VALORES DOS LIVROS DAS EDITORAS DE SAO PAULO*/
SELECT VALORLIVRO FROM LIVROS
WHERE UF LIKE '%SP%';

/* TRAZER OS DADOS DOS AUTORES DO SEXO MASCULINO QUE TIVEREM LIVROS PUBLICADOS POR SAO PAULO OU RIO DE JANEIRO*/
SELECT NOMEAUTOR, SEXOAUTOR, UF FROM LIVROS
WHERE SEXOAUTOR = 'M' AND UF = 'SP' OR UF = 'RJ';