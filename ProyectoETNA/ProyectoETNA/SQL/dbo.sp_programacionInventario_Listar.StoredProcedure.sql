USE [ETNA]
GO
/****** Object:  StoredProcedure [dbo].[sp_programacionInventario_Listar]    Script Date: 05/27/2015 23:45:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[sp_programacionInventario_Listar]
(
@idProgInventario	int = NULL,
@tipoInventario	int = NULL
)
AS
BEGIN
	select	programacionInventario.* ,
			TipoInventario.nombre as descripcionTipoInventario,
			persona.nombres + ' ' + persona.apellidoPaterno + ' ' + persona.apellidoMaterno as Responsable,
			almacen.descripcionAlmacen,
			TipoEstadoInventario.nombre as descripcionEstadoInventario
	from 	programacionInventario
			INNER JOIN tablaTipo AS TipoInventario ON programacionInventario.tipoInventario = TipoInventario.idTipo
			INNER JOIN persona  ON persona.idPersona = programacionInventario.idPersona
			INNER JOIN almacen ON almacen.idAlmacen = programacionInventario.idAlmacen
			INNER JOIN tablaTipo AS TipoEstadoInventario ON programacionInventario.idEstadoInventario = TipoEstadoInventario.idTipo
	WHERE	programacionInventario.activo = 1
			and (@idProgInventario is null or programacionInventario.idProgInventario = @idProgInventario)
			and (@tipoInventario is null or programacionInventario.tipoInventario = @tipoInventario)
END
GO
