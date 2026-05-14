SELECT C.NOME, AVG (N.NOTAFINAL) AS Média 
FROM Curso as C
INNER JOIN Matricula AS M ON M.CursoId = C.CursoId
INNER JOIN NOTA AS N ON N.MATRICULAID = M.MatriculaId
group by C.Nome
order by Média desc



