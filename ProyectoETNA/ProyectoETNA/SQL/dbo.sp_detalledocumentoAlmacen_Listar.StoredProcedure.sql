USE [ETNA]
GO
/****** Object:  StoredProcedure [dbo].[sp_detalledocumentoAlmacen_Listar]    Script Date: 05/27/2015 23:45:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[sp_detalledocumentoAlmacen_Listar]
(
@correlativo INT
)
AS
BEGIN
	SELECT  detalleDocumentoPendiente.idDocPendiente, detalleDocumentoPendiente.idDetalleDocPendiente, 
			detalleDocumentoPendiente.cantidadPedida, detalleDocumentoPendiente.cantidadAtendida,
			producto.idProducto,producto.codigoProducto, producto.descripcionProducto , producto.tipounidadMedida,
			TipoUnidadMedida.descripcion as descripcionUnidadMedida
	FROM	detalleDocumentoAlmacen INNER JOIN documentoAlmacen ON detalleDocumentoAlmacen.correlativo = documentoAlmacen.correlativo				
			INNER JOIN detalleDocumentoPendiente ON detalleDocumentoPendiente.idDetalleDocPendiente = detalleDocumentoAlmacen.idDetalleDocAlmacen
				AND detalleDocumentoPendiente.idProducto = detalleDocumentoAlmacen.idProducto 
				AND detalleDocumentoPendiente.idDocPendiente = documentoAlmacen.idDocPendiente			
			INNER JOIN producto ON detalleDocumentoAlmacen.idProducto = producto.idProducto
			INNER JOIN tablaTipo TipoUnidadMedida on TipoUnidadMedida.idTipo = producto.tipounidadMedida
	WHERE	documentoAlmacen.correlativo = @correlativo
END
GO
