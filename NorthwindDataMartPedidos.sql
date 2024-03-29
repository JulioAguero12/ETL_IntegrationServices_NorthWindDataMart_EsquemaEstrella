﻿USE [master]
GO
/****** Object:  Database [NorthwindDataMartPedidos]    Script Date: 21/02/2022 01:05:13 p. m. ******/
CREATE DATABASE [NorthwindDataMartPedidos]
GO
ALTER DATABASE [NorthwindDataMartPedidos] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [NorthwindDataMartPedidos].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [NorthwindDataMartPedidos] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [NorthwindDataMartPedidos] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [NorthwindDataMartPedidos] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [NorthwindDataMartPedidos] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [NorthwindDataMartPedidos] SET ARITHABORT OFF 
GO
ALTER DATABASE [NorthwindDataMartPedidos] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [NorthwindDataMartPedidos] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [NorthwindDataMartPedidos] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [NorthwindDataMartPedidos] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [NorthwindDataMartPedidos] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [NorthwindDataMartPedidos] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [NorthwindDataMartPedidos] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [NorthwindDataMartPedidos] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [NorthwindDataMartPedidos] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [NorthwindDataMartPedidos] SET  DISABLE_BROKER 
GO
ALTER DATABASE [NorthwindDataMartPedidos] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [NorthwindDataMartPedidos] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [NorthwindDataMartPedidos] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [NorthwindDataMartPedidos] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [NorthwindDataMartPedidos] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [NorthwindDataMartPedidos] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [NorthwindDataMartPedidos] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [NorthwindDataMartPedidos] SET RECOVERY FULL 
GO
ALTER DATABASE [NorthwindDataMartPedidos] SET  MULTI_USER 
GO
ALTER DATABASE [NorthwindDataMartPedidos] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [NorthwindDataMartPedidos] SET DB_CHAINING OFF 
GO
ALTER DATABASE [NorthwindDataMartPedidos] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [NorthwindDataMartPedidos] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [NorthwindDataMartPedidos] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [NorthwindDataMartPedidos] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'NorthwindDataMartPedidos', N'ON'
GO
ALTER DATABASE [NorthwindDataMartPedidos] SET QUERY_STORE = OFF
GO
USE [NorthwindDataMartPedidos]
GO
/****** Object:  Table [dbo].[Clientes]    Script Date: 21/02/2022 01:05:13 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Clientes](
	[Cli_Id] [int] IDENTITY(1,1) NOT NULL,
	[Cli_NombreEmpresa] [nvarchar](50) NULL,
	[Cli_NombreContacto] [nvarchar](50) NULL,
	[Pais] [nvarchar](50) NULL,
	[Ciudad] [nvarchar](50) NULL,
 CONSTRAINT [PK_Clientes] PRIMARY KEY CLUSTERED 
(
	[Cli_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Empleados]    Script Date: 21/02/2022 01:05:13 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Empleados](
	[Emp_Id] [int] IDENTITY(1,1) NOT NULL,
	[Emp_Apellido] [nvarchar](50) NULL,
	[Emp_Nombre] [nvarchar](50) NULL,
	[Emp_Reporte] [int] NULL,
	[Emp_Country] [nvarchar](50) NULL,
 CONSTRAINT [PK_Empleados] PRIMARY KEY CLUSTERED 
(
	[Emp_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Pedidos]    Script Date: 21/02/2022 01:05:13 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Pedidos](
	[Emp_Id] [int] NOT NULL,
	[Clid_Id] [int] NOT NULL,
	[Prod_Id] [int] NOT NULL,
	[PF_Id] [int] NOT NULL,
	[precio] [float] NOT NULL,
	[cantidad] [float] NOT NULL,
	[IngresoTotal] [float] NOT NULL,
 CONSTRAINT [PK_Pedidos] PRIMARY KEY CLUSTERED 
(
	[Emp_Id] ASC,
	[Clid_Id] ASC,
	[Prod_Id] ASC,
	[PF_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PedidosFecha]    Script Date: 21/02/2022 01:05:13 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PedidosFecha](
	[PF_Id] [int] IDENTITY(1,1) NOT NULL,
	[fecha] [date] NULL,
	[anio] [int] NULL,
	[mes] [nvarchar](50) NULL,
	[dia] [int] NULL,
 CONSTRAINT [PK_PedidosFecha] PRIMARY KEY CLUSTERED 
(
	[PF_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Productos]    Script Date: 21/02/2022 01:05:13 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Productos](
	[Prod_Id] [int] IDENTITY(1,1) NOT NULL,
	[Prod_Nombre] [nvarchar](50) NULL,
	[CategoriaNombre] [nvarchar](50) NULL,
	[CompaniaNombre] [nvarchar](50) NULL,
 CONSTRAINT [PK_Productos] PRIMARY KEY CLUSTERED 
(
	[Prod_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Pedidos]  WITH CHECK ADD  CONSTRAINT [FK_Pedidos_Clientes] FOREIGN KEY([Clid_Id])
REFERENCES [dbo].[Clientes] ([Cli_Id])
GO
ALTER TABLE [dbo].[Pedidos] CHECK CONSTRAINT [FK_Pedidos_Clientes]
GO
ALTER TABLE [dbo].[Pedidos]  WITH CHECK ADD  CONSTRAINT [FK_Pedidos_Empleados] FOREIGN KEY([Emp_Id])
REFERENCES [dbo].[Empleados] ([Emp_Id])
GO
ALTER TABLE [dbo].[Pedidos] CHECK CONSTRAINT [FK_Pedidos_Empleados]
GO
ALTER TABLE [dbo].[Pedidos]  WITH CHECK ADD  CONSTRAINT [FK_Pedidos_PedidosFecha] FOREIGN KEY([PF_Id])
REFERENCES [dbo].[PedidosFecha] ([PF_Id])
GO
ALTER TABLE [dbo].[Pedidos] CHECK CONSTRAINT [FK_Pedidos_PedidosFecha]
GO
ALTER TABLE [dbo].[Pedidos]  WITH CHECK ADD  CONSTRAINT [FK_Pedidos_Productos] FOREIGN KEY([Prod_Id])
REFERENCES [dbo].[Productos] ([Prod_Id])
GO
ALTER TABLE [dbo].[Pedidos] CHECK CONSTRAINT [FK_Pedidos_Productos]
GO
USE [master]
GO
ALTER DATABASE [NorthwindDataMartPedidos] SET  READ_WRITE 
GO
