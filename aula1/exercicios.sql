CREATE DATABASE LIVROS;
USE LIVROS;

CREATE TABLE LIVROS (
    NOME_DO_LIVRO VARCHAR(30),
    NOME_DO_AUTOR VARCHAR(30),
    SEXO_DO_AUTOR VARCHAR(30),
    NUMERO_DE_PAGINAS INT(6),
    NOME_DA_EDITORA VARCHAR(30),
    VALOR_DO_LIVRO FLOAT(10,2),
    UF_DA_EDITORA CHAR (2),
    ANO_PUBLICADO INT (6)
);

INSERT INTO LIVROS (NOME_DO_LIVRO, NOME_DO_AUTOR, SEXO_DO_AUTOR, NUMERO_DE_PAGINAS, NOME_DA_EDITORA, VALOR_DO_LIVRO, UF_DA_EDITORA, ANO_PUBLICADO)
VALUES ('Cavaleiro Real', 'Ana Claudia', 'Feminino', 465, 'Atlas', 49.9, 'RJ', 2009);

INSERT INTO LIVROS (NOME_DO_LIVRO, NOME_DO_AUTOR, SEXO_DO_AUTOR, NUMERO_DE_PAGINAS, NOME_DA_EDITORA, VALOR_DO_LIVRO, UF_DA_EDITORA, ANO_PUBLICADO)
VALUES ('SQL para leigos', 'João Nunes', 'Masculino', 450, 'Addison', 98, 'SP', 2018);

INSERT INTO LIVROS (NOME_DO_LIVRO, NOME_DO_AUTOR, SEXO_DO_AUTOR, NUMERO_DE_PAGINAS, NOME_DA_EDITORA, VALOR_DO_LIVRO, UF_DA_EDITORA, ANO_PUBLICADO)
VALUES ('Receitas Caseiras', 'Celia Tavares', 'Feminino', 210, 'Atlas', 45, 'RJ', 2008);

INSERT INTO LIVROS (NOME_DO_LIVRO, NOME_DO_AUTOR, SEXO_DO_AUTOR, NUMERO_DE_PAGINAS, NOME_DA_EDITORA, VALOR_DO_LIVRO, UF_DA_EDITORA, ANO_PUBLICADO)
VALUES ('Pessoas Efetivas', 'Eduardo Santos', 'Masculino', 390, 'Beta', 78.99, 'RJ', 2018);

INSERT INTO LIVROS (NOME_DO_LIVRO, NOME_DO_AUTOR, SEXO_DO_AUTOR, NUMERO_DE_PAGINAS, NOME_DA_EDITORA, VALOR_DO_LIVRO, UF_DA_EDITORA, ANO_PUBLICADO)
VALUES ('Hábitos Saudáveis', 'Eduardo Santos', 'Masculino', 630, 'Beta', 150.98, 'MG', 2019);

INSERT INTO LIVROS (NOME_DO_LIVRO, NOME_DO_AUTOR, SEXO_DO_AUTOR, NUMERO_DE_PAGINAS, NOME_DA_EDITORA, VALOR_DO_LIVRO, UF_DA_EDITORA, ANO_PUBLICADO)
VALUES ('A Casa Marrom', 'Hermes Macedo', 'Masculino', 250, 'Bubba', 60, 'ES', 2016);

INSERT INTO LIVROS (NOME_DO_LIVRO, NOME_DO_AUTOR, SEXO_DO_AUTOR, NUMERO_DE_PAGINAS, NOME_DA_EDITORA, VALOR_DO_LIVRO, UF_DA_EDITORA, ANO_PUBLICADO)
VALUES ('Estácio Querido', 'Geraldo Francisco', 'Masculino', 310, 'Insignia', 100, 'ES', 2015);

INSERT INTO LIVROS (NOME_DO_LIVRO, NOME_DO_AUTOR, SEXO_DO_AUTOR, NUMERO_DE_PAGINAS, NOME_DA_EDITORA, VALOR_DO_LIVRO, UF_DA_EDITORA, ANO_PUBLICADO)
VALUES ('Pra sempre amigas', 'Leda Silva', 'Feminino', 510, 'Insigna', 78.98, 'RJ', 2011);

INSERT INTO LIVROS (NOME_DO_LIVRO, NOME_DO_AUTOR, SEXO_DO_AUTOR, NUMERO_DE_PAGINAS, NOME_DA_EDITORA, VALOR_DO_LIVRO, UF_DA_EDITORA, ANO_PUBLICADO)
VALUES ('Copas Inesqueciveis', 'Marco Alcantara', 'Masculino', 200, 'Larson', 130.98, 'RS', 2018);

INSERT INTO LIVROS (NOME_DO_LIVRO, NOME_DO_AUTOR, SEXO_DO_AUTOR, NUMERO_DE_PAGINAS, NOME_DA_EDITORA, VALOR_DO_LIVRO, UF_DA_EDITORA, ANO_PUBLICADO)
VALUES ('O poder da mente', 'Clara Mafra', 'Feminino', 120, 'Continental', 56.58, 'SP', 2017);

/* TRAZER TODOS OS DADOS*/
SELECT * FROM LIVROS;

/* TRAZER O NOME DO LIVRO E O NOME DA EDITORA */
SELECT NOME_DO_LIVRO, NOME_DA_EDITORA FROM LIVROS;

/* TRAZER O NOME DO LIVRO E A UF DOS LIVROS PUBLICADOS POR AUTORES DO SEXO MASCULINO*/
SELECT NOME_DO_LIVRO, UF_DA_EDITORA FROM LIVROS
WHERE SEXO_DO_AUTOR = 'FEMININO';

/* TRAZER O NOME DO LIVRO E O NÚMERO DE PAGINAS DOS LIVROS PUBLICADOS POR AUTORES FEMININOS */
SELECT NOME_DO_LIVRO, NUMERO_DE_PAGINAS FROM LIVROS
WHERE SEXO_DO_AUTOR = 'FEMININO';

/* TRAZER OS VALORES DOS LIVROS DAS EDITORAS DE SÃO PAULO*/
SELECT NOME_DO_LIVRO, VALOR_DO_LIVRO
FROM LIVROS 
WHERE UF_DA_EDITORA = 'SP'; 

SELECT UF_DA_EDITORA, VALOR_DO_LIVRO
FROM LIVROS
WHERE UF_DA_EDITORA = 'SP';

/* TRAZER OS DADOS DOS AUTORES DO SEXO MASCULINO QUE TIVERAM LIVROS PUBLICADOS POR SÃO PAULO OU RIO DE JANEIRO */
SELECT NOME_DO_AUTOR, SEXO_DO_AUTOR, UF_DA_EDITORA
FROM LIVROS
WHERE SEXO_DO_AUTOR = 'MASCULINO'
AND UF_DA_EDITORA = 'SP' 
OR UF_DA_EDITORA = 'RJ';
