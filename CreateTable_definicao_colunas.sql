-- Criação da tabela e seus tipos de dados

-- Aluno tem Aluno Id pk unique, nome varchar (255) not null, email unique, data nasc date not null
-- Curso CursoId pk, Nome varchar (255) not null, CargaHoraria int not null
-- Matricula (ligação) Matricula Id pk, AlunoId fk, Curso Id fk, InicioCurso date, StatusCurso varchar (255)
-- Nota MatriculaId pk, NotaFinal decimal (5,2) 
-- Frequencia MatriculaId pk, PercPresença decimal (5,2)

CREATE TABLE Frequencia (
MatriculaId int PRIMARY KEY,
PercPresenca decimal (5,2),


	CONSTRAINT FK_Frequencia_Matricula 
		FOREIGN KEY (MatriculaId) REFERENCES Matricula (MatriculaId),

	CONSTRAINT integridade_porc_presenca 
		CHECK (PercPresenca between 0 and 100)
)