/*MUDANDO O DELIMITADOR PARA $$ COM A FINALIDADE DE EVITAR CONFLITO NA PROCEDURE*/
DELIMITER $$
/*CRIA A PROCEDURE sp_pessoa_save E INDICA OS PARAMETROS RECEBIDOS*/
CREATE PROCEDURE sp_pessoa_save (
	pdesnome VARCHAR(200)
)

/*Declara o que a procedure fará com os dados recebidos*/
BEGIN
	INSERT INTO tb_pessoas VALUES(NULL,pdesnome,NULL);
    
    SELECT * FROM tb_pessoas WHERE idpessoa = LAST_INSERT_ID();
END $$
/*ENCERRA A PROCEDURE E RETORNA O DELIMITADOR PARA ;*/
DELIMITER ;
/*CHAMA A PROCEDURE*/
CALL sp_pessoa_save("Jotaro");



/* ## SEGUNDA PROCEDURE ## */

DELIMITER $$
/*CRIA PROCEDURE sp_funcionario_save COM 3 PARAMETROS*/
CREATE PROCEDURE sp_funcionario_save (
	pdesnome VARCHAR(200),
    pvsalario DECIMAL(10,2),
    pdtadmissao DATETIME
)
BEGIN
	/*DECLARA VARIAVEL vidpessoa*/
    DECLARE vidpessoa INT;
    
    START TRANSACTION;
    /*INICIA CONDICIONAL VERIFICA SE NÃO EXISTE UM USUARIO COM ESTE NOME E INSERE NO BANCO*/
    IF NOT EXISTS(SELECT idpessoa FROM tb_pessoas WHERE desnome = pdesnome) THEN
		INSERT INTO tb_pessoas VALUES(NULL, pdesnome, NULL);
        /*DECLARA O vidpessoa COMO ULTIMO ID INSERIDO*/
        SET vidpessoa = LAST_INSERT_ID();
	ELSE
    /*SE JÁ EXISTIR UM USUARIO ELE RETORNA A MENSAGEM DE USER CADASTRADO*/
		SELECT   'Usuario Já Cadastrado!' AS 'resultado';
        ROLLBACK;
        /*FIM DO IF*/
	END IF;
        /*INICIA CONDICIONAL VERIFICA SE NÃO EXISTE UM USUARIO COM ESTE ID E INSERE NO BANCO*/
    IF NOT EXISTS(SELECT idpessoa FROM tb_funcionarios WHERE idpessoa = vidpessoa) THEN
		INSERT INTO tb_funcionarios VALUES(NULL, vidpessoa, pvsalario, pdtadmissao);
	ELSE
        /*SE JÁ EXISTIR UM USUARIO ELE RETORNA A MENSAGEM DE USER CADASTRADO*/
		SELECT   'Usuario Cadastrado!' AS 'resultado';
        /*DESFAZ AS AÇÕES ANTERIORES*/
        ROLLBACK;
	END IF;  
    /*SALVA AS AÇÕES REALIZADAS PELA SP*/
    COMMIT;
    /*RETORNA PARA O USER*/
    SELECT 'Dados cadastrados' AS 'resultado';
    
END $$

DELIMITER ;
/*CHAMA PROCEDURE*/
CALL sp_funcionario_save('Bradock2', 5000.00, CURRENT_DATE());
