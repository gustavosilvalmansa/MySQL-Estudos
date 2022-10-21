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
