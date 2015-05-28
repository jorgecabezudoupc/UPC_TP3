USE [ETNA]
GO
/****** Object:  StoredProcedure [dbo].[sp_DetalleDocumentoPendiente_Listar]    Script Date: 05/27/2015 23:45:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[sp_DetalleDocumentoPendiente_Listar]
(
@idDocPendiente INT
)
AS
BEGIN
	SELECT  detalleDocumentoPendiente.idDocPendiente, detalleDocumentoPendiente.idDetalleDocPendiente, 
			detalleDocumentoPendiente.cantidadPedida, detalleDocumentoPendiente.cantidadAtendida,
			producto.idProducto,producto.codigoProducto, producto.descripcionProducto , producto.tipounidadMedida,
			TipoUnidadMedida.descripcion as descripcionUnidadMedida
	FROM	detalleDocumentoPendiente INNER JOIN documentoPendiente ON detalleDocumentoPendiente.idDocPendiente = documentoPendiente.idDocPendiente				
			INNER JOIN producto ON detalleDocumentoPendiente.idProducto = producto.idProducto
			INNER JOIN tablaTipo TipoUnidadMedida on TipoUnidadMedida.idTipo = producto.tipounidadMedida
	WHERE	documentoPendiente.idDocPendiente = @idDocPendiente
END
GO
