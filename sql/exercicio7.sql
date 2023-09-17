-- Exercício 7:

-- a) Inserir pelo menos duas turmas diferentes na tabela de turma;
INSERT INTO turma (codigo_turma, nome_turma) VALUES
("BD001", "Banco de Dados I"),
("ES001", "Estatística"),
("DS001", "Lógica de Programação"),
("DS002", "Técnicas de Programação"),
("DS003", "Machine Learning");

-- b) Inserir pelo menos 1 aluno alocado em cada uma destas turmas na tabela aluno (todos com FALSE na coluna aluno_alocado);
INSERT INTO aluno (nome_aluno, id_turma) VALUES
("Pedro", 1),
("Mariana", 2),
("Lucas", 3),
("Aline", 4),
("Henrique", 5);

-- c) Inserir pelo menos 2 alunos não alocados em nenhuma turma na tabela aluno (todos com FALSE na coluna aluno_alocado);
INSERT INTO aluno (nome_aluno) VALUES
("Gabriela"),
("Rafael");

-- d) Atualizar a coluna aluno_alocado da tabela aluno, de modo que os alunos associados a uma disciplina recebam o valor True e alunos não associdos a nenhuma disciplina recebam o falor False para esta coluna.
UPDATE aluno 
SET aluno_alocado = TRUE 
WHERE id_turma IS NOT NULL;

UPDATE aluno 
SET aluno_alocado = FALSE 
WHERE id_turma IS NULL;