USE [ETNA]
GO
/****** Object:  StoredProcedure [dbo].[sp_documentoAlmacen_Listar]    Script Date: 05/27/2015 23:45:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[sp_documentoAlmacen_Listar]
(
@tipoMovimiento INT = NULL ,
@correlativo INT = NULL
)
AS
BEGIN
	SELECT	documentoAlmacen.correlativo,documentoAlmacen.idDocPendiente,documentoAlmacen.numeroDocAlmacen,
			documentoAlmacen.tipoMovimiento,documentoAlmacen.fechaDocumento,documentoAlmacen.idAlmacen,documentoAlmacen.activo,
			almacen.descripcionAlmacen,
			TipoMovimiento.descripcion as descripcionTipoMovimiento,
			documentoPendiente.numeroDocPendiente,
			TipoDocumentoPendiente.descripcion as descripcionDocumentoPendiente,
			persona.nombres + ' ' + persona.apellidoPaterno + ' ' + persona.apellidoMaterno  as Origen , persona.centrocosto
	FROM	documentoAlmacen 
			INNER JOIN almacen ON documentoAlmacen.idAlmacen = almacen.idAlmacen
			INNER JOIN tablaTipo TipoMovimiento ON documentoAlmacen.tipoMovimiento = TipoMovimiento.idTipo
			INNER JOIN documentoPendiente ON documentoAlmacen.idDocPendiente = documentoPendiente.idDocPendiente
			INNER JOIN tablaTipo TipoDocumentoPendiente ON documentoPendiente.tipoDocumentoPendiente = TipoDocumentoPendiente.idTipo
			INNER JOIN persona ON documentoPendiente.idClienteProveedor = persona.idPersona
	WHERE	(@tipoMovimiento IS NULL OR documentoAlmacen.tipoMovimiento = @tipoMovimiento)
			AND (@correlativo IS NULL OR documentoAlmacen.correlativo = @correlativo)
END
GO
