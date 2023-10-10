USE FerreteriaDB

DECLARE @NombreProducto NVARCHAR(100)
DECLARE @PrecioProducto DECIMAL(10, 2)

DECLARE dynamic_cursor CURSOR FOR
    SELECT Nombre, Precio
    FROM Productos
    WHERE Stock > 0 

OPEN dynamic_cursor

FETCH NEXT FROM dynamic_cursor INTO @NombreProducto, @PrecioProducto

WHILE @@FETCH_STATUS = 0
BEGIN

    PRINT 'Nombre del Producto: ' + @NombreProducto
    PRINT 'Precio del Producto: ' + CONVERT(NVARCHAR(20), @PrecioProducto)

    FETCH NEXT FROM dynamic_cursor INTO @NombreProducto, @PrecioProducto
END

CLOSE dynamic_cursor
DEALLOCATE dynamic_cursor
