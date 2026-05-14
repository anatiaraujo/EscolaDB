SELECT a.NOME, AVG (N.NOTAFINAL) AS Media , AVG (F.PercPresenca) AS Frequencia 
FROM Aluno as a
INNER JOIN Matricula AS M ON M.AlunoId = a.AlunoId
INNER JOIN NOTA AS N ON N.MATRICULAID = M.MatriculaId
INNER JOIN Frequencia AS F ON F.MatriculaId = M.MatriculaId
group by a.Nome
HAVING AVG (N.NOTAFINAL) < 5 and AVG (F.PercPresenca) < 60




