USE [ETNA]
GO
/****** Object:  StoredProcedure [dbo].[sp_almacen_Listar]    Script Date: 05/27/2015 23:45:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[sp_almacen_Listar]
AS
BEGIN
	SELECT  *
	FROM	almacen
	WHERE	activo = 1
END
GO
