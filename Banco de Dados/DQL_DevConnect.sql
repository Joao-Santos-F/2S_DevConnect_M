--DQL

USE db_DevConnect;

SELECT COUNT ( email )
AS qtd_total_usuarios
FROM tb_usuario;

SELECT COUNT ( id_usuario ) 
AS qtd_curtidas
FROM tb_curtidas;

SELECT id_usuario, data_publi
AS comentario_mais_novo
FROM tb_comentarios
WHERE data_publi = ( SELECT MAX ( data_publi ) FROM tb_comentarios );