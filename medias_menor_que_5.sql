--Identificar quais alunos tem média menor que 5

SELECT C.NOME, AVG (N.NOTAFINAL) AS Media 
FROM Curso as C
INNER JOIN Matricula AS M ON M.CursoId = C.CursoId
INNER JOIN NOTA AS N ON N.MATRICULAID = M.MatriculaId
group by C.Nome 
HAVING AVG(N.NOTAFINAL) <=5


