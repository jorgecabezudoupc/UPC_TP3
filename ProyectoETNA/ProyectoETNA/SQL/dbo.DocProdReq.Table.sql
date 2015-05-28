USE [ETNA]
GO
/****** Object:  Table [dbo].[DocProdReq]    Script Date: 05/27/2015 23:45:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[DocProdReq](
	[Doc_Req] [decimal](10, 0) NOT NULL,
	[Doc_Prod] [numeric](7, 0) NOT NULL,
	[Doc_Siicex] [char](3) NOT NULL,
 CONSTRAINT [PK_DocProdReq] PRIMARY KEY CLUSTERED 
(
	[Doc_Req] ASC,
	[Doc_Prod] ASC,
	[Doc_Siicex] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Documento Producto Requisicion' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'DocProdReq'
GO
