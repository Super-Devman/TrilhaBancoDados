SELECT
-- Seleciona o nome do produto e o total de ID_PRODUTO, nomeado como TOTAL_VENDIDO
P.nome as PRODUTO,
COUNT(V.id_produto) as TOTAL_VENDIDO
FROM
-- Informa que os dados serão consultados nas tabelas produto, nomeada de P
-- e venda_produto, nomeada de V
produto P, venda_produto V
-- Aqui é feito o vínculo entre as duas tabelas
WHERE P.id = V.id_produto AND
-- Define o filtro da consulta onde o ano do campo DATA deve ser igual a 2018
YEAR(V.data) = 2018
GROUP BY
P.id;