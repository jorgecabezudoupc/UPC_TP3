USE [ETNA]
GO
/****** Object:  Table [dbo].[RequerimientoDetalle]    Script Date: 05/27/2015 23:45:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RequerimientoDetalle](
	[codRequerimiento] [int] NOT NULL,
	[idProducto] [int] NOT NULL,
	[cantidad] [int] NOT NULL,
 CONSTRAINT [pk_requerimientoDetalle] PRIMARY KEY CLUSTERED 
(
	[codRequerimiento] ASC,
	[idProducto] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[RequerimientoDetalle]  WITH CHECK ADD  CONSTRAINT [fk_articulo] FOREIGN KEY([idProducto])
REFERENCES [dbo].[producto] ([idProducto])
GO
ALTER TABLE [dbo].[RequerimientoDetalle] CHECK CONSTRAINT [fk_articulo]
GO
ALTER TABLE [dbo].[RequerimientoDetalle]  WITH CHECK ADD  CONSTRAINT [fk_requerimientoCompras] FOREIGN KEY([codRequerimiento])
REFERENCES [dbo].[RequerimientoCompras] ([codRequerimiento])
GO
ALTER TABLE [dbo].[RequerimientoDetalle] CHECK CONSTRAINT [fk_requerimientoCompras]
GO
