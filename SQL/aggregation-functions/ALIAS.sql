-- Para facilitar a compreensão do SQL, pode-se utilizar a palavra-chave 'as' para criar
-- um apelido para uma coluna
-- Por exemplo a coluna apelidada como maximo_preco_venda irá conter o maior preço de venda
SELECT
categoria,
max(precovenda) as maximo_preco_venda
FROM
produto
GROUP BY categoria
HAVING max(precovenda) > 100