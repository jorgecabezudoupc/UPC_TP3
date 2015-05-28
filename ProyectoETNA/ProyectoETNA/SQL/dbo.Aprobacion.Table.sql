USE [ETNA]
GO
/****** Object:  Table [dbo].[Aprobacion]    Script Date: 05/27/2015 23:45:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Aprobacion](
	[codRequerimiento] [int] NOT NULL,
	[codEstado] [int] NOT NULL,
	[codPersonal] [int] NOT NULL,
 CONSTRAINT [pk_aprobacion] PRIMARY KEY CLUSTERED 
(
	[codRequerimiento] ASC,
	[codEstado] ASC,
	[codPersonal] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Aprobacion]  WITH CHECK ADD  CONSTRAINT [fk_estado_aprobacion] FOREIGN KEY([codEstado])
REFERENCES [dbo].[Estado] ([codEstado])
GO
ALTER TABLE [dbo].[Aprobacion] CHECK CONSTRAINT [fk_estado_aprobacion]
GO
ALTER TABLE [dbo].[Aprobacion]  WITH CHECK ADD  CONSTRAINT [fk_personal_aprobacion] FOREIGN KEY([codPersonal])
REFERENCES [dbo].[Personal] ([codPersonal])
GO
ALTER TABLE [dbo].[Aprobacion] CHECK CONSTRAINT [fk_personal_aprobacion]
GO
ALTER TABLE [dbo].[Aprobacion]  WITH CHECK ADD  CONSTRAINT [fk_requerimiento_aprobacion] FOREIGN KEY([codRequerimiento])
REFERENCES [dbo].[RequerimientoCompras] ([codRequerimiento])
GO
ALTER TABLE [dbo].[Aprobacion] CHECK CONSTRAINT [fk_requerimiento_aprobacion]
GO
