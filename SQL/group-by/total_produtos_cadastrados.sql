-- Seleciona o total de ID produto, nomeado como TOTAL e o nome da categoria nomeado de CATEGORIA
SELECT
COUNT(P.ID) AS TOTAL,
C.nome AS CATEGORIA
-- Informa que a consulta será realizada nas tabelas produto, nomeada de P e categoria_produto, nomeada de C
FROM 
produto P, categoria_produto C
-- Define como filtro da consulta o id de produto ser o mesmo nas duas tabelas, realizando um vínculo entre elas
WHERE 
P.id_categoria = C.id
-- Agrupa o resultado da consulta pelo ID da categoria, que é o item que se deseja agrupar
GROUP BY
C.id