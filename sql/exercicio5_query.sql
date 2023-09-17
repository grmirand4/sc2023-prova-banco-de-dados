-- Exercício 5:

SELECT 
    c.nome_categoria, 
    AVG(p.preco_produto) AS preco_medio
FROM 
    categoria c
INNER JOIN 
    produto_categoria pc ON c.id_categoria = pc.id_categoria
INNER JOIN 
    produto p ON pc.id_produto = p.id_produto
GROUP BY 
    c.nome_categoria
ORDER BY 
    c.nome_categoria;