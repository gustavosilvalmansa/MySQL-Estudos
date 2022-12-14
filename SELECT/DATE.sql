/*DIFERENTES MANEIRAS DE PESQUISAR A DATA NO MYSQL*/
SELECT * FROM tb_funcionarios WHERE cadastro >= '2022-10-20 12:42:39';
SELECT * FROM tb_funcionarios WHERE cadastro >= '2022/10/20 12:42:39';
SELECT * FROM tb_funcionarios WHERE cadastro >= '2022.10.20 12:42:39';
SELECT * FROM tb_funcionarios WHERE cadastro >= '20221020124239';


/*VERIFICA A DIFERENÇA ENTRE A admissao E A DATA ATUAL QUANDO O id FOR = 2*/
SELECT DATEDIFF(admissao, CURRENT_DATE()) AS "DIFERENÇA DE DIAS" FROM tb_funcionarios WHERE id = 2;

/*SELECIONA OS FUNCIONARIOS ADMITIDOS NO MES 10*/
SELECT * FROM tb_funcionarios WHERE MONTH(admissao) = 10;
