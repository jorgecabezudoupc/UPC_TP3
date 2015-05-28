USE [ETNA]
GO
/****** Object:  StoredProcedure [dbo].[SP_OBTINFOUSUARIOLOGIN]    Script Date: 05/27/2015 23:45:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[SP_OBTINFOUSUARIOLOGIN]
(
	@CH_Cod_Usuario char(10)
)
as
begin
	select * from persona
	WHERE Cod_Usuario = @CH_Cod_Usuario and activo = 1
end
GO
