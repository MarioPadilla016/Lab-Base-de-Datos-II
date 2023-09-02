USE [master]
GO
/****** Object:  Database [FerreteriaDB]    Script Date: 01/09/2023 13:19:20 ******/
CREATE DATABASE [FerreteriaDB]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'FerreteriaDB', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.MSSQLSERVER\MSSQL\DATA\FerreteriaDB.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'FerreteriaDB_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.MSSQLSERVER\MSSQL\DATA\FerreteriaDB_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT, LEDGER = OFF
GO
ALTER DATABASE [FerreteriaDB] SET COMPATIBILITY_LEVEL = 160
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [FerreteriaDB].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [FerreteriaDB] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [FerreteriaDB] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [FerreteriaDB] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [FerreteriaDB] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [FerreteriaDB] SET ARITHABORT OFF 
GO
ALTER DATABASE [FerreteriaDB] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [FerreteriaDB] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [FerreteriaDB] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [FerreteriaDB] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [FerreteriaDB] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [FerreteriaDB] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [FerreteriaDB] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [FerreteriaDB] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [FerreteriaDB] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [FerreteriaDB] SET  ENABLE_BROKER 
GO
ALTER DATABASE [FerreteriaDB] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [FerreteriaDB] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [FerreteriaDB] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [FerreteriaDB] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [FerreteriaDB] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [FerreteriaDB] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [FerreteriaDB] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [FerreteriaDB] SET RECOVERY FULL 
GO
ALTER DATABASE [FerreteriaDB] SET  MULTI_USER 
GO
ALTER DATABASE [FerreteriaDB] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [FerreteriaDB] SET DB_CHAINING OFF 
GO
ALTER DATABASE [FerreteriaDB] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [FerreteriaDB] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [FerreteriaDB] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [FerreteriaDB] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'FerreteriaDB', N'ON'
GO
ALTER DATABASE [FerreteriaDB] SET QUERY_STORE = ON
GO
ALTER DATABASE [FerreteriaDB] SET QUERY_STORE (OPERATION_MODE = READ_WRITE, CLEANUP_POLICY = (STALE_QUERY_THRESHOLD_DAYS = 30), DATA_FLUSH_INTERVAL_SECONDS = 900, INTERVAL_LENGTH_MINUTES = 60, MAX_STORAGE_SIZE_MB = 1000, QUERY_CAPTURE_MODE = AUTO, SIZE_BASED_CLEANUP_MODE = AUTO, MAX_PLANS_PER_QUERY = 200, WAIT_STATS_CAPTURE_MODE = ON)
GO
USE [FerreteriaDB]
GO
/****** Object:  Table [dbo].[Cargos]    Script Date: 01/09/2023 13:19:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Cargos](
	[IDCargo] [int] IDENTITY(1,1) NOT NULL,
	[Cargo] [varchar](40) NULL,
PRIMARY KEY CLUSTERED 
(
	[IDCargo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Clientes]    Script Date: 01/09/2023 13:19:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Clientes](
	[IDCliente] [int] IDENTITY(1,1) NOT NULL,
	[Nombre] [varchar](50) NOT NULL,
	[Apellido] [varchar](50) NOT NULL,
	[FechaNacimiento] [date] NOT NULL,
	[Telefono] [varchar](20) NULL,
	[Email] [varchar](100) NULL,
	[Genero] [varchar](10) NULL,
	[IDDireccion] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[IDCliente] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Departamentos]    Script Date: 01/09/2023 13:19:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Departamentos](
	[IDDepartamento] [int] IDENTITY(1,1) NOT NULL,
	[Departamento] [varchar](100) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[IDDepartamento] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DetallePedidos]    Script Date: 01/09/2023 13:19:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DetallePedidos](
	[IDDetallePedido] [int] IDENTITY(1,1) NOT NULL,
	[CantidadProdPedido] [int] NOT NULL,
	[IDProducto] [int] NOT NULL,
	[IDPedido] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[IDDetallePedido] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DetalleVentas]    Script Date: 01/09/2023 13:19:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DetalleVentas](
	[IDDetalleVenta] [int] IDENTITY(1,1) NOT NULL,
	[CantidadProdVenta] [int] NOT NULL,
	[IDProducto] [int] NOT NULL,
	[IDVenta] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[IDDetalleVenta] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Direcciones]    Script Date: 01/09/2023 13:19:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Direcciones](
	[IDDireccion] [int] IDENTITY(1,1) NOT NULL,
	[Linea1] [varchar](300) NOT NULL,
	[Linea2] [varchar](300) NULL,
	[CoPo] [varchar](5) NOT NULL,
	[IDDistrito] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[IDDireccion] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Distritos]    Script Date: 01/09/2023 13:19:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Distritos](
	[IDDistrito] [int] IDENTITY(1,1) NOT NULL,
	[Distrito] [varchar](100) NOT NULL,
	[IDMunicipio] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[IDDistrito] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Empleados]    Script Date: 01/09/2023 13:19:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Empleados](
	[IDEmpleado] [int] IDENTITY(1,1) NOT NULL,
	[Nombre] [varchar](50) NOT NULL,
	[Apellido] [varchar](50) NOT NULL,
	[DUI] [int] NOT NULL,
	[ISSS] [int] NOT NULL,
	[FechaNacimiento] [date] NOT NULL,
	[Telefono] [varchar](20) NOT NULL,
	[Email] [varchar](100) NULL,
	[Genero] [varchar](10) NULL,
	[IDDireccion] [int] NULL,
	[IDCargo] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[IDEmpleado] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Facturas]    Script Date: 01/09/2023 13:19:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Facturas](
	[IDFactura] [int] IDENTITY(1,1) NOT NULL,
	[NumFactura] [varchar](45) NULL,
	[CreditoFiscal] [varchar](45) NULL,
	[IVA] [decimal](10, 2) NULL,
	[MontoTotal] [decimal](10, 2) NULL,
	[NIT] [varchar](45) NULL,
	[IDVenta] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[IDFactura] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Municipios]    Script Date: 01/09/2023 13:19:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Municipios](
	[IDMunicipio] [int] IDENTITY(1,1) NOT NULL,
	[Municipio] [varchar](100) NOT NULL,
	[IDDepartamento] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[IDMunicipio] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Pedidos]    Script Date: 01/09/2023 13:19:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Pedidos](
	[IDPedido] [int] IDENTITY(1,1) NOT NULL,
	[Fecha] [date] NOT NULL,
	[Monto] [decimal](10, 2) NOT NULL,
	[IDProveedor] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[IDPedido] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Productos]    Script Date: 01/09/2023 13:19:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Productos](
	[IDProducto] [int] IDENTITY(1,1) NOT NULL,
	[Nombre] [nvarchar](100) NOT NULL,
	[Descripcion] [varchar](max) NULL,
	[Precio] [decimal](10, 2) NOT NULL,
	[Stock] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[IDProducto] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Proveedores]    Script Date: 01/09/2023 13:19:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Proveedores](
	[IDProveedor] [int] IDENTITY(1,1) NOT NULL,
	[Nombre] [varchar](50) NOT NULL,
	[Telefono] [varchar](20) NOT NULL,
	[IDDireccion] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[IDProveedor] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Ventas]    Script Date: 01/09/2023 13:19:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Ventas](
	[IDVenta] [int] IDENTITY(1,1) NOT NULL,
	[Fecha] [date] NOT NULL,
	[Monto] [decimal](10, 2) NOT NULL,
	[IDCliente] [int] NOT NULL,
	[IDEmpleado] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[IDVenta] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Clientes]  WITH CHECK ADD FOREIGN KEY([IDDireccion])
REFERENCES [dbo].[Direcciones] ([IDDireccion])
GO
ALTER TABLE [dbo].[DetallePedidos]  WITH CHECK ADD FOREIGN KEY([IDPedido])
REFERENCES [dbo].[Pedidos] ([IDPedido])
GO
ALTER TABLE [dbo].[DetallePedidos]  WITH CHECK ADD FOREIGN KEY([IDProducto])
REFERENCES [dbo].[Productos] ([IDProducto])
GO
ALTER TABLE [dbo].[DetalleVentas]  WITH CHECK ADD FOREIGN KEY([IDProducto])
REFERENCES [dbo].[Productos] ([IDProducto])
GO
ALTER TABLE [dbo].[DetalleVentas]  WITH CHECK ADD FOREIGN KEY([IDVenta])
REFERENCES [dbo].[Ventas] ([IDVenta])
GO
ALTER TABLE [dbo].[Direcciones]  WITH CHECK ADD FOREIGN KEY([IDDistrito])
REFERENCES [dbo].[Distritos] ([IDDistrito])
GO
ALTER TABLE [dbo].[Distritos]  WITH CHECK ADD FOREIGN KEY([IDMunicipio])
REFERENCES [dbo].[Municipios] ([IDMunicipio])
GO
ALTER TABLE [dbo].[Empleados]  WITH CHECK ADD FOREIGN KEY([IDCargo])
REFERENCES [dbo].[Cargos] ([IDCargo])
GO
ALTER TABLE [dbo].[Empleados]  WITH CHECK ADD FOREIGN KEY([IDDireccion])
REFERENCES [dbo].[Direcciones] ([IDDireccion])
GO
ALTER TABLE [dbo].[Facturas]  WITH CHECK ADD FOREIGN KEY([IDVenta])
REFERENCES [dbo].[Ventas] ([IDVenta])
GO
ALTER TABLE [dbo].[Municipios]  WITH CHECK ADD FOREIGN KEY([IDDepartamento])
REFERENCES [dbo].[Departamentos] ([IDDepartamento])
GO
ALTER TABLE [dbo].[Pedidos]  WITH CHECK ADD FOREIGN KEY([IDProveedor])
REFERENCES [dbo].[Proveedores] ([IDProveedor])
GO
ALTER TABLE [dbo].[Proveedores]  WITH CHECK ADD FOREIGN KEY([IDDireccion])
REFERENCES [dbo].[Direcciones] ([IDDireccion])
GO
ALTER TABLE [dbo].[Ventas]  WITH CHECK ADD FOREIGN KEY([IDCliente])
REFERENCES [dbo].[Clientes] ([IDCliente])
GO
ALTER TABLE [dbo].[Ventas]  WITH CHECK ADD FOREIGN KEY([IDEmpleado])
REFERENCES [dbo].[Empleados] ([IDEmpleado])
GO
USE [master]
GO
ALTER DATABASE [FerreteriaDB] SET  READ_WRITE 
GO