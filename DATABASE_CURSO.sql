CREATE DATABASE curso;

USE curso;

/* TIPOS DE DADOS USADOS NA TABELA tb_funcionarios
INT -> NUMEROS INTEIROS
VARCHAR -> CARACTERES VARIADOS
DECIMAL -> NUMEROS QUEBRADOS (INTEIRO, CASAS DECIMAIS)
ENUM -> VALIDAS SE O INSERT CONTEM AS OPÇÕES DENTRO DOS PARENTESES ("V", "F")
TIMESTAMP -> CARIMBO DE Tempo
*/
CREATE TABLE tb_funcionarios(
	id INT,
    nome VARCHAR(100),
    salario DECIMAL(10,2),
    admissao DATE,
    sexo ENUM("F" ,"M"),
    cadastro TIMESTAMP DEFAULT CURRENT_TIMESTAMP()
);
/*TIPOS DIFERENTES DE INSERT*/
INSERT INTO tb_funcionarios VALUES(1,"Gustavo","4999.00","2016-01-01", "M", NULL);
INSERT INTO tb_funcionarios(id, nome, salario, admissao, sexo) VALUES(2,"Gustavo2","8999.00","2022-10-01", "M");
INSERT INTO tb_funcionarios(nome, salario, admissao, sexo) VALUES("Gustavo1","8999.00","2022-10-01", "M"),("Gustavo2","5400.00","2022-10-01", "M"),("Gustavo3","8000.00","2022-10-01", "M");

/* DESCREVE A TABELA FUNCIONARIOS ("FIELDS, TYPE, NULL, KEY, DEFAULT, EXTRA")*/
DESCRIBE tb_funcionarios; 

/*CONSULTANDO TODOS OS USUÁRIOS CADASTRADOS*/
SELECT * FROM tb_funcionarios;


/*ATUALIZA O SALARIO EM 20%(SALARIO = SALARIO * 1.2) DO USUARIO DA TABELA tb_funcionarios QUE POSSUI O id = 2*/
UPDATE tb_funcionarios SET salario = salario* 1.2 WHERE id="2";


/*EXCLUI O USUARIO QUE POSSUI O ID = 1*/
DELETE from tb_funcionarios where id ="1";

/*CRIA TABELA PESSOA*/
CREATE table tb_pessoa(
	id INT,
    nome VARCHAR(100),
    sexo ENUM("F","M")
);

/*INSERE LINHAS NA TABELA*/
INSERT INTO tb_pessoa(nome,sexo) VALUES 
("MARCO","M"),
("TIGRINHO","M"),
("RUGA","M"),
("JU","F"),
("JAQUE","F"),
("RITA","F"),
("LU","F");

/*INSERE NA TABELA tb_funcionarios OS DADOS VINDOS DA tb_pessoa
CAMPOS JA EXISTENTES COMO id,nome e sexo PODEMOS PEGAR DO CONTEUDO DA TABELA. 
CAMPOS NÃO EXISTANTES COMO salario, admissao e cadastro UTILIZAMOS FUNCOES OU DEFINIMOS VALOR FIXO
*/
INSERT into tb_funcionarios 
SELECT id,nome, 950.00, CURRENT_DATE(), sexo, NULL FROM tb_pessoa;


/*CONTA O TOTAL DE LINHAS DA TABELA tb_funcionarios*/
SELECT COUNT(*) AS total FROM tb_funcionarios;


/*SELECIONA O salario COMO atual E salario O SALARIO COM AUMENTO DE 20%*/
SELECT nome,salario AS atual,
salario * 1.2 AS "salario com aumento de 20%"
FROM tb_funcionarios;


/*SELECIONA O salario COMO atual E SIMULA O salario COM AUMENTO DE 20%, FORMATANDO PARA DECIMAL*/
SELECT nome,salario AS atual,
CONVERT(salario * 1.2, DEC(10,2)) AS "salario com aumento de 20%"
FROM tb_funcionarios


/*SELECIONA TODOS OS DADOS DA TABELA tb_funcionarios QUANDO O sexo FOR = "F"*/
SELECT * FROM tb_funcionarios WHERE sexo = "F";
/*SELECIONA TODOS OS DADOS DA TABELA tb_funcionarios QUANDO O salario FOR DIFERENTE DE 950.00 */
SELECT * FROM tb_funcionarios WHERE salario <> 950.00;
/* SELECIONA TODOS OS DADOS DA TABELA tb_funcionarios QUANDO O sexo FOR = "M" E O salario MAIOR QUE 9000.00 */
SELECT * FROM tb_funcionarios WHERE sexo ="M" AND salario > 9000.00;
/*SELECIONA TODOS OS DADOS DA TABELA tb_funcionarios QUANDO O salario FOR DIFERENTE DE 950.00 OU O sexo SEJA = "F" */
SELECT * FROM tb_funcionarios WHERE salario <> 950.00 OR sexo ="F";
/*ATUALIZA A TABELA tb_funcionarios AUMENTANDO O salario EM 20% QUANDO O sexo FOR = "F"*/
UPDATE tb_funcionarios SET salario = salario * 1.2 WHERE sexo = "F";

/*nome QUE CONTEM E EM QUALQUER POSICAO*/
SELECT * FROM tb_funcionarios WHERE nome LIKE '%E%';

/*nome QUE COMECE COM G*/
SELECT * FROM tb_funcionarios WHERE nome LIKE 'G%';

/*nome QUE TERMINE COM A*/
SELECT * FROM tb_funcionarios WHERE nome LIKE '%A';

/*nome QUE A TERCEIRA LETRA SEJA G */
SELECT * FROM tb_funcionarios WHERE nome LIKE '__G%';

/*nome QUE NÃO COMECE COM G*/
SELECT * FROM tb_funcionarios WHERE nome NOT LIKE 'G%';