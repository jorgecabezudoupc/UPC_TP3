USE [ETNA]
GO
/****** Object:  Table [dbo].[inventario]    Script Date: 05/27/2015 23:45:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[inventario](
	[idInventario] [int] IDENTITY(1,1) NOT NULL,
	[idAlmacen] [int] NOT NULL,
	[idProgInventario] [int] NOT NULL,
	[fechaHoraInicio] [datetime] NULL,
	[fechaHoraFin] [datetime] NULL,
	[tipo] [int] NULL,
	[activo] [int] NULL,
	[Cod_Usuario] [char](10) NOT NULL,
	[fechaCreacion] [datetime] NULL,
	[fechaModificacion] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[idInventario] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
ALTER TABLE [dbo].[inventario]  WITH CHECK ADD  CONSTRAINT [inventario_FKCONSTRAINT1] FOREIGN KEY([idAlmacen])
REFERENCES [dbo].[almacen] ([idAlmacen])
GO
ALTER TABLE [dbo].[inventario] CHECK CONSTRAINT [inventario_FKCONSTRAINT1]
GO
ALTER TABLE [dbo].[inventario]  WITH CHECK ADD  CONSTRAINT [inventario_FKCONSTRAINT2] FOREIGN KEY([idProgInventario])
REFERENCES [dbo].[programacionInventario] ([idProgInventario])
GO
ALTER TABLE [dbo].[inventario] CHECK CONSTRAINT [inventario_FKCONSTRAINT2]
GO
ALTER TABLE [dbo].[inventario]  WITH CHECK ADD  CONSTRAINT [inventario_FKCONSTRAINT3] FOREIGN KEY([Cod_Usuario])
REFERENCES [dbo].[Usuario] ([Cod_Usuario])
GO
ALTER TABLE [dbo].[inventario] CHECK CONSTRAINT [inventario_FKCONSTRAINT3]
GO
