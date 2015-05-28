USE [ETNA]
GO
/****** Object:  Table [dbo].[persona]    Script Date: 05/27/2015 23:45:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[persona](
	[idPersona] [int] IDENTITY(1,1) NOT NULL,
	[tipoPersona] [int] NULL,
	[nombres] [varchar](40) NULL,
	[apellidoPaterno] [varchar](40) NULL,
	[apellidoMaterno] [varchar](40) NULL,
	[razonSocial] [varchar](60) NULL,
	[tipoDocIdentidad] [int] NULL,
	[numeroDocIdentidad] [varchar](15) NULL,
	[direccion] [varchar](60) NULL,
	[telefono] [varchar](20) NULL,
	[correo] [varchar](40) NULL,
	[paginaWeb] [varchar](60) NULL,
	[fechaNacimiento] [datetime] NULL,
	[cargo] [varchar](50) NULL,
	[centrocosto] [varchar](50) NULL,
	[activo] [tinyint] NULL,
	[fechaIngreso] [datetime] NULL,
	[Cod_Usuario] [char](10) NOT NULL,
	[fechaCreacion] [datetime] NOT NULL,
	[fechaModificacion] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[idPersona] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
ALTER TABLE [dbo].[persona]  WITH CHECK ADD  CONSTRAINT [persona_FKCONSTRAINT1] FOREIGN KEY([tipoPersona])
REFERENCES [dbo].[tablaTipo] ([idTipo])
GO
ALTER TABLE [dbo].[persona] CHECK CONSTRAINT [persona_FKCONSTRAINT1]
GO
ALTER TABLE [dbo].[persona]  WITH CHECK ADD  CONSTRAINT [persona_FKCONSTRAINT2] FOREIGN KEY([tipoDocIdentidad])
REFERENCES [dbo].[tablaTipo] ([idTipo])
GO
ALTER TABLE [dbo].[persona] CHECK CONSTRAINT [persona_FKCONSTRAINT2]
GO
ALTER TABLE [dbo].[persona]  WITH CHECK ADD  CONSTRAINT [persona_FKCONSTRAINT3] FOREIGN KEY([Cod_Usuario])
REFERENCES [dbo].[Usuario] ([Cod_Usuario])
GO
ALTER TABLE [dbo].[persona] CHECK CONSTRAINT [persona_FKCONSTRAINT3]
GO
