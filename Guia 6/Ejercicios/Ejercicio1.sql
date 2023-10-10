--EJERCICIO 1 
--
alter procedure AgregarProducto
--VARIABLES
	@Nombre nvarchar(100),
	@Descripcion varchar (max),
	@Precio decimal(10,2),
	@Stock int
as
begin
--INSERTAR
	insert into Productos values(
	@Nombre,
	@Descripcion,
	@Precio,
	@Stock
	);
--CONSULTAR
	select * from Productos
end

execute AgregarProducto
	@Nombre = 'Sierra',
	@Descripcion = 'Sierra con mango',
	@Precio = '3',
	@Stock = '50'