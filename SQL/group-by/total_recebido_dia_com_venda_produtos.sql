-- No trecho de código abaixo, utiliza a função SUM para realizar a soma da coluna valor da tabela venda_produto,
-- e agrupa todo o resultado pela data da venda, onde cada produto vendido em uma determinada data, será somado ao
-- seu valor informando o total e a data da venda
SELECT
SUM(valor) AS TOTAL,
DATA
FROM
venda_produto
GROUP BY
data;