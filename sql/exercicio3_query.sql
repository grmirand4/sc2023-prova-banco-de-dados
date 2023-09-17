-- Exercício 3:
-- Query

SELECT
	nome_produto AS "Produto",
    preco_produto AS "Valor"
FROM produto
WHERE preco_produto > 100
ORDER BY preco_produto, nome_produto;