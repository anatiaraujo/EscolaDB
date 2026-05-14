-- Trazer a nota final do aluno em cada curso

SELECT A.AlunoId, A.NOME, C.NOME as Curso, N.NOTAFINAL
FROM Aluno AS A
INNER JOIN Matricula AS M ON A.AlunoId = M.AlunoId
INNER JOIN Curso AS C ON M.CursoId = C.CursoId
INNER JOIN NOTA AS N ON N.MATRICULAID = M.MATRICULAID

