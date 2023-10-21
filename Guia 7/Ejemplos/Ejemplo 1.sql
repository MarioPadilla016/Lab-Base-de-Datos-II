use Escuela;
	--CREACION DEL TRIGGER
Create Trigger RegistroMatriculas
on Matriculas
after insert
as
begin
	--VARIABLES
	declare @ID_Matricula int
	declare @NIE int
	declare @FechaInsercion datetime
	declare @ID_Grupo int
	declare @ID_Docente int

	--Obtener Informacion
	select top 1
	@ID_Matricula = ID_Matricula,
	@FechaInsercion = GETDATE(),
	@NIE = NIE,
	@ID_Grupo = ID_Grupo
	from inserted

	--Obtener el ID dle Docente
	select @ID_Docente = @ID_Docente
	from Grupos
	where ID_Grupo = @ID_Grupo

	--Insertar informacion en la tabla suelta
	insert into ReporteMatriculas values(
	@ID_Matricula,
	@FechaInsercion,
	@NIE,
	@ID_Grupo,
	@ID_Docente
	)
	print 'Se realizo una nueva matricula con fecha y hora: ' + cast(@FechaInsercion as varchar(100))
	+ ' del estudiante '
	+ cast(@NIE as varchar(10))
end

	--Creacion de tabla suelta
create table ReporteMatriculas(
	ID_ReporteMatricula int primary key identity(1, 1),
	ID_Matricula int,
	FechaInsercion datetime,
	NIE int, 
	ID_Grupo int,
	ID_Docente int
);

	-- Inserccion de un nuevo estudiante
insert into Estudiantes values
('132268499', 'Rosa Mariana', 'Martinez Gonzalez', '02-02-2007', 'F', '1', '5');

	-- Activando el trigger al insertar nueva matricula
	-- Inserccion de una nueva matricula
insert into Matriculas values
	('132268499', '1');