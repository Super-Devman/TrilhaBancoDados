SELECT
P.id,
P.nome as PRODUTO,
-- Realiza a soma dos valores da coluna valor da tabela venda_produto
SUM(V.valor) as RECEITA
-- Informa que a consulta será realiza em duas tabelas, na tabela produto, nomeada de P, e na tabela venda_produto,
-- nomeada de V
FROM
produto P,
venda_produto V
WHERE 
-- Informa que o id da tabela produto será o mesmo da tabela venda_produto, realizando o vínculo entre as duas
P.id = V.id_produto
-- Agrupa o resultado da consulta pelo id do produto, já que precisa-se apenas de uma ocorrência e seu valor total
-- de receita
GROUP BY
P.id
-- Utiliza o HAVING para filtrar o resultado, exibindo somente os resultados que tenham no mínimo três venda,
-- utilizando a função COUNT para isso
HAVING
COUNT(V.id_produto) >= 3

































