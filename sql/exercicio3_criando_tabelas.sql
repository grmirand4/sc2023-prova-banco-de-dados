-- Exercício 3:

-- Criando tabelas

CREATE TABLE produto (
    id_produto INT AUTO_INCREMENT PRIMARY KEY,
    nome_produto VARCHAR(100) NOT NULL,
    preco_produto DECIMAL(10, 2) NOT NULL
);

CREATE TABLE categoria (
    id_categoria INT AUTO_INCREMENT PRIMARY KEY,
    nome_categoria VARCHAR(100) NOT NULL
);

CREATE TABLE produto_categoria (
    id_produto INT,
    id_categoria INT,
    PRIMARY KEY (id_produto, id_categoria),
    FOREIGN KEY(id_produto) REFERENCES produto(id_produto),
    FOREIGN KEY(id_categoria) REFERENCES categoria(id_categoria)
);