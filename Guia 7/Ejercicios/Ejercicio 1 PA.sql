USE [FerreteriaDB]
GO
/****** Object:  StoredProcedure [dbo].[AgregarProveedores]    Script Date: 21/10/2023 9:46:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

	-- Procedimiento almacenado para agregar proveedores
CREATE procedure [dbo].[AgregarProveedores]
    @Nombre varchar(50),
    @Telefono varchar(20),
    @IDDireccion int
as
begin	
	insert into Proveedores (
		Nombre, 
		Telefono, 
		IDDireccion
	) values (
		@Nombre, 
		@Telefono, 
		@IDDireccion
	)
end;

