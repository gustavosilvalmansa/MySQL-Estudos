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