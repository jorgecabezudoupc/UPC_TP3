USE [ETNA]
GO
/****** Object:  StoredProcedure [dbo].[SP_OBTENER_DETALLE_INVENTARIO]    Script Date: 05/27/2015 23:45:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SP_OBTENER_DETALLE_INVENTARIO]
(
	@IN_IDINVENTARIO INTEGER
)
AS
BEGIN
	SELECT	d.idDetalleInventario id, p.descripcionProducto producto, d.fechaHoraToma fecha, d.cantidad cantidad
	FROM detalleInventario d INNER JOIN producto p ON d.idProducto = p.idProducto
	WHERE d.idInventario = @IN_IDINVENTARIO
	ORDER BY p.descripcionProducto DESC
END
GO
