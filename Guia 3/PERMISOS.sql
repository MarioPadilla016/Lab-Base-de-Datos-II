use FerreteriaDB;
--SYSADMIN
go
grant control on database::FerreteriaDB to role_sysAdmin;

--GERENTE
go
grant select, update, insert on dbo.Clientes to role_gerente;go
grant select, update, insert on dbo.Ventas to role_gerente;go
grant select, update, insert on dbo.DetalleVentas to role_gerente;
go
grant select, insert on dbo.Facturas to role_gerente;
go
grant select, update, insert on dbo.Direcciones to role_gerente;
go
grant select, update, insert on dbo.Departamentos to role_gerente;
go
grant select, update, insert on dbo.Municipios to role_gerente;
go
grant select, update, insert on dbo.Distritos to role_gerente;
go
grant select, update, insert on dbo.Productos to role_gerente;
go
grant select, update, insert on dbo.Pedidos to role_gerente;
go
grant select, update, insert on dbo.DetallePedidos to role_gerente;
go
grant select, update, insert on dbo.Proveedores to role_gerente;
go
grant select, update, insert on dbo.Empleados to role_gerente;
go
grant select, update, insert on dbo.Cargos to role_gerente;

--VENDEDOR
go
grant select, update, insert on dbo.Clientes to role_vendedor;go
grant select, update, insert on dbo.Ventas to role_vendedor;go
grant select, update, insert on dbo.DetalleVentas to role_vendedor;
go
grant select, insert on dbo.Facturas to role_vendedor;
go
grant select, update, insert on dbo.Direcciones to role_vendedor;
go
grant select, update, insert on dbo.Departamentos to role_vendedor;
go
grant select, update, insert on dbo.Municipios to role_vendedor;
go
grant select, update, insert on dbo.Distritos to role_vendedor;

--CONTADOR
go
grant select on dbo.Facturas to role_contador;
go
grant select on dbo.Ventas to role_contador;go
grant select on dbo.DetalleVentas to role_contador;

--BODEGUERO
go
grant select, update, insert on dbo.Productos to role_bodeguero;
go
grant select, update, insert on dbo.Pedidos to role_bodeguero;
go
grant select, update, insert on dbo.DetallePedidos to role_bodeguero;
go
grant select, update, insert on dbo.Proveedores to role_bodeguero;

--RRHH
go
grant select, update, insert on dbo.Empleados to role_rrhh;
go
grant select, update, insert on dbo.Cargos to role_rrhh;
go
grant select, update, insert on dbo.Direcciones to role_rrhh;
go
grant select, update, insert on dbo.Departamentos to role_rrhh;
go
grant select, update, insert on dbo.Municipios to role_rrhh;
go
grant select, update, insert on dbo.Distritos to role_rrhh;




