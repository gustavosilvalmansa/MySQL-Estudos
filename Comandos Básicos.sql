CREATE TABLE curso;

USE curso;

CREATE TABLE clientes(
	id INT,
	nome VARCHAR(100)
);

INSERT INTO clientes VALUES(1,'Gustavo Almansa');

INSERT INTO clientes(nome,id) VALUES('Gustavo Almansa2', 2);

SELECT * FROM clientes;