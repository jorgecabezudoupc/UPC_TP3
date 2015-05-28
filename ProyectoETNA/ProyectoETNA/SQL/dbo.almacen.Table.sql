USE [ETNA]
GO
/****** Object:  Table [dbo].[almacen]    Script Date: 05/27/2015 23:45:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[almacen](
	[idAlmacen] [int] IDENTITY(1,1) NOT NULL,
	[descripcionAlmacen] [varchar](100) NOT NULL,
	[idSupervisorAlmacen] [int] NOT NULL,
	[direccion] [varchar](50) NULL,
	[ubigeo] [varchar](10) NULL,
	[telefono] [varchar](20) NULL,
	[tipoAlmacen] [int] NULL,
	[metraje] [float] NULL,
	[activo] [int] NULL,
	[Cod_Usuario] [char](10) NOT NULL,
	[fechaCreacion] [datetime] NOT NULL,
	[fechaModificacion] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[idAlmacen] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
