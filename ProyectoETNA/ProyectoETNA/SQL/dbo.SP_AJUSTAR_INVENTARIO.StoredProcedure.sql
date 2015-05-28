USE [ETNA]
GO
/****** Object:  StoredProcedure [dbo].[SP_AJUSTAR_INVENTARIO]    Script Date: 05/27/2015 23:45:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SP_AJUSTAR_INVENTARIO]
(
	@IN_idProgInventario INTEGER
)
AS
BEGIN
	DECLARE @IN_idProducto INTEGER, @IN_cantidad INTEGER, @IN_cantidadActual INTEGER, @IN_idInventario INTEGER,
			@Ch_Cod_Usuario CHAR(10), @IN_idAlmacen INTEGER
			
	DECLARE @numeroDoc VARCHAR(10), @tipoDoc INTEGER, @situacion INTEGER, @tipoMovimiento INTEGER, @IN_idDoc INTEGER, @IN_cantidadAjuste INTEGER
	
	BEGIN
		SELECT @IN_idInventario = idInventario, @Ch_Cod_Usuario = Cod_Usuario, @IN_idAlmacen = idAlmacen
		FROM inventario WHERE idProgInventario = @IN_idProgInventario
	END
	
	DECLARE detalle_cursor CURSOR FOR 
	SELECT cantidadActual, cantidad, idProducto
	FROM detalleInventario
	WHERE idInventario = @IN_idInventario
	
	OPEN detalle_cursor
	
	FETCH NEXT FROM detalle_cursor 
	INTO @IN_cantidadActual, @IN_cantidad, @IN_idProducto
	
	WHILE @@FETCH_STATUS = 0
	BEGIN
		UPDATE detalleInventario
		SET cantidadAjuste = @IN_cantidadActual - @IN_cantidad
		WHERE idProducto = @IN_idProducto AND idInventario = @IN_idInventario
		
		FETCH NEXT FROM detalle_cursor 
		INTO @IN_cantidadActual, @IN_cantidad, @IN_idProducto
	END 
	CLOSE detalle_cursor
	DEALLOCATE detalle_cursor
	
	
	BEGIN
		SET @numeroDoc = isnull((SELECT MAX(numeroDocPendiente) FROM documentoPendiente),0)
		
		SET @situacion = (SELECT idTipo FROM tablaTipo WHERE nombre = 'TOTAL')
		
		IF (SELECT SUM(cantidadAjuste) FROM detalleInventario WHERE idInventario = @IN_idInventario) > 0
		BEGIN
			SET @tipoDoc = (SELECT idTipo FROM tablaTipo WHERE nombre = 'SALIDA')
			
			INSERT INTO documentoPendiente (numeroDocPendiente, tipoDocumentoPendiente, idClienteProveedor, fechaDocumento, situacionatencion,
					activo, Cod_Usuario, fechaCreacion, tipoMovimiento, idAlmacen, areaSolicitante, idUsuarioSolicitante)
			VALUES (@numeroDoc, @tipoDoc, 1, GETDATE(), @situacion, 1, @Ch_Cod_Usuario, GETDATE(), @tipoDoc, @IN_idAlmacen, 'Sistema', @Ch_Cod_Usuario)
			
			SELECT @IN_idDoc = SCOPE_IDENTITY()
		END
		
		IF (SELECT SUM(cantidadAjuste) FROM detalleInventario WHERE idInventario = @IN_idInventario) < 0
		BEGIN
			SET @tipoDoc = (SELECT idTipo FROM tablaTipo WHERE nombre = 'INGRESO')
			
			INSERT INTO documentoPendiente (numeroDocPendiente, tipoDocumentoPendiente, idClienteProveedor, fechaDocumento, situacionatencion,
					activo, Cod_Usuario, fechaCreacion, tipoMovimiento, idAlmacen, areaSolicitante, idUsuarioSolicitante)
			VALUES (@numeroDoc, @tipoDoc, 1, GETDATE(), @situacion, 1, @Ch_Cod_Usuario, GETDATE(), @tipoDoc, @IN_idAlmacen, 'Sistema', @Ch_Cod_Usuario)
			
			SELECT @IN_idDoc = SCOPE_IDENTITY()
		END
	END
	
	DECLARE detalle_pendiente_cursor CURSOR FOR 
	SELECT cantidadAjuste, idProducto
	FROM detalleInventario
	WHERE idInventario = @IN_idInventario
	
	OPEN detalle_pendiente_cursor
	
	FETCH NEXT FROM detalle_pendiente_cursor 
	INTO @IN_cantidadAjuste, @IN_idProducto
	
	WHILE @@FETCH_STATUS = 0
	BEGIN
		INSERT INTO detalleDocumentoPendiente (idDocPendiente, idProducto, cantidadPedida)
		VALUES (@IN_idDoc, @IN_idProducto, @IN_cantidadAjuste)
		
		FETCH NEXT FROM detalle_pendiente_cursor 
		INTO @IN_cantidadAjuste, @IN_idProducto
	END 
	CLOSE detalle_pendiente_cursor
	DEALLOCATE detalle_pendiente_cursor
	
	BEGIN
		UPDATE programacionInventario 
		SET idEstadoInventario = (SELECT idTipo FROM tablaTipo WHERE nombre = 'FINALIZADO')
		WHERE idProgInventario = @IN_idProgInventario
		
		UPDATE inventario
		SET activo = 0, fechaHoraFin = GETDATE()
		WHERE idInventario = @IN_idInventario
	END
	
	SELECT 0
END
GO
