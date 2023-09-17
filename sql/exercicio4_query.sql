-- Exercício 4:

SELECT
	id_produto,
    preco_produto 
FROM produto 
WHERE preco_produto > (SELECT AVG(preco_produto) FROM produto);