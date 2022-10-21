DELIMITER $$
/*CRIAR FUNCAO PARA CONSULTAR IRPF*/
CREATE FUNCTION fn_imposto_renda  (
	pvlsalario DEC (10,2)
)
/*TIPO DE RETORNO DA FUNCAO*/
RETURNS DEC(10,2)
BEGIN
    DECLARE vimposto DECIMAL(10,2);
	/*CALCULA TAXA*/
    SET vimposto = CASE
		WHEN pvlsalario <= 1903.98 THEN 0
        WHEN pvlsalario >= 1903.99 AND pvlsalario <= 2826.85 THEN (pvlsalario * .075)  - 142.80
        WHEN pvlsalario >= 2826.66 AND pvlsalario <= 3751.05 THEN (pvlsalario * .15)  - 354.80
        WHEN pvlsalario >= 3751.06 AND pvlsalario <= 4664.67 THEN (pvlsalario * .22,5)  - 636.13
        WHEN pvlsalario >= 4664.68 THEN (pvlsalario * .275)  - 869.36
    END;
	/*RETORNO DA FUNCAO*/
    RETURN vimposto;
END $$

