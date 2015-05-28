USE [ETNA]
GO
/****** Object:  StoredProcedure [dbo].[sp_lote_ActualizarBloqueo]    Script Date: 05/27/2015 23:45:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[sp_lote_ActualizarBloqueo]
(
@idLote INT,
@bloqueado INT
)
AS
BEGIN

	UPDATE	lote 
	SET		bloqueado = @bloqueado ,
			fechaModificacion = GETDATE(),
			fechaTomaMuestra = GETDATE()
	WHERE	idLote = @idLote

END
GO
