USE [ETNA]
GO
/****** Object:  Table [dbo].[lote]    Script Date: 05/27/2015 23:45:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[lote](
	[idLote] [int] IDENTITY(1,1) NOT NULL,
	[fechaFabricacion] [datetime] NULL,
	[ordenFabricacion] [int] NULL,
	[fechaTomaMuestra] [datetime] NULL,
	[bloqueado] [int] NULL,
	[cantidadProducida] [int] NULL,
	[activo] [tinyint] NULL,
	[Cod_Usuario] [char](10) NOT NULL,
	[fechaCreacion] [datetime] NOT NULL,
	[fechaModificacion] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[idLote] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
ALTER TABLE [dbo].[lote]  WITH CHECK ADD  CONSTRAINT [lote_FKCONSTRAINT1] FOREIGN KEY([Cod_Usuario])
REFERENCES [dbo].[Usuario] ([Cod_Usuario])
GO
ALTER TABLE [dbo].[lote] CHECK CONSTRAINT [lote_FKCONSTRAINT1]
GO
