SELECT Alunos.nome, Cursos.nome AS curso
FROM Alunos
JOIN Matriculas ON Alunos.id = Matriculas.aluno_id
JOIN Cursos ON Matriculas.curso_id = Cursos.id;
