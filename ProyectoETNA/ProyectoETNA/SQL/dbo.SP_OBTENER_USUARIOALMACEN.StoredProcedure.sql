USE [ETNA]
GO
/****** Object:  StoredProcedure [dbo].[SP_OBTENER_USUARIOALMACEN]    Script Date: 05/27/2015 23:45:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SP_OBTENER_USUARIOALMACEN]
(
	@CH_COD_USUARIO CHAR(10)
)
AS
BEGIN
	SELECT	idAlmacen,
			descripcionAlmacen
	FROM almacen
	WHERE Cod_Usuario = @CH_COD_USUARIO and activo = 1
	ORDER BY descripcionAlmacen
END
GO
