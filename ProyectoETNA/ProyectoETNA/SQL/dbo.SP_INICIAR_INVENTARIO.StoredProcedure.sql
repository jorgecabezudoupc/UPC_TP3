USE [ETNA]
GO
/****** Object:  StoredProcedure [dbo].[SP_INICIAR_INVENTARIO]    Script Date: 05/27/2015 23:45:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SP_INICIAR_INVENTARIO]
(
	@IN_idProgInventario INTEGER
)
AS
BEGIN

	BEGIN
		UPDATE programacionInventario 
		SET idEstadoInventario = (SELECT idTipo FROM tablaTipo WHERE nombre = 'INICIADO')
		WHERE idProgInventario = @IN_idProgInventario
	END
	
	DECLARE @IN_idAlmacen INTEGER, @CH_Cod_Usuario CHAR(10), @IN_tipoInventario INTEGER, @IN_idPersona INTEGER, 
			@IN_idProducto INTEGER, @IN_cantidad INTEGER, @IN_idInventario INTEGER
	
	BEGIN
		SELECT @IN_idAlmacen = idAlmacen, @CH_Cod_Usuario = Cod_Usuario, @IN_tipoInventario = tipoInventario, @IN_idPersona = idPersona
		FROM programacionInventario WHERE idProgInventario = @IN_idProgInventario
	END
	
	BEGIN
		INSERT INTO inventario (idAlmacen, idProgInventario, fechaHoraInicio, tipo, activo, Cod_Usuario, fechaCreacion)
		VALUES (@IN_idAlmacen, @IN_idProgInventario, GETDATE(), @IN_tipoInventario, 1, @CH_Cod_Usuario, GETDATE())
	
		SELECT @IN_idInventario = SCOPE_IDENTITY()
	END
	
	DECLARE inventario_cursor CURSOR FOR 
	SELECT idProducto, cantidad
	FROM stock
	WHERE idAlmacen = @IN_idAlmacen AND Cod_Usuario = @CH_Cod_Usuario
	
	OPEN inventario_cursor
	
	FETCH NEXT FROM inventario_cursor 
	INTO @IN_idProducto, @IN_cantidad
	
	WHILE @@FETCH_STATUS = 0
	BEGIN
		
		INSERT INTO detalleInventario (idInventario, idAlmacen, idProducto, idOperadorAlmacen, cantidadActual, fechaHoraToma)
		VALUES (@IN_idInventario, @IN_idAlmacen, @IN_idProducto, @IN_idPersona, @IN_cantidad, GETDATE())
		
		FETCH NEXT FROM inventario_cursor 
		INTO @IN_idProducto, @IN_cantidad
	END 
	CLOSE inventario_cursor;
	DEALLOCATE inventario_cursor;
	
	SELECT 0
END
GO
