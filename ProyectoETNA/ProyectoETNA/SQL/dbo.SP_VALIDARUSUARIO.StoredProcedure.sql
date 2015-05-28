USE [ETNA]
GO
/****** Object:  StoredProcedure [dbo].[SP_VALIDARUSUARIO]    Script Date: 05/27/2015 23:45:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SP_VALIDARUSUARIO] 
(  
	@usuario varchar(50),  
	@password varchar(50)
)
AS
BEGIN
	DECLARE @tipo_Usuario CHAR(1)
	
	SET @tipo_Usuario = (SELECT u.Tipo_Usuario FROM Usuario u 
							WHERE u.Nom_Usuario = @usuario 
							AND u.Pwd_Usuario = @password
							AND u.Estado_Usuario = '1')
   
	IF (ISNULL(@tipo_Usuario,0) > 0)
    BEGIN
		select @tipo_Usuario
	END
	ELSE
	BEGIN
		select 0
	END
END
GO
