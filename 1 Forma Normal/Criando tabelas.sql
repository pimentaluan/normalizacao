CREATE TABLE CLIENTES(
    COD_CLIENTE VARCHAR(10) NOT NULL,
	NOME VARCHAR(50) NOT NULL,
	EMAIL VARCHAR(50) NOT NULL,
	RUA VARCHAR(50) NOT NULL,
	BAIRRO VARCHAR(50) NOT NULL,
	CIDADE VARCHAR(50) NOT NULL,
	ESTADO VARCHAR(50) NOT NULL,
 PRIMARY KEY (COD_CLIENTE)
);

CREATE TABLE TELEFONES_CLIENTE(
    COD_CLIENTE VARCHAR(10) NOT NULL,
    COD_TELEFONE VARCHAR(10) NOT NULL,
    TELEFONES VARCHAR(15) NOT NULL,
 PRIMARY KEY (COD_TELEFONE)
);

CREATE TABLE LIVROS(
    COD_LIVRO VARCHAR(10) NOT NULL,
	VALOR DECIMAL(5,2) NOT NULL,
	ANO_PUBLICACAO INT NOT NULL,
    CATEGORIA VARCHAR(25) NOT NULL,
    TITULO VARCHAR(50) NOT NULL,
    ISBN INT NOT NULL,
    COD_AUTOR VARCHAR(10) NOT NULL,
    AUTOR VARCHAR(25) NOT NULL,
    EMAIL_AUTOR VARCHAR(50),
	COD_EDITORA VARCHAR(10) NOT NULL,
    TELEFONE_EDITORA VARCHAR(50),
    EMAIL VARCHAR(50),
    NOME_CONTATO_EDITORA VARCHAR(50) NOT NULL,
	QTD_ESTOQUE INT NOT NULL,
 PRIMARY KEY (COD_LIVRO)
);

CREATE TABLE PEDIDOS(
    COD_PEDIDO VARCHAR(10) NOT NULL,
    COD_CLIENTE VARCHAR(20) NOT NULL,
	COD_LIVRO VARCHAR(10) NOT NULL,
    DATA DATE NOT NULL,
	VALOR_PEDIDO DECIMAL(5,2) NOT NULL,
	QTD_PEDIDO INT NOT NULL,
	VALOR_ITENS DECIMAL(5,2) NOT NULL,
 PRIMARY KEY (COD_PEDIDO,COD_LIVRO)
);

CREATE TABLE COLABORADORES (
    COD_COLAB VARCHAR(10) NOT NULL,
    NOME VARCHAR(100) NOT NULL,
    DEPARTAMENTO VARCHAR(50) NOT NULL,
    CARGO VARCHAR(50) NOT NULL,
    SALARIO_BASE DECIMAL(10, 2) NOT NULL,
    DEPENDENTES VARCHAR(50),
    PRIMARY KEY (COD_COLAB)
);

