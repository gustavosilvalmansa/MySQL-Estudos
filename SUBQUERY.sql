 /* DELETE BASEADO  NO RESULTADO DA QUERY SELECT */
 DELETE FROM tb_pessoas WHERE idpessoa IN(SELECT idpessoa FROM tb_pessoas WHERE desnome LIKE 'R%');