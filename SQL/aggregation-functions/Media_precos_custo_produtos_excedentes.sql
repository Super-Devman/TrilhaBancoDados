-- No exemplo a seguir lista as categorias que contêm produtos cujas médias dos preços exceda 2
SELECT
categoria,
avg(precocusto) as media_preco_custo
FROM
produto
GROUP BY categoria
HAVING avg(precocusto) > 2