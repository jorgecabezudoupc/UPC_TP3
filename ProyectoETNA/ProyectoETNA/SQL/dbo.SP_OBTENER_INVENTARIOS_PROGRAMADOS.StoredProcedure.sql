USE [ETNA]
GO
/****** Object:  StoredProcedure [dbo].[SP_OBTENER_INVENTARIOS_PROGRAMADOS]    Script Date: 05/27/2015 23:45:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SP_OBTENER_INVENTARIOS_PROGRAMADOS]
(
	@IN_TIPOINVENTARIO INTEGER,
	@IN_IDALMACEN INTEGER
)
AS
BEGIN
	IF @IN_TIPOINVENTARIO = 0 AND @IN_IDALMACEN = 0
	BEGIN
		SELECT	p.idProgInventario id, p.fechaProgramada fecha, p.tipoInventario idTipo, 
				t.nombre tipo, p.idAlmacen idAlmacen, a.descripcionAlmacen almacen, u.nombres usuario, e.nombre estado
		FROM programacionInventario p INNER JOIN tablaTipo t ON p.tipoInventario = t.idTipo
		INNER JOIN almacen a ON p.idAlmacen = a.idAlmacen
		INNER JOIN persona u ON p.Cod_Usuario = u.Cod_Usuario
		INNER JOIN tablaTipo e ON p.idEstadoInventario = e.idTipo
		WHERE p.activo = 1
		ORDER BY p.fechaProgramada
	END
	
	IF @IN_TIPOINVENTARIO = 0 AND @IN_IDALMACEN > 0
	BEGIN
		SELECT	p.idProgInventario id, p.fechaProgramada fecha, p.tipoInventario idTipo, 
				t.nombre tipo, p.idAlmacen idAlmacen, a.descripcionAlmacen almacen, u.nombres usuario, e.nombre estado
		FROM programacionInventario p INNER JOIN tablaTipo t ON p.tipoInventario = t.idTipo
		INNER JOIN almacen a ON p.idAlmacen = a.idAlmacen
		INNER JOIN persona u ON p.Cod_Usuario = u.Cod_Usuario
		INNER JOIN tablaTipo e ON p.idEstadoInventario = e.idTipo
		WHERE p.idAlmacen = @IN_IDALMACEN AND p.activo = 1
		ORDER BY p.fechaProgramada
	END
	
	IF @IN_TIPOINVENTARIO > 0 AND @IN_IDALMACEN = 0
	BEGIN
		SELECT	p.idProgInventario id, p.fechaProgramada fecha, p.tipoInventario idTipo, 
				t.nombre tipo, p.idAlmacen idAlmacen, a.descripcionAlmacen almacen, u.nombres usuario, e.nombre estado
		FROM programacionInventario p INNER JOIN tablaTipo t ON p.tipoInventario = t.idTipo
		INNER JOIN almacen a ON p.idAlmacen = a.idAlmacen
		INNER JOIN persona u ON p.Cod_Usuario = u.Cod_Usuario
		INNER JOIN tablaTipo e ON p.idEstadoInventario = e.idTipo
		WHERE p.tipoInventario = @IN_TIPOINVENTARIO AND p.activo = 1
		ORDER BY p.fechaProgramada
	END
	
	IF @IN_TIPOINVENTARIO > 0 AND @IN_IDALMACEN > 0
	BEGIN
		SELECT	p.idProgInventario id, p.fechaProgramada fecha, p.tipoInventario idTipo, 
				t.nombre tipo, p.idAlmacen idAlmacen, a.descripcionAlmacen almacen, u.nombres usuario, e.nombre estado
		FROM programacionInventario p INNER JOIN tablaTipo t ON p.tipoInventario = t.idTipo
		INNER JOIN almacen a ON p.idAlmacen = a.idAlmacen
		INNER JOIN persona u ON p.Cod_Usuario = u.Cod_Usuario
		INNER JOIN tablaTipo e ON p.idEstadoInventario = e.idTipo
		WHERE p.tipoInventario = @IN_TIPOINVENTARIO AND p.idAlmacen = @IN_IDALMACEN AND p.activo = 1
		ORDER BY p.fechaProgramada
	END
END
GO
