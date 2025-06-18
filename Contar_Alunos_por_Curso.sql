SELECT Cursos.nome AS curso, COUNT(*) AS total_alunos
FROM Matriculas
JOIN Cursos ON Matriculas.curso_id = Cursos.id
GROUP BY Cursos.nome;
