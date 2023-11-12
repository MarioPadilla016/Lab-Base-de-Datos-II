--EJERCICIO 1 VISTAS
use FerreteriaDB;
--MOSTRAR EMPLEADOS Y CARGOS
SELECT
    E.IDEmpleado,
    E.Nombre,
    E.Apellido,
    C.Cargo
FROM
    Empleados E
INNER JOIN Cargos C ON E.IDCargo = C.IDCargo;

create view VEmpleadosCargos as
SELECT
    E.IDEmpleado,
    E.Nombre,
    E.Apellido,
    C.Cargo
FROM
    Empleados E
INNER JOIN Cargos C ON E.IDCargo = C.IDCargo;

select * from VEmpleadosCargos;

