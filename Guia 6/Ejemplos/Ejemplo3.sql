--EJEMPLO 3
use Escuela;
create procedure MostrarPlanilla
as
begin
	select 
		EMP.DUI_Empleado,
		EMP.ISSS_Empleado,
		EMP.NombresEmpleado,
		EMP.ApellidosEmpleado,
		CAR.Cargo
	from Empleados EMP, Cargos CAR
	where CAR.ID_Cargo = EMP.ID_Cargo
	order by EMP.ID_Cargo
end

exec MostrarPlanilla;