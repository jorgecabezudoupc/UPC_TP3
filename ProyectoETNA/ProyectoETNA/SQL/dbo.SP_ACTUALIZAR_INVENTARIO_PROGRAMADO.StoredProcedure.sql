USE [ETNA]
GO
/****** Object:  StoredProcedure [dbo].[SP_ACTUALIZAR_INVENTARIO_PROGRAMADO]    Script Date: 05/27/2015 23:45:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SP_ACTUALIZAR_INVENTARIO_PROGRAMADO]
(
	@IN_idProgInventario INTEGER,
	@DT_FechaProgramada DATETIME,
	@IN_TipoInventario INTEGER,
	@IN_idAlmacen INTEGER
)
AS
BEGIN

	UPDATE programacionInventario 
	SET tipoInventario = @IN_TipoInventario, fechaProgramada = @DT_FechaProgramada,
		idAlmacen = @IN_idAlmacen
	WHERE idProgInventario = @IN_idProgInventario
	
	SELECT 0
END
GO
