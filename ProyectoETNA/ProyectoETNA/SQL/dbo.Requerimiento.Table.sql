USE [ETNA]
GO
/****** Object:  Table [dbo].[Requerimiento]    Script Date: 05/27/2015 23:45:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Requerimiento](
	[Cod_Cab_Req] [decimal](10, 0) NOT NULL,
	[Cli_Cab_Req] [numeric](9, 0) NULL,
	[Pais_Cab_Req] [char](3) NULL,
	[Destino_Cab_Req] [varchar](100) NULL,
	[IATA_Cab_Req] [char](5) NULL,
	[Fec_Reg_Cab_Req] [decimal](8, 0) NULL,
	[Fec_Esp_Cab_Req] [decimal](8, 0) NULL,
	[Pre_Tot_Cab_Req] [decimal](18, 3) NULL,
	[Est_Cab_Req] [char](1) NULL,
	[Obs_Cab_Req] [varchar](max) NULL,
 CONSTRAINT [PK_Requerimiento] PRIMARY KEY CLUSTERED 
(
	[Cod_Cab_Req] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Tabla de Requerimiento' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Requerimiento'
GO
