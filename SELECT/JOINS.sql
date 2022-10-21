 /* LIGA AS COLUNAS idpessoa DAS TABELAS tb_funcionarios E tb_pessoas*/
 SELECT * FROM tb_funcionarios a 
 INNER JOIN tb_pessoas b ON a.idpessoa = b.idpessoa;
 
  /* LIGA AS COLUNAS idpessoa DAS TABELAS tb_funcionarios E tb_pessoas se ambas tiverem o mesmo nome*/
 SELECT * FROM tb_funcionarios a 
 INNER JOIN tb_pessoas USING(idpessoa);
 
  /* LIGA AS COLUNAS idpessoa DAS TABELAS tb_funcionarios E tb_pessoas E ADICIONA TODOS OS REGISTROS DA TABELA LEFT (tb_pessoas)*/
 SELECT * FROM tb_pessoas a 
 LEFT JOIN tb_funcionarios b ON a.idpessoa = b.idpessoa;
 
   /* LIGA AS COLUNAS idpessoa DAS TABELAS tb_funcionarios E tb_pessoas E ADICIONA TODOS OS REGISTROS DA TABELA RIGHT (tb_funcionarios)*/
 SELECT * FROM tb_pessoas a 
 RIGHT JOIN tb_funcionarios b ON a.idpessoa = b.idpessoa;