-- Traz todas as pessoas do banco de dados, agrupando por nome
SELECT
nome
FROM
pessoa
GROUP BY
nome
-- O diferencial acontece nessas linhas, onde utiliza-se a clausula HAVING para trazer no resultado, somente os nomes
-- que tenham aparecido no resultado mais de uma vez
HAVING
COUNT(nome) > 1