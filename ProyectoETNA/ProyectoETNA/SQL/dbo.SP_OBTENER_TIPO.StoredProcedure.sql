USE [ETNA]
GO
/****** Object:  StoredProcedure [dbo].[SP_OBTENER_TIPO]    Script Date: 05/27/2015 23:45:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SP_OBTENER_TIPO] 
	@IN_TIPOTABLA NVARCHAR(100)
AS
BEGIN
	SELECT	idTipo,
			nombre
	FROM tablaTipo
	WHERE idTabla = @IN_TIPOTABLA
	ORDER BY nombre
END
GO
