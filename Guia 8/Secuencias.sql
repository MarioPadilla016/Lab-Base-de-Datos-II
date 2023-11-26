--SECUENCIA PARA LLENAR LA LLAVE PRIMARIA O CUALQUIER CAMPO
--CON NUMERACIÓN ÚNICA DE UNA TABLA NUEVA O EXISTENTE
use FerreteriaDB;
create sequence secuencia_direccion
    start with 1
    increment by 1
    no MAXVALUE;
create sequence secuencia_cargo
    start with 1
    increment by 1
    no MAXVALUE;
--PARA INICIAR LAS SECUENCIAS
alter sequence secuencia_direccion restart with 1;
alter sequence secuencia_cargo restart with 1;

--PARA CONSULTAR EL SIGUIENTE VALOR
select next value for secuencia_direccion as SiguienteValorDireccion;
--PARA CONSULTAR EL VALOR ACTUAL
select current_value as ValorActualDireccion from sys.sequences where name = 'secuencia_direccion';

--OARA CONSULTAR EL SIGUIENTE VALOR
select next value for secuencia_cargo as SiguienteValorCargo;
--PARA CONSULTAR EL VALOR ACTUAL
select current_value as ValorActualCargo from sys.sequences where name = 'secuencia_cargo';

--PARA USAR LAS SECUENCIAS
alter table Empleados
add constraint DF_IDDireccion default (next value for secuencia_direccion) for IDDireccion;

alter table Empleados
add constraint DF_IDCargo default (next value for secuencia_cargo) for IDCargo;