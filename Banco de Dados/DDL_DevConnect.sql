-- DDL

CREATE DATABASE db_DevConnect;

USE db_DevConnect;

CREATE TABLE tb_usuario(
	id INT IDENTITY ( 1, 1 ) PRIMARY KEY

	,nome_completo NVARCHAR ( 255 ) NOT NULL
	,nome_usuario NVARCHAR ( 255 ) NOT NULL
	,email NVARCHAR ( 100 ) NOT NULL UNIQUE
	,senha NVARCHAR ( 20 ) NOT NULL
	,foto_url NVARCHAR ( 255 ) NOT NULL
);

SELECT * FROM tb_usuario;

CREATE TABLE tb_publicacao (
	id INT IDENTITY ( 1, 1 ) PRIMARY KEY

	,descricao NVARCHAR ( 255 )
	,imagem_url NVARCHAR ( 255 )
	,data_publi DATE NOT NULL

	,id_usuario INT NOT NULL
	,FOREIGN KEY ( id_usuario ) REFERENCES tb_usuario ( id )
);

SELECT * FROM tb_publicacao;

CREATE TABLE tb_curtidas(
	id INT IDENTITY ( 1, 1 ) PRIMARY KEY

	,id_usuario INT NOT NULL
	,FOREIGN KEY ( id_usuario ) REFERENCES tb_usuario ( id )

	,id_publicacao INT NOT NULL
	,FOREIGN KEY ( id_publicacao ) REFERENCES tb_publicacao ( id )

);

SELECT * FROM tb_curtidas;

CREATE TABLE tb_comentarios(
	id INT IDENTITY ( 1, 1 ) PRIMARY KEY

	,texto NVARCHAR ( 255 )
	,data_publi DATE NOT NULL

	,id_usuario INT NOT NULL
	,FOREIGN KEY ( id_usuario ) REFERENCES tb_usuario ( id )

	,id_publicacao INT NOT NULL
	,FOREIGN KEY ( id_publicacao ) REFERENCES tb_publicacao ( id )

);

SELECT * FROM tb_comentarios;

CREATE TABLE tb_seguir (
	id INT IDENTITY ( 1, 1 ) PRIMARY KEY

	,id_usuario INT NOT NULL
	,FOREIGN KEY ( id_usuario ) REFERENCES tb_usuario ( id )

);

SELECT * FROM tb_seguir;

CREATE TABLE tb_seguido(
	id INT IDENTITY ( 1, 1 ) PRIMARY KEY

	,id_usuario INT NOT NULL
	,FOREIGN KEY ( id_usuario ) REFERENCES tb_usuario ( id )

);

SELECT * FROM tb_seguir;

CREATE TABLE tb_seguir_seguido(
	id_seguir INT NOT NULL,
	id_seguido INT NOT NULL,
	
	PRIMARY KEY ( id_seguir, id_seguido )

);

SELECT * FROM tb_seguir_seguido;