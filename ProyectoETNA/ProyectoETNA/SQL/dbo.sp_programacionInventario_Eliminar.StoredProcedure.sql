USE [ETNA]
GO
/****** Object:  StoredProcedure [dbo].[sp_programacionInventario_Eliminar]    Script Date: 05/27/2015 23:45:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[sp_programacionInventario_Eliminar]
(
@idProgInventario	int
)
AS
BEGIN
	DELETE FROM programacionInventario WHERE idProgInventario = @idProgInventario
END
GO
