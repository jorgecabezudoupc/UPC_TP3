USE [ETNA]
GO
/****** Object:  StoredProcedure [dbo].[SP_INSERTAR_INVENTARIO_PROGRAMADO]    Script Date: 05/27/2015 23:45:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SP_INSERTAR_INVENTARIO_PROGRAMADO]
(
	@DT_FechaProgramada DATETIME,
	@IN_TipoInventario INTEGER,
	@CH_Cod_Usuario CHAR(10),
	@IN_idAlmacen INTEGER
)
AS
BEGIN
	DECLARE @IN_idPersona INTEGER
	DECLARE @IN_idEstadoInventario INTEGER

	SET @IN_idPersona = (SELECT idPersona FROM persona WHERE Cod_Usuario = @CH_Cod_Usuario)
	SET @IN_idEstadoInventario = (SELECT idTipo FROM tablaTipo WHERE idTabla = 'tipoEstadoInventario' AND UPPER(nombre) = UPPER('PENDIENTE'))

	INSERT INTO programacionInventario
	(
		tipoInventario,
		fechaProgramada,
		idAlmacen,
		idPersona,
		idEstadoInventario,
		activo,
		Cod_Usuario,
		fechaCreacion
	)
	VALUES
	(
		@IN_TipoInventario,
		@DT_FechaProgramada,
		@IN_idAlmacen,
		@IN_idPersona,
		@IN_idEstadoInventario,
		1,
		@CH_Cod_Usuario,
		GETDATE()
	)
	
	SELECT 0
END
GO
