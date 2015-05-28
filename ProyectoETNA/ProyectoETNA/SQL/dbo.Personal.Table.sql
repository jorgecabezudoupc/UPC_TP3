USE [ETNA]
GO
/****** Object:  Table [dbo].[Personal]    Script Date: 05/27/2015 23:45:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Personal](
	[codPersonal] [int] NOT NULL,
	[codCargo] [int] NOT NULL,
	[nomPersonal] [varchar](30) NULL,
	[telefono] [numeric](9, 0) NULL,
	[direccion] [varchar](30) NULL,
	[usuario] [varchar](15) NULL,
	[clave] [varchar](15) NULL,
 CONSTRAINT [pk_personal] PRIMARY KEY CLUSTERED 
(
	[codPersonal] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
ALTER TABLE [dbo].[Personal]  WITH CHECK ADD  CONSTRAINT [fk_cargo] FOREIGN KEY([codCargo])
REFERENCES [dbo].[Cargo] ([codCargo])
GO
ALTER TABLE [dbo].[Personal] CHECK CONSTRAINT [fk_cargo]
GO
