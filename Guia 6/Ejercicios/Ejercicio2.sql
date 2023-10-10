--EJERCICIO 2
create procedure MostrarPedidos
as
begin
	select 
		PED.IDPedido,
		DET.IDDetallePedido,
		DET.CantidadProdPedido as Cantidad_Pedida,
		PRO.Nombre as Nombre_Producto,
		PRO.Precio as Precio_Unitario,
		PROV.Nombre as Nombre_Proveedor,
		PROV.Telefono as Telefono_Proveedor
	from Productos PRO 
	JOIN DetallePedidos DET ON DET.IDProducto = PRO.IDProducto
	JOIN Pedidos PED ON DET.IDPedido = PED.IDPedido
    JOIN Proveedores PROV ON PED.IDProveedor = PROV.IDProveedor
	order by DET.CantidadProdPedido
end

exec MostrarPedidos;