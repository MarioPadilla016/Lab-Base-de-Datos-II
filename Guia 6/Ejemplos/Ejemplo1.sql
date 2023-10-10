use Escuela;

--Ejemplo 1
--CREACION DE PROCEDIMIENTO ALMACENADO

create procedure ObtenerEmpleados
as
begin

	select * from Empleados;
end

--EJECUCION DEL PA
Execute ObtenerEmpleados;