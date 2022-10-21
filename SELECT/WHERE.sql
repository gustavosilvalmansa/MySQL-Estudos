/*SELECIONA TODOS OS DADOS DA TABELA tb_funcionarios QUANDO O sexo FOR = "F"*/
SELECT * FROM tb_funcionarios WHERE sexo = "F";

/*SELECIONA TODOS OS DADOS DA TABELA tb_funcionarios QUANDO O salario FOR DIFERENTE DE 950.00 */
SELECT * FROM tb_funcionarios WHERE salario <> 950.00;

/* SELECIONA TODOS OS DADOS DA TABELA tb_funcionarios QUANDO O sexo FOR = "M" E O salario MAIOR QUE 9000.00 */
SELECT * FROM tb_funcionarios WHERE sexo ="M" AND salario > 9000.00;

/*SELECIONA TODOS OS DADOS DA TABELA tb_funcionarios QUANDO O salario FOR DIFERENTE DE 950.00 OU O sexo SEJA = "F" */
SELECT * FROM tb_funcionarios WHERE salario <> 950.00 OR sexo ="F";
