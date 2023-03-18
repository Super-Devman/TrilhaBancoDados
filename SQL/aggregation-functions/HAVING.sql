-- A cláusula HAVING pode ser usada em conjunto com GROUP BY para filtrar os resultados
-- que serão submetidos a agregação
-- No exemplo abaixo irá listar o maior preço de venda de cada categoria, incluindo apenas
-- os produtos com preço de venda maior que 100
SELECT
categoria,
max(precovenda)
FROM
produto
GROUP BY categoria
HAVING max(precovenda) > 100