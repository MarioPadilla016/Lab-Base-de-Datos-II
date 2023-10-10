USE [Escuela]
GO


CREATE FUNCTION [dbo].[ObtenerNombreCompleto] (@NIE int)
RETURNS varchar(120)
AS
BEGIN
    DECLARE @NombreCompleto varchar(120)

    SELECT @NombreCompleto = NombresEstudiante + ' ' + ApellidosEstudiante
    FROM Estudiantes
    WHERE NIE = @NIE

    RETURN @NombreCompleto
END
GO



--EJEMPLO DE USO
DECLARE @NombreEstudiante varchar(120)
SET @NombreEstudiante = dbo.ObtenerNombreCompleto(102365849)
SELECT @NombreEstudiante AS NombreCompleto