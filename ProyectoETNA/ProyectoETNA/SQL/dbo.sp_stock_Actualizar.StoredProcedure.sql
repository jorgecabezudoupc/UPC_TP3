USE [ETNA]
GO
/****** Object:  StoredProcedure [dbo].[sp_stock_Actualizar]    Script Date: 05/27/2015 23:45:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[sp_stock_Actualizar]
(
@idAlmacen INT,
@idProducto INT,
@cantidadIngreso INT,
@cantidadSalida INT
)
AS
BEGIN
	UPDATE	stock
	SET		cantidad = cantidad + @cantidadIngreso - @cantidadSalida
	WHERE	idAlmacen = @idAlmacen
			AND idProducto = @idProducto
END
GO
