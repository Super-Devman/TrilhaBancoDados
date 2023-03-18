-- Ao utilizar a cláusula GROUP BY divide-se os registros que serão agrupados em grupos de valores
-- Abaixo é usado para saber o produto com maior valor de venda de cada categoria
SELECT
categoria,
max(precovenda)
FROM
produto
GROUP BY categoria