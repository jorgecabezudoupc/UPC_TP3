USE [ETNA]
GO
/****** Object:  Table [dbo].[SolicitudAtencion]    Script Date: 05/27/2015 23:45:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[SolicitudAtencion](
	[Cod_Solicitud] [decimal](10, 0) NOT NULL,
	[Cod_Cab_Req_Solicitud] [decimal](10, 0) NULL,
	[Res_Solicitud] [char](10) NULL,
	[Fec_Reg_Solicitud] [decimal](8, 0) NULL,
	[Fec_Res_Esp_Solicitud] [decimal](8, 0) NULL,
	[Fec_Desp_Solicitud] [decimal](8, 0) NULL,
	[Estado_Solicitud] [char](1) NULL,
	[Observacion_Solicitud] [varchar](max) NULL,
 CONSTRAINT [PK_SolicitudAtencion] PRIMARY KEY CLUSTERED 
(
	[Cod_Solicitud] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Tabla de solicitud de Atencion' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SolicitudAtencion'
GO
