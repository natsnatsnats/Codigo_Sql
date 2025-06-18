-- Tabela de alunos
CREATE TABLE Alunos (
  id INT PRIMARY KEY,
  nome VARCHAR(100) NOT NULL,
  idade INT,
  email VARCHAR(100)
);

-- Tabela de cursos
CREATE TABLE Cursos (
  id INT PRIMARY KEY,
  nome VARCHAR(100) NOT NULL
);

-- Tabela de matrículas (relacionamento N:N)
CREATE TABLE Matriculas (
  aluno_id INT,
  curso_id INT,
  data_matricula DATE,
  PRIMARY KEY (aluno_id, curso_id),
  FOREIGN KEY (aluno_id) REFERENCES Alunos(id),
  FOREIGN KEY (curso_id) REFERENCES Cursos(id)
);

-- Tabela de logs para exemplo de trigger
CREATE TABLE Logs (
  id INT PRIMARY KEY AUTO_INCREMENT,
  mensagem TEXT,
  data_log TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

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

CREATE VIEW vw_aluno_curso AS
SELECT Alunos.nome AS aluno, Cursos.nome AS curso
FROM Alunos
JOIN Matriculas ON Alunos.id = Matriculas.aluno_id
JOIN Cursos ON Matriculas.curso_id = Cursos.id;

-- Consultar a view
SELECT * FROM vw_aluno_curso;
