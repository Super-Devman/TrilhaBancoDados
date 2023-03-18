SELECT
-- Seleciona o mês através da função MONTH
MONTH(V.data) as MES,
-- Em seguida seleciona a soma dos valores vendidos
SUM(V.valor) as TOTAL_RECEBIDO
FROM
-- Informa que a consulta será feita na tabela venda_produto nomeada como V
venda_produto V
GROUP BY
-- Informa que os dados serão agrupados por MES
MES
ORDER BY
-- Ordena a consulta pelo valor TOTAL_RECEBIDO do maior para o menor
TOTAL_RECEBIDO DESC
LIMIT 0, 2