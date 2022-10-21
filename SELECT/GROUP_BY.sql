/*AGRUPE AS TABELAS tb_pessoas E tb_pedidos USANDO o idpessoa
SUM-> SOMA TODOS OS PEDIDOS
AVG-> CALCULA A MÉDIA
MIN-> PEGA O VALOR MINIMO
MAX-> PEGA O MAIOR VALOR

*/
SELECT b.desnome,
SUM(a.vlpedido) AS total, 
CONVERT(AVG(a.vlpedido), DEC(10,2)) AS media,
CONVERT(MIN(a.vlpedido), DEC(10,2)) AS minimo,
CONVERT(MAX(a.vlpedido), DEC(10,2)) AS maximo,
COUNT(*) AS pedidos
FROM tb_pedidos a INNER JOIN tb_pessoas b USING(idpessoa) GROUP BY b.idpessoa ORDER BY pedidos;