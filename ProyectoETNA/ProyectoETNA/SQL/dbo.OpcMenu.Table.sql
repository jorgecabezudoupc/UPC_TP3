USE [ETNA]
GO
/****** Object:  Table [dbo].[OpcMenu]    Script Date: 05/27/2015 23:45:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[OpcMenu](
	[Cod_OpcionMenu] [char](6) NOT NULL,
	[Des_opcionMenu] [varchar](100) NULL,
 CONSTRAINT [PK_OpcMenu] PRIMARY KEY CLUSTERED 
(
	[Cod_OpcionMenu] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Opciones Menu' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'OpcMenu'
GO
