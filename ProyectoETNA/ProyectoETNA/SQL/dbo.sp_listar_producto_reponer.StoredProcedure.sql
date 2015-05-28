USE [ETNA]
GO
/****** Object:  StoredProcedure [dbo].[sp_listar_producto_reponer]    Script Date: 05/27/2015 23:45:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<JCP Software>
-- Create date: <14/05/2015>
-- Description:	<Listar productos>
-- =============================================
CREATE PROCEDURE [dbo].[sp_listar_producto_reponer]
(
	@IN_idProducto integer
)
AS
BEGIN
	SELECT  p.idProducto id, p.codigoProducto codigo, p.descripcionProducto descripcion, p.activo activo
	FROM	producto p
	WHERE	p.activo = 1 AND p.idProducto = @IN_idProducto
END
GO
