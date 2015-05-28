USE [ETNA]
GO
/****** Object:  StoredProcedure [dbo].[sp_programacionInventario_Actualizar]    Script Date: 05/27/2015 23:45:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[sp_programacionInventario_Actualizar]
(
@idProgInventario	int,
@tipoInventario	int,
@fechaProgramada	datetime,
@idAlmacen	int,
@idPersona	int
)
AS
BEGIN
	UPDATE	programacionInventario
	SET		tipoInventario = @tipoInventario,
			fechaProgramada = @fechaProgramada,
			idAlmacen = @idAlmacen,
			idPersona = @idPersona
	WHERE	idProgInventario = @idProgInventario			
END
GO
