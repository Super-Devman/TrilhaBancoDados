SELECT
P.nome as PRODUTO
FROM
produto P, venda_produto V
WHERE
P.id = V.id_produto AND
-- Define que o dia deve ser 15 e o mês deve ser 7 (JULHO)
DAY(V.data) = 15 AND
MONTH(V.data) = 7
GROUP BY
P.id