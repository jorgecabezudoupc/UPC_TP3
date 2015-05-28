USE [ETNA]
GO
/****** Object:  StoredProcedure [dbo].[SP_OBTENER_DETALLEMOVIMIENTOS]    Script Date: 05/27/2015 23:45:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SP_OBTENER_DETALLEMOVIMIENTOS]
(
	@IN_IDDOCPENDIENTE INTEGER
)
AS
BEGIN

	SELECT d.idProducto, d.cantidadPedida, d.cantidadAtendida, p.codigoProducto, p.descripcionProducto
	FROM detalleDocumentoPendiente d INNER JOIN producto p ON d.idProducto = p.idProducto
	WHERE d.idDocPendiente = @IN_IDDOCPENDIENTE
	ORDER BY d.idProducto ASC
END
GO
