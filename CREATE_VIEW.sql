USE curso;
/*CRIAR VIEW PARA DIMINUIR A QUANTIDADE CÓDIGO E AUMENTAR A SEGURANÇA, A VIEW SERÁ CRIADA A PARTIR DO NOSSO SELECT*/
CREATE VIEW v_pedidostotais
AS
SELECT b.desnome,
SUM(a.vlpedido) AS total, 
CONVERT(AVG(a.vlpedido), DEC(10,2)) AS media,
CONVERT(MIN(a.vlpedido), DEC(10,2)) AS minimo,
CONVERT(MAX(a.vlpedido), DEC(10,2)) AS maximo,
COUNT(*) AS pedidos
FROM tb_pedidos a INNER JOIN tb_pessoas b USING(idpessoa) 
GROUP BY b.idpessoa
ORDER BY pedidos;

/*CONSULTANDO A VIEW CRIADA */
SELECT * FROM v_pedidostotais WHERE total > 7000;


