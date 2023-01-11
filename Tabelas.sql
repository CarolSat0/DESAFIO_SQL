CREATE DATABASE desafio;

USE desafio;

CREATE SCHEMA producao;

CREATE TABLE producao.tipo_produto
(
	cd_tipo_produto INT			NOT NULL	PRIMARY KEY		IDENTITY(1,1)
,	nm_tipo_produto	VARCHAR(50) NOT NULL
);

CREATE TABLE producao.avaliacao
(
	cd_avaliacao	VARCHAR(2)	NOT NULL	PRIMARY KEY
,	nm_avaliacao	VARCHAR(50)	NOT NULL
);

CREATE TABLE producao.inspetor
(
	cd_inspetor			INT			NOT NULL PRIMARY KEY	IDENTITY(1,1)
,	nm_inspetor			VARCHAR(50) NOT NULL
);

CREATE TABLE producao.produto
(
	cd_produto			INT			NOT NULL	PRIMARY KEY	IDENTITY(1,1)
,	cd_linha_producao	INT			NOT NULL
,	aa_producao			DATETIME	NOT NULL
);

CREATE TABLE producao.ficha
(
	cd_ficha	INT			NOT NULL	PRIMARY KEY		IDENTITY(1,1)
,	cd_inspetor	INT			NOT NULL
,	dt_inspecao	DATETIME	NOT NULL
	FOREIGN KEY(cd_inspetor)	REFERENCES	producao.inspetor(cd_inspetor)
);

CREATE TABLE producao.inspecao
(
	cd_inspecao			INT			NOT NULL	PRIMARY KEY		IDENTITY(1,1)
,	cd_produto			INT			NOT NULL
,	cd_ficha			INT			NOT NULL
,	cd_tipo_produto		INT			NOT NULL
,	cd_avaliacao		VARCHAR(2)	NOT NULL
,	hr_inspecao			DATETIME
	FOREIGN KEY(cd_produto)			REFERENCES	producao.produto(cd_produto)
,	FOREIGN KEY(cd_ficha)			REFERENCES	producao.ficha(cd_ficha)
,	FOREIGN KEY(cd_tipo_produto)	REFERENCES	producao.tipo_produto(cd_tipo_produto)
,	FOREIGN KEY(cd_avaliacao)		REFERENCES	producao.avaliacao(cd_avaliacao)
);
                                                            