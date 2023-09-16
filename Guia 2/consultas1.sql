--#1
SELECT SUM(P.Precio * DP.CantidadProdPedido) AS PrecioTotal
FROM DetallePedidos DP
INNER JOIN Productos P ON DP.IDProducto = P.IDProducto
WHERE DP.IDPedido = 1;


--#2
SELECT AVG(DATEDIFF(YEAR, FechaNacimiento, GETDATE())) AS EdadPromedio
FROM Clientes;


--#3
SELECT Nombre, Stock
FROM Productos
WHERE Stock <= 50;


--#4
SELECT Departamento
FROM Departamentos
WHERE Departamento LIKE 'A%';


--#5
SELECT TOP 1 IDFactura, NumFactura, MontoTotal
FROM Facturas
ORDER BY MontoTotal DESC;
