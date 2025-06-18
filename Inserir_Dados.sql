-- Inserindo alunos
INSERT INTO Alunos (id, nome, idade, email) VALUES
(1, 'Ana', 19, 'ana@email.com'),
(2, 'Bruno', 21, 'bruno@email.com'),
(3, 'Clara', 25, 'clara@email.com'),
(4, 'Daniel', 23, 'daniel@email.com');

-- Inserindo cursos
INSERT INTO Cursos (id, nome) VALUES
(101, 'Engenharia'),
(102, 'Direito'),
(103, 'Medicina');

-- Inserindo matrículas
INSERT INTO Matriculas (aluno_id, curso_id, data_matricula) VALUES
(1, 101, '2024-01-15'),
(2, 102, '2024-02-10'),
(3, 101, '2024-03-05'),
(3, 103, '2024-04-20'),
(4, 101, '2024-03-28');
