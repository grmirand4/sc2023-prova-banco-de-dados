-- Exercício 6:
-- Criando tabelas:

CREATE TABLE turma (
    id_turma INT AUTO_INCREMENT PRIMARY KEY,
    codigo_turma VARCHAR(100) NOT NULL,
    nome_turma VARCHAR(100) NOT NULL
);

CREATE TABLE aluno (
    id_aluno INT AUTO_INCREMENT PRIMARY KEY,
    nome_aluno VARCHAR(255) NOT NULL,
    aluno_alocado BOOLEAN NOT NULL DEFAULT FALSE,
    id_turma INT,
    FOREIGN KEY(id_turma) REFERENCES turma(id_turma)
);