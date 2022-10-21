USE curso;
 
CREATE TABLE tb_pedidos(
	idpedido INT AUTO_INCREMENT NOT NULL, 
    idpessoa INT NOT NULL,
    dtpedido DATETIME NOT NULL,
    vlpedido DEC(10,2) NOT NULL,
    CONSTRAINT PK_pedidos PRIMARY KEY (idpedido),
    CONSTRAINT  FK_pedidos_pessoas FOREIGN KEY(idpessoa)
		REFERENCES tb_pessoas(idpessoa)
);

INSERT INTO tb_pedidos (idpessoa,dtpedido,vlpedido)VALUES(1,CURRENT_DATE(), 2000.00);
INSERT INTO tb_pedidos (idpessoa,dtpedido,vlpedido)VALUES(1,CURRENT_DATE(), 3000.00);
INSERT INTO tb_pedidos (idpessoa,dtpedido,vlpedido)VALUES(1,CURRENT_DATE(), 4000.00);
INSERT INTO tb_pedidos (idpessoa,dtpedido,vlpedido)VALUES(1,CURRENT_DATE(), 1000.00);

INSERT INTO tb_pedidos (idpessoa,dtpedido,vlpedido)VALUES(2,CURRENT_DATE(), 1999.99);
INSERT INTO tb_pedidos (idpessoa,dtpedido,vlpedido)VALUES(2,CURRENT_DATE(), 157.33);
INSERT INTO tb_pedidos (idpessoa,dtpedido,vlpedido)VALUES(2,CURRENT_DATE(), 123.45);

INSERT INTO tb_pedidos (idpessoa,dtpedido,vlpedido)VALUES(4,CURRENT_DATE(), 40000.99);


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
