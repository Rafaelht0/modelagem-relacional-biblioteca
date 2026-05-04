CREATE DATABASE BD_BIBLIOTECA_UNIFAVIP;
USE BD_BIBLIOTECA_UNIFAVIP;

CREATE TABLE Autor (
    id_autor INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(200) NOT NULL
);

CREATE TABLE Categoria (
    id_categoria INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(200) NOT NULL
);

CREATE TABLE Livro (
    id_livro INT PRIMARY KEY AUTO_INCREMENT,
    titulo VARCHAR(200) NOT NULL,
    ano_publicacao INT NOT NULL,
    id_autor INT NOT NULL,
    id_categoria INT NOT NULL,
    FOREIGN KEY (id_autor) REFERENCES Autor(id_autor)
    ON DELETE RESTRICT
    ON UPDATE CASCADE,
    FOREIGN KEY (id_categoria) REFERENCES Categoria(id_categoria)
    ON DELETE RESTRICT
    ON UPDATE CASCADE
);

CREATE TABLE Leitor (
    id_leitor INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(200) NOT NULL,
    email VARCHAR(200) NOT NULL UNIQUE,
    cpf VARCHAR(200) NOT NULL UNIQUE
);


CREATE TABLE Funcionario (
    id_funcionario INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(200) NOT NULL,
    cargo VARCHAR(50)
);

CREATE TABLE Emprestimo (
    id_emprestimo INT PRIMARY KEY AUTO_INCREMENT,
    data_emprestimo DATE NOT NULL,
    data_devolucao DATE, 
    id_livro INT,
    id_leitor INT,
    id_funcionario INT,

    FOREIGN KEY (id_livro) REFERENCES Livro(id_livro)
     ON DELETE SET NULL
     ON UPDATE CASCADE,

    FOREIGN KEY (id_leitor) REFERENCES Leitor(id_leitor)
     ON DELETE SET NULL
     ON UPDATE CASCADE,

    FOREIGN KEY (id_funcionario) REFERENCES Funcionario(id_funcionario)
     ON DELETE SET NULL
     ON UPDATE CASCADE
);

INSERT INTO Autor (nome) VALUES 
('Machado de Assis'),
('Clarice Lispector'),
('George Orwell'),
('J. K. Rowling'),
('Graciliano Ramos');
INSERT INTO Categoria (nome) VALUES
('Romance'),
('Ficcao Cientifica'),
('Fantasia'),
('Drama'),
('Historia');

INSERT INTO Livro (titulo, ano_publicacao, id_autor, id_categoria) VALUES
('Dom Casmurro', 1899, 1, 1),
('Memorias Postumas de Bras Cubas', 1881, 1, 1),
('A Hora da Estrela', 1977, 2, 4),
('Perto do Coracao Selvagem', 1943, 2, 1),
('1984', 1949, 3, 2),
('A Revolucao dos Bichos', 1945, 3, 2),
('Harry Potter e a Pedra Filosofal', 1997, 4, 3),
('Harry Potter e a Camara Secreta', 1998, 4, 3),
('Vidas Secas', 1938, 5, 4),
('Sao Bernardo', 1934, 5, 1);

INSERT INTO Leitor (nome, email, cpf) VALUES
('Ana Souza', 'ana.souza@email.com', '11111111111'),
('Bruno Lima', 'bruno.lima@email.com', '22222222222'),
('Carla Mendes', 'carla.mendes@email.com', '33333333333'),
('Diego Santos', 'diego.santos@email.com', '44444444444'),
('Elaine Rocha', 'elaine.rocha@email.com', '55555555555'),
('Fabio Nunes', 'fabio.nunes@email.com', '66666666666'),
('Gabriela Alves', 'gabriela.alves@email.com', '77777777777');

INSERT INTO Funcionario (nome, cargo) VALUES
('Marcos Silva', 'Bibliotecario'),
('Patricia Costa', 'Atendente'),
('Renato Oliveira', 'Auxiliar');

INSERT INTO Emprestimo (data_emprestimo, data_devolucao, id_livro, id_leitor, id_funcionario) VALUES
('2026-04-01', '2026-04-08', 1, 1, 1),
('2026-04-02', '2026-04-09', 2, 2, 1),
('2026-04-03', NULL, 3, 3, 2),
('2026-04-04', '2026-04-11', 4, 4, 2),
('2026-04-05', NULL, 5, 5, 3),
('2026-04-06', '2026-04-13', 6, 6, 3),
('2026-04-07', NULL, 7, 7, 1),
('2026-04-08', '2026-04-15', 8, 1, 2),
('2026-04-09', NULL, 9, 2, 3),
('2026-04-10', '2026-04-17', 10, 3, 1);

SELECT * FROM Autor;
SELECT * FROM Categoria;
SELECT * FROM Livro;
SELECT * FROM Leitor;
SELECT * FROM Funcionario;
SELECT * FROM Emprestimo;








