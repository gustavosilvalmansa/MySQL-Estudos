/*ATUALIZA O SALARIO EM 20%(SALARIO = SALARIO * 1.2) DO USUARIO DA TABELA tb_funcionarios QUE POSSUI O id = 2*/
UPDATE tb_funcionarios SET salario = salario* 1.2 WHERE id="2";

/*ATUALIZA A TABELA tb_funcionarios AUMENTANDO O salario EM 20% QUANDO O sexo FOR = "F"*/
UPDATE tb_funcionarios SET salario = salario * 1.2 WHERE sexo = "F";

/*ATUALIZE A admissao DOS FUNCIONARIOS PARA A DATA ATUAL QUANDO O id FOR = 2*/
UPDATE tb_funcionarios SET admissao = CURRENT_DATE() WHERE id = 2 ;

/*ATUALIZE A admissao DOS FUNCIONARIOS PARA A 60 DIAS A FRENTE QUANDO O id FOR = 2*/
UPDATE tb_funcionarios SET admissao = DATE_ADD(CURRENT_DATE(), INTERVAL 60  DAY) WHERE id = 2 ;