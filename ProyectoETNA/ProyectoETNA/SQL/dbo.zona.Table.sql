USE [ETNA]
GO
/****** Object:  Table [dbo].[zona]    Script Date: 05/27/2015 23:45:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[zona](
	[idZona] [int] IDENTITY(1,1) NOT NULL,
	[idAlmacen] [int] NOT NULL,
	[idProducto] [int] NOT NULL,
	[fila] [int] NULL,
	[columna] [int] NULL,
	[nivel] [int] NULL,
	[posicion] [int] NULL,
	[metraje] [int] NULL,
	[capacidad] [int] NULL,
	[disponibilidad] [int] NULL,
	[observacion] [varchar](250) NULL,
	[activo] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[idZona] ASC,
	[idAlmacen] ASC,
	[idProducto] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
ALTER TABLE [dbo].[zona]  WITH CHECK ADD  CONSTRAINT [zona_FKCONSTRAINT1] FOREIGN KEY([idAlmacen])
REFERENCES [dbo].[almacen] ([idAlmacen])
GO
ALTER TABLE [dbo].[zona] CHECK CONSTRAINT [zona_FKCONSTRAINT1]
GO
