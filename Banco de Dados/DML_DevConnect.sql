-- DML

USE db_DevConnect

INSERT INTO tb_usuario ( nome_completo, nome_usuario, email, senha, foto_url )
VALUES
( 'Joao Victor', 'pxthofjv', 'robertofirmino@gmail.com', 'xsjnALJNUD12', 'www.gatito.com.br' ),
( 'Rafael Moura', 'Rara', 'neymarrei@gmail.com', 'kvnjsSJLNL32', 'www.santos.com.br' ),
( 'Ariel Pinheiro', 'Ariba', 'seilateugmail@gmail.com', 'ksdlfnONVFO9', 'www.seila.com.br' );

SELECT * FROM tb_usuario;

INSERT INTO tb_publicacao ( descricao, imagem_url, data_publi, id_usuario )
VALUES
( 'Amo o back-end', 'www.back-end.png', '2025/10/15', 1 );

SELECT * FROM tb_publicacao;

INSERT INTO tb_curtidas ( id_usuario, id_publicacao )
VALUES
( 3, 1 );

SELECT * FROM tb_curtidas;

INSERT INTO tb_comentarios ( texto, data_publi, id_usuario, id_publicacao )
VALUES
( 'Odeio o back-end, prefiro front-end', '2025/10/17', 2, 1 );

SELECT * FROM tb_comentarios;

INSERT INTO tb_seguir_seguido ( id_seguir, id_seguido )
VALUES
( 1, 3 ),
( 1, 2 );

SELECT * FROM tb_seguir_seguido;