/*CONSULTANDO TODOS OS USUÁRIOS CADASTRADOS*/
SELECT * FROM tb_funcionarios;

/*SELECIONA O salario COMO atual E salario O SALARIO COM AUMENTO DE 20%*/
SELECT nome,salario AS atual,
salario * 1.2 AS "salario com aumento de 20%"
FROM tb_funcionarios;

/*SELECIONA O salario COMO atual E SIMULA O salario COM AUMENTO DE 20%, FORMATANDO PARA DECIMAL*/
SELECT nome,salario AS atual,
CONVERT(salario * 1.2, DEC(10,2)) AS "salario com aumento de 20%"
FROM tb_funcionarios











