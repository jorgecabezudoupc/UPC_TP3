USE [ETNA]
GO
/****** Object:  StoredProcedure [dbo].[SP_OBTENER_INVENTARIO]    Script Date: 05/27/2015 23:45:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SP_OBTENER_INVENTARIO]
(
	@CH_CODUSUARIO CHAR(10),
	@IN_IDALMACEN INTEGER
)
AS
BEGIN

	SELECT	i.idInventario id, i.fechaHoraInicio fechaInicio, t.nombre tipo, p.nombres responsable
	FROM inventario i 
		INNER JOIN tablaTipo t ON i.tipo = t.idTipo
		INNER JOIN persona p ON p.Cod_Usuario = i.Cod_Usuario
	WHERE i.Cod_Usuario = @CH_CODUSUARIO 
		AND i.idAlmacen = @IN_IDALMACEN 
		AND i.activo = 1
		AND i.idProgInventario = isnull((SELECT idProgInventario FROM programacionInventario 
										WHERE Cod_Usuario = @CH_CODUSUARIO 
										AND idAlmacen = @IN_IDALMACEN
										AND idEstadoInventario = (SELECT idTipo FROM tablaTipo WHERE UPPER(nombre) = UPPER('INICIADO'))),0)
	ORDER BY i.fechaHoraInicio DESC
END
GO
