Use FerreteriaDB;

insert into Cargos values
	('Gerente'),
	('Sub-Gerente'),
	('Vendedor'),
	('Teleoperador'),
	('Bodeguero');

insert into Departamentos values
	('Sonsonate'),
	('Ahuachapan'),
	('San Salvador'),
	('La Libertad'),
	('Santa Ana');

insert into Municipios values
	('Sonsonate Centro', 1),
	('Ahuachapan Centro', 2),
	('San Salvador Centro', 3),
	('La Libertad Centro', 4),
	('Santa Ana Centro', 5);

insert into Distritos values
	('Sonsonate', 1),
	('Ahuachapan', 2),
	('San Salvador', 3),
	('La Libertad', 4),
	('Santa Ana', 5);

insert into Direcciones values
	('Avenida Morazan', 'Numero 6-5', '0315', 1),
	('Avenida Valladares', 'Numero 24-3', '0425', 2),
	('Avenida Jerusalem', 'Numero 8-4', '0526', 3),
	('Avenida Tijuana', 'Numero 1-1', '0627', 4),
	('Avenida Central', 'Numero 2-2', '0728', 5);

insert into Clientes values
	('Mario', 'Padilla', '2001-11-16', '72709951', 'padillamario078@gmail.com', 'M', 1),
	('Valeria', 'Hernandez', '2003-06-27', '76131521', 'hernandezvaleria098@gmail.com', 'F', 2),
	('Vanessa', 'Zetino', '2003-01-27', '78653482', 'vanessazetino@gmail.com', 'F', 3),
	('Einer', 'Gutierrez', '2003-06-28', '76128954', 'eineralexis@gmail.com', 'M', 4),
	('William', 'Garzona', '2002-08-24', '78907654', 'williamgarzona@gmail.com', 'M', 5);

insert into Empleados values
	('Jose', 'Peralta', 062947454, 062947454,'2001-10-14', '76890976', 'joseperalta@gmail.com', 'M', 5, 1),
	('Irma', 'Siguenza', 092347654, 092347654, '2003-02-20', '76890234', 'irmasiguenza@gmail.com', 'F', 4, 2),
	('Monica', 'Lopez', 093478653, 093478653, '2003-08-27', '72349876', 'monicalopez@gmail.com', 'F', 3, 3),
	('Jorge', 'Figueroa', 012789652, 012789652, '2000-09-23', '68905423', 'jorgefigueroa@gmail.com', 'M', 2, 4),
	('David', 'Fernandez', 094876456, 094876456, '1999-04-17', '68905676', 'davidfernandez@gmail.com', 'M', 1, 5);

insert into Productos values
	('Llave', 'Llave para tuercas', 2.50, 21),
	('Chorro', 'Chorro plastico', 3.00, 52),
	('Pala', 'Pala Duplex', 12.99, 33),
	('Cemento', 'Cemento Cemex', 15.89, 24),
	('Desarmador', 'Desarmador Philips', 1.99, 15);

insert into Proveedores values
	('Cemex', '24516789', 4),
	('Cessa', '24519345', 1),
	('Santa Sofia', '24519087', 2),
	('Freund', '24568932', 5),
	('Vidri', '24513478', 3);

insert into Ventas values
	('2023-09-01', 22.50, 1, 5),
	('2023-08-30', 38.00, 2, 4),
	('2023-07-08', 120.99, 3, 3),
	('2023-06-12', 34.89, 4, 2),
	('2023-05-22', 19.99, 5, 1);

insert into Pedidos values
	('2023-05-30', 200.00 , 1),
	('2023-06-21', 380.00, 2),
	('2023-07-03', 120.00, 3),
	('2023-08-23', 340.00, 4),
	('2023-09-01', 190.00, 5);

insert into DetallePedidos values
	(10, 1, 5),
	(20, 2, 4),
	(30, 3, 3),
	(15, 4, 2),
	(20, 5, 1);

insert into DetalleVentas values
	(1, 5, 1),
	(2, 4, 2),
	(3, 3, 3),
	(1, 2, 4),
	(2, 1, 5);

insert into Facturas values
	('01', '2230', 20.00, 100.00,'20011014', 1),
	('02', '2231', 30.00, 130.00, '20030220', 2),
	('03', '2233', 40.00, 140.00, '20000827', 3),
	('04', '2234', 45.00, 145.00, '20000923', 4),
	('05', '2235', 35.00, 135.00, '19990417', 5);