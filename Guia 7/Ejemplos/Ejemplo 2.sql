use Escuela;

	--Creacion del trigger
	-- Trigger para calcular promedio y estado de la materia
create trigger PromediarMateria
on Calificaciones
after insert
as
begin
	declare @ID_Calificacion int
	declare @ID_Materia int
	declare @NIE int
    declare @Examen1 decimal(3, 1)
    declare @Examen2 decimal(3, 1)
    declare @Examen3 decimal(3, 1)
    declare @ExamenFinal decimal(3, 1)
    declare @Tareas decimal(3, 1)
	declare @Promedio decimal(3, 1)
	declare @Estado char(1)
	declare @NombreMateria varchar(60)
	
    select top 1 
	@ID_Calificacion = ID_Calificacion,
	@ID_Materia = ID_Materia,
	@NIE = NIE,
	@Examen1 = Examen1, 
	@Examen2 = Examen2, 
	@Examen3 = Examen3, 
	@ExamenFinal = ExamenFinal,
	@Tareas = Tareas
    from inserted

	set @Promedio = ((@Examen1 + @Examen2 + @Examen3 + @ExamenFinal + @Tareas)/5)

	if @Promedio >= 6.50
		set @Estado = 'A' 
	else
		set @Estado = 'R'

	update Calificaciones
		set Promedio = @Promedio, Estado = @Estado
	where ID_Calificacion = @ID_Calificacion

	select @NombreMateria = MA.NombreMateria
	from Materias MA, Calificaciones CA
	where MA.ID_Materia = @ID_Materia;

	print 'Se promedió la materia de ' + 
	@NombreMateria + ' del Estudiante ' + 
	cast(@NIE as varchar(10))
end;

	-- Consultas
select * from Materias;
select * from Estudiantes order by NombresEstudiante asc;

	-- Evento que activa el trigger
exec AgregarCalificaciones 
	@ID_Materia = '1', 
	@NIE = '188256254', 
	@ID_Docente = '1', 
	@Examen1 = '7.50', 
	@Examen2 = '9.25', 
	@Examen3 = '8.75', 
	@ExamenFinal = '9.00', 
	@Tareas = '7.00';

	-- Consultar resultados del trigger
select 
	CA.ID_Calificacion,
	CA.ID_Materia,
	MA.NombreMateria,
	CA.NIE,
	ES.NombresEstudiante, 
	ES.ApellidosEstudiante,	
	CA.Examen1, 
	CA.Examen2, 
	CA.Examen3, 
	CA.ExamenFinal, 
	CA.Tareas,
	CA.Promedio,
	CA.Estado
from Calificaciones CA, Estudiantes ES, Materias MA
where CA.NIE = ES.NIE and CA.ID_Materia = MA.ID_Materia;
