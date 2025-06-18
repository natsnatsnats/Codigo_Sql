SELECT nome FROM Alunos
WHERE idade > (
  SELECT AVG(idade) FROM Alunos
);
