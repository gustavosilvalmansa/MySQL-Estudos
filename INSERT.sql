/*COMANDO INSERT */
INSERT INTO tb_funcionarios VALUES(1,"Gustav","4999.00","2016-01-01", "M", NULL);

INSERT INTO tb_funcionarios(id, nome, salario, admissao, sexo) VALUES(2,"Gustavo2","8999.00","2022-10-01", "M");

INSERT INTO tb_funcionarios(nome, salario, admissao, sexo) VALUES("Gustavo1","8999.00","2022-10-01", "M"),("Gustavo2","5400.00","2022-10-01", "M"),("Gustavo3","8000.00","2022-10-01", "M");


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