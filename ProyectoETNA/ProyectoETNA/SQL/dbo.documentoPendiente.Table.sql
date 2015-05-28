USE [ETNA]
GO
/****** Object:  Table [dbo].[documentoPendiente]    Script Date: 05/27/2015 23:45:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[documentoPendiente](
	[idDocPendiente] [int] NOT NULL,
	[numeroDocPendiente] [varchar](10) NOT NULL,
	[tipoDocumentoPendiente] [int] NULL,
	[idClienteProveedor] [int] NOT NULL,
	[fechaDocumento] [datetime] NULL,
	[situacionatencion] [int] NULL,
	[activo] [int] NULL,
	[Cod_Usuario] [char](10) NOT NULL,
	[fechaCreacion] [datetime] NOT NULL,
	[tipoMovimiento] [int] NULL,
	[idAlmacen] [int] NULL,
	[areaSolicitante] [varchar](100) NULL,
	[idUsuarioSolicitante] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[idDocPendiente] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
