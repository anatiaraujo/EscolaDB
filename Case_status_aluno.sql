-- Verificar quais alunos estão abaixo da média de 5 e Frequencia menor que 60

SELECT a.NOME, AVG (N.NOTAFINAL) AS Media , AVG (F.PercPresenca) AS Frequencia,
CASE
	WHEN AVG(N.NOTAFINAL) < 5  AND AVG(F.PercPresenca) < 60 THEN 'Reprovado' 
ELSE
	'Aprovado'
END as StatusAluno
FROM Aluno as a
INNER JOIN Matricula AS M ON M.AlunoId = a.AlunoId
INNER JOIN NOTA AS N ON N.MATRICULAID = M.MatriculaId
INNER JOIN Frequencia AS F ON F.MatriculaId = M.MatriculaId
group by a.Nome

