USE BD_BIBLIOTECA_UNIFAVIP;

-- 3: corrigir nome de leitor
UPDATE Leitor
SET nome = 'Ana Barbosa'
WHERE id_leitor = 1;

-- 4: tentar excluir autor com livros 
DELETE FROM Autor
WHERE id_autor = 1;

-- 5: excluir funcionario 
DELETE FROM Funcionario
WHERE id_funcionario = 1;

SELECT * FROM Emprestimo;

-- 6: atualizar id do autor para 1610 
UPDATE Autor
SET id_autor = 1610
WHERE id_autor = 2;

SELECT * FROM Livro WHERE id_autor = 1610;

-- 7.1: apagar dados mantendo a estrutura
DELETE FROM Emprestimo;

-- 7.2: remover completamente a tabela
DROP TABLE Emprestimo;
