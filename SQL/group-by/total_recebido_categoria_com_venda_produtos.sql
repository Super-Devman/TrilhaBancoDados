-- No trecho abaixo, seleciona a soma da coluna valor da tabela venda_produto, a categoria da tabela categoria_produto,
-- e por fim agrupa o resultado pelo ID da categoria
SELECT
SUM(VP.valor) AS TOTAL,
C.nome AS CATEGORIA
FROM
produto P, categoria_produto C, venda_produto VP
WHERE
P.id_categoria = C.id AND
VP.id_produto = P.id
GROUP BY
C.id