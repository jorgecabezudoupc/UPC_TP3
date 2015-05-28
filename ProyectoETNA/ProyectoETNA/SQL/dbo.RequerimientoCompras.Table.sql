USE [ETNA]
GO
/****** Object:  Table [dbo].[RequerimientoCompras]    Script Date: 05/27/2015 23:45:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[RequerimientoCompras](
	[codRequerimiento] [int] IDENTITY(1,1) NOT NULL,
	[codPersonal] [int] NOT NULL,
	[codEstado] [int] NOT NULL,
	[codCategoria] [int] NOT NULL,
	[fechaRegistro] [datetime] NOT NULL,
	[observacion] [varchar](150) NULL,
 CONSTRAINT [pk_requerimientoCompras] PRIMARY KEY CLUSTERED 
(
	[codRequerimiento] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
ALTER TABLE [dbo].[RequerimientoCompras]  WITH CHECK ADD  CONSTRAINT [fk_categoria_req] FOREIGN KEY([codCategoria])
REFERENCES [dbo].[Categoria] ([codCategoria])
GO
ALTER TABLE [dbo].[RequerimientoCompras] CHECK CONSTRAINT [fk_categoria_req]
GO
ALTER TABLE [dbo].[RequerimientoCompras]  WITH CHECK ADD  CONSTRAINT [fk_personal_req] FOREIGN KEY([codPersonal])
REFERENCES [dbo].[Personal] ([codPersonal])
GO
ALTER TABLE [dbo].[RequerimientoCompras] CHECK CONSTRAINT [fk_personal_req]
GO
