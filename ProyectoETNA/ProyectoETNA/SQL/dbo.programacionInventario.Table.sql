USE [ETNA]
GO
/****** Object:  Table [dbo].[programacionInventario]    Script Date: 05/27/2015 23:45:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[programacionInventario](
	[idProgInventario] [int] IDENTITY(1,1) NOT NULL,
	[tipoInventario] [int] NULL,
	[fechaProgramada] [datetime] NULL,
	[frecuencia] [int] NULL,
	[idAlmacen] [int] NOT NULL,
	[idPersona] [int] NOT NULL,
	[idEstadoInventario] [int] NOT NULL,
	[activo] [tinyint] NULL,
	[Cod_Usuario] [char](10) NOT NULL,
	[fechaCreacion] [datetime] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[idProgInventario] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
ALTER TABLE [dbo].[programacionInventario]  WITH CHECK ADD  CONSTRAINT [programacionInventario_FKCONSTRAINT1] FOREIGN KEY([tipoInventario])
REFERENCES [dbo].[tablaTipo] ([idTipo])
GO
ALTER TABLE [dbo].[programacionInventario] CHECK CONSTRAINT [programacionInventario_FKCONSTRAINT1]
GO
ALTER TABLE [dbo].[programacionInventario]  WITH CHECK ADD  CONSTRAINT [programacionInventario_FKCONSTRAINT2] FOREIGN KEY([Cod_Usuario])
REFERENCES [dbo].[Usuario] ([Cod_Usuario])
GO
ALTER TABLE [dbo].[programacionInventario] CHECK CONSTRAINT [programacionInventario_FKCONSTRAINT2]
GO
ALTER TABLE [dbo].[programacionInventario]  WITH CHECK ADD  CONSTRAINT [programacionInventario_FKCONSTRAINT3] FOREIGN KEY([idAlmacen])
REFERENCES [dbo].[almacen] ([idAlmacen])
GO
ALTER TABLE [dbo].[programacionInventario] CHECK CONSTRAINT [programacionInventario_FKCONSTRAINT3]
GO
ALTER TABLE [dbo].[programacionInventario]  WITH CHECK ADD  CONSTRAINT [programacionInventario_FKCONSTRAINT4] FOREIGN KEY([idPersona])
REFERENCES [dbo].[persona] ([idPersona])
GO
ALTER TABLE [dbo].[programacionInventario] CHECK CONSTRAINT [programacionInventario_FKCONSTRAINT4]
GO
ALTER TABLE [dbo].[programacionInventario]  WITH CHECK ADD  CONSTRAINT [programacionInventario_FKCONSTRAINT5] FOREIGN KEY([idEstadoInventario])
REFERENCES [dbo].[tablaTipo] ([idTipo])
GO
ALTER TABLE [dbo].[programacionInventario] CHECK CONSTRAINT [programacionInventario_FKCONSTRAINT5]
GO
