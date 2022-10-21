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