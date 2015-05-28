USE [ETNA]
GO
/****** Object:  StoredProcedure [dbo].[SP_OBTENER_TIPOALMACEN]    Script Date: 05/27/2015 23:45:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SP_OBTENER_TIPOALMACEN]
AS
BEGIN
	SELECT	idTipo,
			nombre
	FROM tablaTipo
	WHERE idTabla = 'tipoAlmacen'
	ORDER BY nombre
END
GO
