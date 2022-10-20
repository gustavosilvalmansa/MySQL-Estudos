/*CONSULTANDO TODOS OS USUÁRIOS CADASTRADOS*/
SELECT * FROM tb_funcionarios;


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


/*DIFERENTES MANEIRAS DE PESQUISAR A DATA NO MYSQL*/
SELECT * FROM tb_funcionarios WHERE cadastro >= '2022-10-20 12:42:39';
SELECT * FROM tb_funcionarios WHERE cadastro >= '2022/10/20 12:42:39';
SELECT * FROM tb_funcionarios WHERE cadastro >= '2022.10.20 12:42:39';
SELECT * FROM tb_funcionarios WHERE cadastro >= '20221020124239';


/*VERIFICA A DIFERENÇA ENTRE A admissao E A DATA ATUAL QUANDO O id FOR = 2*/
SELECT DATEDIFF(admissao, CURRENT_DATE()) AS "DIFERENÇA DE DIAS" FROM tb_funcionarios WHERE id = 2;

/*SELECIONA OS FUNCIONARIOS ADMITIDOS NO MES 10*/
SELECT * FROM tb_funcionarios WHERE MONTH(admissao) = 10;


/*COMANDO LIKE */

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


/*COMANDO BETWEEN*/

/*EXIBE TODOS OS FUNCIONARIOS QUE POSSUAM salario ENTRE 1000 E 3000*/
SELECT * FROM tb_funcionarios WHERE salario BETWEEN 1000 AND 3000;

/*EXIBE TODOS OS FUNCIONARIOS QUE O salario NÃO ESTEJA ENTRE 1000 E 3000*/
SELECT * FROM tb_funcionarios WHERE salario NOT BETWEEN 1000 AND 3000;



/*COMANDO SOUNDEX*/

/*EXIBE TODOS OS FUNCIONARIOS QUE O nome SOE COMO Luis, EXEMPLO = "Luiz"*/
SELECT * FROM tb_funcionarios WHERE SOUNDEX(nome) = SOUNDEX('Luis');


/*COMANDO ORDER BY*/

/* ORDENAR PELO nome*/
SELECT * FROM tb_funcionarios ORDER BY nome;

/* ORDENAR PELA SEGUNDA COLUNA DA TABELA */
SELECT * FROM tb_funcionarios ORDER BY 2;

/* ORDENAR PELO salario*/
SELECT* FROM tb_funcionarios ORDER BY salario;

/* ORDENAR PELO salario EM ORDEM DECRESCENTE*/
SELECT* FROM tb_funcionarios ORDER BY salario DESC;

/* ORDENAR PELO salario EM ORDEM DECRESCENTE E nome EM ORDEM CRESCENTE(ALFABETICA)*/
SELECT* FROM tb_funcionarios ORDER BY salario DESC, nome ASC;

/* ORDENAR PELO salario EM ORDEM CRESCENTE*/
SELECT* FROM tb_funcionarios ORDER BY salario ASC;


/*COMANDO LIMIT*/

/* PEGAR OS 3 PRIMEIROS USUARIOS*/
SELECT* FROM tb_funcionarios LIMIT 0,3;