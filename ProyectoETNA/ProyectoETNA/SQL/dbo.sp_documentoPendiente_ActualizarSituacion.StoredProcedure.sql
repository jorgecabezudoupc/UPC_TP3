USE [ETNA]
GO
/****** Object:  StoredProcedure [dbo].[sp_documentoPendiente_ActualizarSituacion]    Script Date: 05/27/2015 23:45:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[sp_documentoPendiente_ActualizarSituacion]
(
@idDocPendiente INT,
@situacionatencion INT
)
AS
BEGIN
	UPDATE documentoPendiente
	SET situacionatencion = @situacionatencion
	WHERE idDocPendiente = @idDocPendiente
END
GO
