USE [ETNA]
GO
/****** Object:  Table [dbo].[Requerimiento_Detalle]    Script Date: 05/27/2015 23:45:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Requerimiento_Detalle](
	[Cod_Det_Req] [decimal](10, 0) NOT NULL,
	[Cod_Prod_Det_Req] [decimal](7, 0) NOT NULL,
	[Cantidad] [int] NULL,
	[Precio_Unit] [decimal](18, 3) NULL,
	[CIF] [decimal](18, 3) NULL,
	[FOB] [decimal](18, 3) NULL,
 CONSTRAINT [PK_Requerimiento_Detalle] PRIMARY KEY CLUSTERED 
(
	[Cod_Det_Req] ASC,
	[Cod_Prod_Det_Req] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Tabla Detalle de Requerimiento' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Requerimiento_Detalle'
GO
