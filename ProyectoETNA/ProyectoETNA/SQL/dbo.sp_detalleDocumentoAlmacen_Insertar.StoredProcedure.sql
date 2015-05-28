USE [ETNA]
GO
/****** Object:  StoredProcedure [dbo].[sp_detalleDocumentoAlmacen_Insertar]    Script Date: 05/27/2015 23:45:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[sp_detalleDocumentoAlmacen_Insertar]
(
@correlativo	int ,
@idDetalleDocAlmacen	int ,
@idProducto	int ,
@cantidad	int ,
@idDocPendiente int
)		
AS
BEGIN
	INSERT 
	INTO detalleDocumentoAlmacen
	(
		correlativo,
		idDetalleDocAlmacen,
		idProducto,
		cantidad		
	)
	VALUES
	(
		@correlativo,
		@idDetalleDocAlmacen,
		@idProducto,
		@cantidad	
	)
	
	--ACTUALIZAR EL DETALLE DEL DOCUMENTO PENDIENTE
	UPDATE	detalleDocumentoPendiente
	SET		cantidadAtendida = cantidadAtendida + @cantidad
	WHERE	idProducto = @idProducto
			AND idDetalleDocPendiente = @idDetalleDocAlmacen
			AND idDocPendiente = @idDocPendiente
		
END
GO
