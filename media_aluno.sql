-- Calcular a média do aluno

SELECT A.NOME, AVG (N.NOTAFINAL) AS Média 
FROM Aluno as a
INNER JOIN Matricula AS M ON M.AlunoId = A.AlunoId
INNER JOIN NOTA AS N ON N.MATRICULAID = M.MatriculaId
group by a.Nome
order by Média desc



