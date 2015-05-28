USE [ETNA]
GO
/****** Object:  Table [dbo].[detalleInventario]    Script Date: 05/27/2015 23:45:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[detalleInventario](
	[idDetalleInventario] [int] IDENTITY(1,1) NOT NULL,
	[idInventario] [int] NOT NULL,
	[idAlmacen] [int] NOT NULL,
	[idProducto] [int] NOT NULL,
	[idOperadorAlmacen] [int] NOT NULL,
	[cantidadActual] [int] NULL,
	[cantidad] [int] NULL,
	[cantidadAjuste] [int] NULL,
	[fechaHoraToma] [datetime] NULL,
	[numeroToma] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[idDetalleInventario] ASC,
	[idInventario] ASC,
	[idAlmacen] ASC,
	[idProducto] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[detalleInventario]  WITH CHECK ADD  CONSTRAINT [detalleInventario_FKCONSTRAINT1] FOREIGN KEY([idInventario])
REFERENCES [dbo].[inventario] ([idInventario])
GO
ALTER TABLE [dbo].[detalleInventario] CHECK CONSTRAINT [detalleInventario_FKCONSTRAINT1]
GO
ALTER TABLE [dbo].[detalleInventario]  WITH CHECK ADD  CONSTRAINT [detalleInventario_FKCONSTRAINT2] FOREIGN KEY([idOperadorAlmacen])
REFERENCES [dbo].[persona] ([idPersona])
GO
ALTER TABLE [dbo].[detalleInventario] CHECK CONSTRAINT [detalleInventario_FKCONSTRAINT2]
GO
ALTER TABLE [dbo].[detalleInventario]  WITH CHECK ADD  CONSTRAINT [detalleInventario_FKCONSTRAINT3] FOREIGN KEY([idAlmacen])
REFERENCES [dbo].[almacen] ([idAlmacen])
GO
ALTER TABLE [dbo].[detalleInventario] CHECK CONSTRAINT [detalleInventario_FKCONSTRAINT3]
GO
