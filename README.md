# Modelagem Relacional Biblioteca

Projeto da atividade de Banco de Dados (Aula 02), com modelagem e implementação SQL de um sistema de biblioteca.

## Conteúdo

- `tables.sql`: script principal com criação do banco, tabelas, inserts e consultas.
- `testes.sql`: comandos de teste para operações de `UPDATE`, `DELETE`, `SET NULL`, `RESTRICT` e `CASCADE`.
- `respostas_atividade_aula02.txt`: respostas teóricas da atividade.

## Tecnologias

- MySQL
- XAMPP (phpMyAdmin)

## Como executar (phpMyAdmin)

1. Inicie `Apache` e `MySQL` no XAMPP.
2. Acesse `http://localhost/phpmyadmin`.
3. Abra a aba `SQL`.
4. Execute o conteúdo de `tables.sql`.
5. Se necessário, execute `testes.sql` para validar os cenários da atividade.

## Objetivo da modelagem

Controlar:

- Autores
- Categorias
- Livros
- Leitores
- Funcionários
- Empréstimos

Com integridade referencial via `FOREIGN KEY`, incluindo uso de:

- `ON DELETE RESTRICT`
- `ON DELETE SET NULL`
- `ON UPDATE CASCADE`
