USE [ETNA]
GO
/****** Object:  Table [dbo].[detalleDocumentoPendiente]    Script Date: 05/27/2015 23:45:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[detalleDocumentoPendiente](
	[idDocPendiente] [int] NOT NULL,
	[idDetalleDocPendiente] [int] NOT NULL,
	[idProducto] [int] NOT NULL,
	[cantidadPedida] [int] NULL,
	[cantidadAtendida] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[idDetalleDocPendiente] ASC,
	[idDocPendiente] ASC,
	[idProducto] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[detalleDocumentoPendiente]  WITH CHECK ADD  CONSTRAINT [detalleDocumentoPendiente_FKCONSTRAINT2] FOREIGN KEY([idDocPendiente])
REFERENCES [dbo].[documentoPendiente] ([idDocPendiente])
GO
ALTER TABLE [dbo].[detalleDocumentoPendiente] CHECK CONSTRAINT [detalleDocumentoPendiente_FKCONSTRAINT2]
GO
