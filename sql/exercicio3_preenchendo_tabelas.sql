-- Exercício 3:

-- Preenchendo a tabela de categoria com 3 categorias:
INSERT INTO categoria (nome_categoria) VALUES
('Eletrônicos'),
('Roupas'),
('Alimentos');

-- Preenchendo a tabela de produto com 10 produtos:
INSERT INTO produto (nome_produto, preco_produto) VALUES
('Smartphone', 300.50),
('Camiseta', 60.00),
('Biscoito', 5.50),
('Laptop', 1500.00),
('Jaqueta', 250.00),
('Pão Integral', 7.00),
('Televisão', 1000.00),
('Jeans', 100.00),
('Suco', 8.00),
('Mouse', 50.00);

-- Preenchendo a tabela produto_categoria com as associações:
INSERT INTO produto_categoria (id_produto, id_categoria) VALUES
(1, 1), -- Smartphone -> Eletrônicos
(4, 1), -- Laptop -> Eletrônicos
(2, 2), -- Camiseta -> Roupas
(5, 2), -- Jaqueta -> Roupas
(8, 2), -- Jeans -> Roupas
(3, 3), -- Biscoito -> Alimentos
(6, 3), -- Pão Integral -> Alimentos
(9, 3); -- Suco -> Alimentos