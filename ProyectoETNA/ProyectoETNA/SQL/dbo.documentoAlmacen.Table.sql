USE [ETNA]
GO
/****** Object:  Table [dbo].[documentoAlmacen]    Script Date: 05/27/2015 23:45:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[documentoAlmacen](
	[correlativo] [int] NOT NULL,
	[idDocPendiente] [int] NOT NULL,
	[numeroDocAlmacen] [varchar](20) NOT NULL,
	[tipoMovimiento] [int] NULL,
	[fechaDocumento] [datetime] NULL,
	[idAlmacen] [int] NULL,
	[activo] [int] NULL,
	[Cod_Usuario] [char](10) NOT NULL,
	[fechaCreacion] [datetime] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[correlativo] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
ALTER TABLE [dbo].[documentoAlmacen]  WITH CHECK ADD  CONSTRAINT [documentoAlmacen_FKCONSTRAINT1] FOREIGN KEY([idDocPendiente])
REFERENCES [dbo].[documentoPendiente] ([idDocPendiente])
GO
ALTER TABLE [dbo].[documentoAlmacen] CHECK CONSTRAINT [documentoAlmacen_FKCONSTRAINT1]
GO
ALTER TABLE [dbo].[documentoAlmacen]  WITH CHECK ADD  CONSTRAINT [documentoAlmacen_FKCONSTRAINT2] FOREIGN KEY([tipoMovimiento])
REFERENCES [dbo].[tablaTipo] ([idTipo])
GO
ALTER TABLE [dbo].[documentoAlmacen] CHECK CONSTRAINT [documentoAlmacen_FKCONSTRAINT2]
GO
ALTER TABLE [dbo].[documentoAlmacen]  WITH CHECK ADD  CONSTRAINT [documentoAlmacen_FKCONSTRAINT3] FOREIGN KEY([Cod_Usuario])
REFERENCES [dbo].[Usuario] ([Cod_Usuario])
GO
ALTER TABLE [dbo].[documentoAlmacen] CHECK CONSTRAINT [documentoAlmacen_FKCONSTRAINT3]
GO
ALTER TABLE [dbo].[documentoAlmacen]  WITH CHECK ADD  CONSTRAINT [documentoAlmacen_FKCONSTRAINT4] FOREIGN KEY([idAlmacen])
REFERENCES [dbo].[almacen] ([idAlmacen])
GO
ALTER TABLE [dbo].[documentoAlmacen] CHECK CONSTRAINT [documentoAlmacen_FKCONSTRAINT4]
GO
