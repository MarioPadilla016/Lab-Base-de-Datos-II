--EJEMPLO 2 
--
create procedure AgregarEmpleado
--VARIABLES
	@DUI_Empleado varchar(10),
	@ISSS_Empleado int,
	@NombresEmpleado varchar(60),
	@ApellidosEmpleado varchar(60),
	@FechaNacEmpleado date,
	@Telefono varchar(10),
	@Correo varchar(100),
	@ID_Cargo int,
	@ID_Direccion int
as
begin
--INSERTAR
	insert into Empleados values(
	@DUI_Empleado,
	@ISSS_Empleado,
	@NombresEmpleado,
	@ApellidosEmpleado,
	@FechaNacEmpleado,
	@Telefono,
	@Correo,
	@ID_Cargo,
	@ID_Direccion
	);
--CONSULTAR
	select * from Empleados
end

execute AgregarEmpleado
	@DUI_Empleado = '04587988-5',
	@ISSS_Empleado = '357466251',
	@NombresEmpleado = 'Maria Elisa',
	@ApellidosEmpleado = 'Cartagena de Rodas',
	@FechaNacEmpleado = '01-01-1993',
	@Telefono = '7777-9090',
	@Correo = 'mariaelisa@live.com',
	@ID_Cargo = '3',
	@ID_Direccion  = '1'