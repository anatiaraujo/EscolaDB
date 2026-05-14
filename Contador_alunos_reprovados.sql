-- Identificar alunos aprovados e reprovados

WITH BaseAluno AS (
SELECT a.Nome, AVG(n.NotaFinal) as Media, AVG (f.PercPresenca) as Frequencia,
CASE
	WHEN AVG(n.NotaFinal) <5 OR AVG(f.PercPresenca) <60 THEN 'Reprovado'
ELSE
	'Aprovado'
END as StatusAluno
FROM Aluno AS a
INNER JOIN Matricula AS m ON m.AlunoId = a.AlunoId
INNER JOIN Nota AS n ON n.MatriculaId = m.MatriculaId
INNER JOIN Frequencia AS f ON F.MatriculaId = m.MatriculaId
GROUP BY a.Nome
)
-- Contar os aprovados e reprovados

SELECT 
	COUNT (*) AS TotalAlunos,
		COUNT ( 
			CASE
				WHEN StatusAluno = 'Reprovado' THEN 1
			END ) AS QtdReprovados
FROM BaseAluno
