USE [Escuela]
GO

-- Crea una función de tabla
CREATE FUNCTION [dbo].[ObtenerEstudiantesPorGrado] (@Grado varchar(30))
RETURNS TABLE
AS
RETURN (
    SELECT 
        [NIE],
        [NombresEstudiante],
        [ApellidosEstudiante],
        [FechaNacEstudiante],
        [GeneroEstudiante]
    FROM 
        [dbo].[Estudiantes]
    WHERE 
        [NIE] IN (
            SELECT DISTINCT [NIE]
            FROM [dbo].[Matriculas]
            WHERE [ID_Grupo] IN (
                SELECT [ID_Grupo]
                FROM [dbo].[Grupos]
                WHERE [Grado] = @Grado
            )
        )
)


--EJEMPLO DE USO
SELECT *
FROM [dbo].[ObtenerEstudiantesPorGrado]('1er Bachillerato')