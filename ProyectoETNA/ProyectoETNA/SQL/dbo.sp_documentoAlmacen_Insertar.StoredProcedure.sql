USE [ETNA]
GO
/****** Object:  StoredProcedure [dbo].[sp_documentoAlmacen_Insertar]    Script Date: 05/27/2015 23:45:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create PROC [dbo].[sp_documentoAlmacen_Insertar]
(
@correlativo int output ,
@idDocPendiente	int,
@tipoMovimiento	int ,
@fechaDocumento	datetime,
@idAlmacen	int,
@idUsuario	int
)
AS
BEGIN
	DECLARE @numeroDocAlmacen	varchar(20)
	
	SELECT @correlativo = MAX(correlativo) FROM documentoAlmacen
	
	IF(@correlativo IS NULL)
		SET @correlativo = 1
	ELSE
		SET @correlativo = @correlativo + 1
		
	SET @numeroDocAlmacen = (right('0000000000'+convert(varchar(10), @correlativo), 10))
	
	INSERT 
	INTO documentoAlmacen
	(
		correlativo,
		idDocPendiente,
		numeroDocAlmacen,
		tipoMovimiento,
		fechaDocumento,
		idAlmacen,
		activo,
		Cod_Usuario,
		fechaCreacion
	)
	VALUES 
	(
		@correlativo,
		@idDocPendiente,
		@numeroDocAlmacen,
		@tipoMovimiento,
		@fechaDocumento,
		@idAlmacen,
		1,
		@idUsuario,
		GETDATE()
	)
END
GO
