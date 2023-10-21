use Escuela;

	-- Procedimiento almacenado para agregar calificaciones
create procedure AgregarCalificaciones
	@ID_Materia int,
    @NIE int,
    @ID_Docente int,
    @Examen1 decimal(3, 1),
    @Examen2 decimal(3, 1),
    @Examen3 decimal(3, 1),
    @ExamenFinal decimal(3, 1),
    @Tareas decimal(3, 1)
as
begin	
	insert into Calificaciones (
		ID_Materia, 
		NIE, 
		ID_Docente, 
		Examen1, 
		Examen2, 
		Examen3, 
		ExamenFinal, 
		Tareas
	) values (
		@ID_Materia, 
		@NIE, 
		@ID_Docente, 
		@Examen1, 
		@Examen2, 
		@Examen3, 
		@ExamenFinal, 
		@Tareas
	)
end;