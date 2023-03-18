SELECT
P.nome,
-- Realiza a soma da coluna valor da tabela venda_produto, nomeando essa coluna no resultado de RECEBIDO
SUM(V.valor) as RECEBIDO
FROM
-- Informa que a consulta será realiza em duas tabelas, na tabela produto, nomeada de P, e na tabela venda_produto,
-- nomeada de V
produto P, venda_produto V
WHERE
-- Utiliza o WHERE no ano, define que somente resultados do ano de 2018 sejam trazidos pela consulta
YEAR(V.DATA) = 2018 AND
-- Realiza o vínculo entre as duas tabelas, definindo o ID da tabela produto seja o mesmo na tabela venda_produto
P.id = V.id_produto
-- Agrupa o resultado do produto, para que venha apenas uma ocorrência de cada
GROUP BY
P.id
-- Utiliza o HAVING para filtrar depois do agrupamento, definindo que serão trazidos somente resultados que a soma
-- da coluna valor seja maior que 300
HAVING
SUM(V.valor) > 300
















