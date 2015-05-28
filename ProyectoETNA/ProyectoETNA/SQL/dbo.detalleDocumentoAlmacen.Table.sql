USE [ETNA]
GO
/****** Object:  Table [dbo].[detalleDocumentoAlmacen]    Script Date: 05/27/2015 23:45:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[detalleDocumentoAlmacen](
	[correlativo] [int] NOT NULL,
	[idDetalleDocAlmacen] [int] NOT NULL,
	[idProducto] [int] NOT NULL,
	[cantidad] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[idDetalleDocAlmacen] ASC,
	[correlativo] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[detalleDocumentoAlmacen]  WITH CHECK ADD  CONSTRAINT [detalleDocumentoAlmacen_FKCONSTRAINT1] FOREIGN KEY([correlativo])
REFERENCES [dbo].[documentoAlmacen] ([correlativo])
GO
ALTER TABLE [dbo].[detalleDocumentoAlmacen] CHECK CONSTRAINT [detalleDocumentoAlmacen_FKCONSTRAINT1]
GO
