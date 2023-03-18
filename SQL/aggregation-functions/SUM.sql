-- A função SUM realiza a soma dos valores em uma única coluna e retorna esse resultado
-- Aqui vai somar todos os preços de venda dos produtos de uma categoria
SELECT
sum(precovenda)
FROM
produto
WHERE
categoria = 1

-- Obs: Por padrão SUM e AVG ignoram valores do tipo null