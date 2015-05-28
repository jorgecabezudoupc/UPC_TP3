USE [ETNA]
GO
/****** Object:  StoredProcedure [dbo].[SP_ELIMINAR_INVENTARIO_PROGRAMADO]    Script Date: 05/27/2015 23:45:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SP_ELIMINAR_INVENTARIO_PROGRAMADO]
(
	@IN_idProgInventario INTEGER
)
AS
BEGIN

	UPDATE programacionInventario 
	SET activo = 0
	WHERE idProgInventario = @IN_idProgInventario
	
	SELECT 0
END
GO
