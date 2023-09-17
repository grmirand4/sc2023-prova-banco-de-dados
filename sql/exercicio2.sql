-- Exercício 2:

CREATE TABLE tipo_cliente 
( 
    codigo_tipo_cliente INT PRIMARY KEY AUTO_INCREMENT,  
    descricao_tipo_cliente VARCHAR(200) NOT NULL
); 

CREATE TABLE cliente 
( 
    codigo_cliente INT PRIMARY KEY AUTO_INCREMENT,  
    nome_cliente VARCHAR(200) NOT NULL,  
    sobrenome_cliente VARCHAR(200) NOT NULL,  
    municipio_cliente VARCHAR(200) NOT NULL,  
    codigo_tipo_cliente INT,
    FOREIGN KEY(codigo_tipo_cliente) REFERENCES tipo_cliente(codigo_tipo_cliente)
); 

CREATE TABLE telefone 
( 
    codigo_telefone INT PRIMARY KEY AUTO_INCREMENT,  
    numero_telefone VARCHAR(20) NOT NULL,
    codigo_cliente INT,
    FOREIGN KEY(codigo_cliente) REFERENCES cliente(codigo_cliente)
); 

CREATE TABLE tipo_produto 
( 
    codigo_tipo_produto INT PRIMARY KEY AUTO_INCREMENT,  
    descricao_tipo_produto VARCHAR(200) NOT NULL
); 

CREATE TABLE diretor_responsavel 
( 
    codigo_diretor_responsavel INT PRIMARY KEY AUTO_INCREMENT,  
    nome_diretor_responsavel VARCHAR(200) NOT NULL,  
    email_diretor_responsavel VARCHAR(200) NOT NULL
); 

CREATE TABLE produto 
( 
    codigo_produto INT PRIMARY KEY AUTO_INCREMENT,  
    nome_produto VARCHAR(200) NOT NULL,  
    descricao_produto VARCHAR(200) NOT NULL,
    codigo_tipo_produto INT,
    codigo_diretor_responsavel INT,
    FOREIGN KEY(codigo_tipo_produto) REFERENCES tipo_produto(codigo_tipo_produto),
    FOREIGN KEY(codigo_diretor_responsavel) REFERENCES diretor_responsavel(codigo_diretor_responsavel)
); 

CREATE TABLE contrato 
( 
    codigo_cliente INT,  
    codigo_produto INT,  
    PRIMARY KEY(codigo_cliente, codigo_produto),
    FOREIGN KEY(codigo_cliente) REFERENCES cliente(codigo_cliente),
    FOREIGN KEY(codigo_produto) REFERENCES produto(codigo_produto)
);