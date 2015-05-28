USE [ETNA]
GO
/****** Object:  StoredProcedure [dbo].[sp_listar_producto]    Script Date: 05/27/2015 23:45:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<JCP Software>
-- Create date: <14/05/2015>
-- Description:	<Listar productos>
-- =============================================
CREATE PROCEDURE [dbo].[sp_listar_producto]
AS
BEGIN
	SELECT  p.idProducto id, p.codigoProducto codigo, p.descripcionProducto descripcion, SUM(s.cantidad) cantidad, p.activo activo
	FROM	producto p INNER JOIN stock s ON p.idProducto = s.idProducto
	WHERE	p.activo = 1
	GROUP BY p.idProducto, p.codigoProducto, p.descripcionProducto, p.activo
END
GO
