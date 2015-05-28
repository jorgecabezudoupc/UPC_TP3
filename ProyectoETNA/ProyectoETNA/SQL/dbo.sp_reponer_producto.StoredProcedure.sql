USE [ETNA]
GO
/****** Object:  StoredProcedure [dbo].[sp_reponer_producto]    Script Date: 05/27/2015 23:45:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<JCP Software>
-- Create date: <14/05/2015>
-- Description:	<Reponer productos>
-- =============================================
CREATE PROCEDURE [dbo].[sp_reponer_producto]
(
	@IN_idProducto INTEGER,
	@IN_cantidad INTEGER
)
AS
BEGIN

	UPDATE stock SET cantidadReservada = @IN_cantidad
	WHERE idProducto = @IN_idProducto
END
GO
