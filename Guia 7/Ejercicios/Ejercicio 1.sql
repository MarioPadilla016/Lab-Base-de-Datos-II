use FerreteriaDB;

	--Creacion del trigger
	-- Trigger para calcular promedio y estado de la materia
create trigger DefinirEstadoProveedor
on Proveedores
after insert
as
begin
	declare @IDProveedor int
	declare @Nombre varchar(50)
	declare @Telefono varchar(20)
    declare @IDDireccion int
	declare @Estado char(1)
	
    select top 1 
	@IDProveedor = IDProveedor,
	@Nombre = Nombre,
	@Telefono = Telefono,
	@IDDireccion = IDDireccion
    from inserted

	--SI EL ID DEL PROVEEDOR ES MAYOR O IGUAL A 1 SU ESTADO SERÁ ACTIVO
	--SI NO EL ESTADO SERÁ DESACTIVADO
	if @IDProveedor >= 1
		set @Estado = 'A' 
	else
		set @Estado = 'D'

	update Proveedores
		set Estado = @Estado
		where IDProveedor = @IDProveedor

	print 'Se estableció el estado del proveedor ' + 
	CAST(@IDProveedor AS VARCHAR(10)) + ' como ' + @Estado
end;

	-- Consultas
select * from Proveedores;

	-- Evento que activa el trigger
exec AgregarProveedores
	@Nombre = 'ColoColo', 
	@Telefono = '24596638', 
	@IDDIreccion = '2';

	-- Consultar resultados del trigger
select * From Proveedores