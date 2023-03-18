-- No trecho de código abaixo, utiliza-se a função SUM para realizar a soma da coluna valor da tabela venda_produto
-- agrupando todo o resultado pelo Mês
SELECT
SUM(valor) AS TOTAL,
MONTH(DATA) AS MES
FROM
venda_produto
GROUP BY
MES;