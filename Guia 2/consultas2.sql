--#1
SELECT P.Nombre
FROM Productos P
JOIN DetalleVentas DV ON P.IDProducto = DV.IDProducto
JOIN Ventas V ON DV.IDVenta = V.IDVenta
WHERE V.IDCliente = 1;

--#2
SELECT E.Nombre, SUM(DV.CantidadProdVenta) AS TotalProductosVendidos
FROM Empleados E
JOIN Ventas V ON E.IDEmpleado = V.IDEmpleado
JOIN DetalleVentas DV ON V.IDVenta = DV.IDVenta
WHERE E.IDEmpleado = 2
GROUP BY E.Nombre;

--#3
SELECT P.Nombre
FROM Productos P
JOIN DetalleVentas DV ON P.IDProducto = DV.IDProducto
JOIN Ventas V ON DV.IDVenta = V.IDVenta
WHERE V.Fecha = (SELECT MAX(Fecha) FROM Ventas);

--#4
SELECT TOP 1 D.Departamento, COUNT(DI.IDDistrito) AS CantidadDistritos
FROM Departamentos D
JOIN Municipios M ON D.IDDepartamento = M.IDDepartamento
JOIN Distritos DI ON M.IDMunicipio = DI.IDMunicipio
GROUP BY D.Departamento
ORDER BY CantidadDistritos DESC;

--#5
SELECT C.Nombre, C.Apellido
FROM Clientes C
JOIN Ventas V ON C.IDCliente = V.IDCliente
GROUP BY C.Nombre, C.Apellido
HAVING SUM(V.Monto) > 20;

