USE curso;

/* DELETA TABELAS CRIADAS PREVIAMENTE */
DROP TABLE tb_funcionarios;
DROP TABLE tb_pessoa;

/*CRIA TABELA tb_pessoas COM PK*/
CREATE TABLE tb_pessoas(
	idpessoa INT AUTO_INCREMENT NOT NULL,
    desnome VARCHAR(200) NOT NULL,
    dtcadastro TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP(),
    CONSTRAINT PK_pessoas PRIMARY KEY (idpessoa)
)ENGINE = InnoDB;


/*CRIA tb_funcionarios com PK e FK VINDA DE tb_pessoas*/
CREATE TABLE tb_funcionarios(
	idfuncionario INT AUTO_INCREMENT NOT NULL,
    idpessoa INT NOT NULL,
    vlsalario DECIMAL(10,2) NOT NULL DEFAULT 1000.00,
    dtadmissao DATE NOT NULL,
    CONSTRAINT PK_funcionarios PRIMARY KEY (idfuncionario),
    CONSTRAINT FK_funcionarios_pessoas FOREIGN KEY (idpessoa)
		REFERENCES tb_pessoas (idpessoa)
);

/*ADICIONA DADOS NAS TABELAS*/
INSERT INTO tb_pessoas (desnome) VALUES ("Gustavo Almansa");
INSERT INTO tb_funcionarios (idpessoa,vlsalario,dtadmissao) VALUES ("1", "5000.00", CURRENT_DATE());