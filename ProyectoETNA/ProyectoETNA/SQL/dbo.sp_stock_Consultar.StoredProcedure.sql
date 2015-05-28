USE [ETNA]
GO
/****** Object:  StoredProcedure [dbo].[sp_stock_Consultar]    Script Date: 05/27/2015 23:45:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[sp_stock_Consultar]
(
@idAlmacen INT,
@idProducto INT
)
AS
BEGIN
	SELECT	TOP 1 stock.* 
	FROM	stock
			inner join lote on stock.idLote = lote.idLote
	WHERE	idAlmacen = @idAlmacen
			AND idProducto = @idProducto
			AND lote.bloqueado = 0
	ORDER BY fechaCreacion ASC
END
GO
