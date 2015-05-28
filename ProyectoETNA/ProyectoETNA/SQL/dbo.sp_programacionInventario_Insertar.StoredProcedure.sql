USE [ETNA]
GO
/****** Object:  StoredProcedure [dbo].[sp_programacionInventario_Insertar]    Script Date: 05/27/2015 23:45:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[sp_programacionInventario_Insertar]
(
@tipoInventario	int,
@fechaProgramada	datetime,
@frecuencia	int,
@idAlmacen	int,
@idPersona	int,
@idEstadoInventario	int,
@idUsuario	int
)
AS
BEGIN
	INSERT INTO programacionInventario 
	(		
		tipoInventario,
		fechaProgramada,
		frecuencia,
		idAlmacen,
		idPersona,
		idEstadoInventario,
		activo,
		Cod_Usuario,
		fechaCreacion
	)
	VALUES
	(
		@tipoInventario,
		@fechaProgramada,
		@frecuencia,
		@idAlmacen,
		@idPersona,
		@idEstadoInventario,
		1,
		@idUsuario,
		GETDATE()
	)
END
GO
