USE [ETNA]
GO
/****** Object:  Table [dbo].[almacen]    Script Date: 05/28/2015 00:18:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[almacen](
	[idAlmacen] [int] IDENTITY(1,1) NOT NULL,
	[descripcionAlmacen] [varchar](100) NOT NULL,
	[idSupervisorAlmacen] [int] NOT NULL,
	[direccion] [varchar](50) NULL,
	[ubigeo] [varchar](10) NULL,
	[telefono] [varchar](20) NULL,
	[tipoAlmacen] [int] NULL,
	[metraje] [float] NULL,
	[activo] [int] NULL,
	[Cod_Usuario] [char](10) NOT NULL,
	[fechaCreacion] [datetime] NOT NULL,
	[fechaModificacion] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[idAlmacen] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[IATA]    Script Date: 05/28/2015 00:18:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[IATA](
	[IATA_COD] [char](3) NOT NULL,
	[IATA_PAIS] [char](3) NOT NULL,
	[IATA_DES] [varchar](50) NULL,
 CONSTRAINT [PK_IATA] PRIMARY KEY CLUSTERED 
(
	[IATA_COD] ASC,
	[IATA_PAIS] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'TABLA IATA' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'IATA'
GO
/****** Object:  Table [dbo].[Estado]    Script Date: 05/28/2015 00:18:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Estado](
	[codEstado] [int] NOT NULL,
	[desEstado] [varchar](30) NOT NULL,
 CONSTRAINT [pk_estado] PRIMARY KEY CLUSTERED 
(
	[codEstado] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[DosSIICEX]    Script Date: 05/28/2015 00:18:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[DosSIICEX](
	[Cod_SIICEX] [char](3) NOT NULL,
	[Des_SIICEX] [varchar](50) NULL,
 CONSTRAINT [PK_DosSIICEX] PRIMARY KEY CLUSTERED 
(
	[Cod_SIICEX] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Documentos SIICEX' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'DosSIICEX'
GO
/****** Object:  Table [dbo].[documentoPendiente]    Script Date: 05/28/2015 00:18:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[documentoPendiente](
	[idDocPendiente] [int] NOT NULL,
	[numeroDocPendiente] [varchar](10) NOT NULL,
	[tipoDocumentoPendiente] [int] NULL,
	[idClienteProveedor] [int] NOT NULL,
	[fechaDocumento] [datetime] NULL,
	[situacionatencion] [int] NULL,
	[activo] [int] NULL,
	[Cod_Usuario] [char](10) NOT NULL,
	[fechaCreacion] [datetime] NOT NULL,
	[tipoMovimiento] [int] NULL,
	[idAlmacen] [int] NULL,
	[areaSolicitante] [varchar](100) NULL,
	[idUsuarioSolicitante] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[idDocPendiente] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[docProdTEMP]    Script Date: 05/28/2015 00:18:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[docProdTEMP](
	[Doc_Prod] [numeric](7, 0) NOT NULL,
	[Doc_Siicex] [char](3) NOT NULL,
 CONSTRAINT [PK_docProdTEMP] PRIMARY KEY CLUSTERED 
(
	[Doc_Prod] ASC,
	[Doc_Siicex] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Temporal' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'docProdTEMP'
GO
/****** Object:  Table [dbo].[DocProdReq]    Script Date: 05/28/2015 00:18:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[DocProdReq](
	[Doc_Req] [decimal](10, 0) NOT NULL,
	[Doc_Prod] [numeric](7, 0) NOT NULL,
	[Doc_Siicex] [char](3) NOT NULL,
 CONSTRAINT [PK_DocProdReq] PRIMARY KEY CLUSTERED 
(
	[Doc_Req] ASC,
	[Doc_Prod] ASC,
	[Doc_Siicex] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Documento Producto Requisicion' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'DocProdReq'
GO
/****** Object:  Table [dbo].[Cliente]    Script Date: 05/28/2015 00:18:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Cliente](
	[Codigo] [numeric](9, 0) NOT NULL,
	[Ruc] [char](11) NULL,
	[Razon_Social] [varchar](60) NULL,
	[Direccion] [varchar](100) NULL,
	[CodPai] [char](3) NULL,
	[Telefono] [varchar](max) NULL,
	[Correo] [varchar](max) NULL,
	[Observaciones] [varchar](max) NULL,
	[Usuario] [char](11) NULL,
	[Pasword] [varchar](max) NULL,
 CONSTRAINT [PK_Cliente] PRIMARY KEY CLUSTERED 
(
	[Codigo] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Tabla de Clientes' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Cliente'
GO
/****** Object:  Table [dbo].[Categoria]    Script Date: 05/28/2015 00:18:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Categoria](
	[codCategoria] [int] NOT NULL,
	[desCategoria] [varchar](30) NOT NULL,
 CONSTRAINT [pk_categoria] PRIMARY KEY CLUSTERED 
(
	[codCategoria] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Cargo]    Script Date: 05/28/2015 00:18:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Cargo](
	[codCargo] [int] NOT NULL,
	[desCargo] [varchar](20) NOT NULL,
 CONSTRAINT [pk_cargo] PRIMARY KEY CLUSTERED 
(
	[codCargo] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Pais]    Script Date: 05/28/2015 00:18:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Pais](
	[Cod_Pais] [char](3) NOT NULL,
	[Nom_Pais] [varchar](50) NULL,
 CONSTRAINT [PK_Pais] PRIMARY KEY CLUSTERED 
(
	[Cod_Pais] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Tabla de Pais' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Pais'
GO
/****** Object:  Table [dbo].[OpcMenu]    Script Date: 05/28/2015 00:18:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[OpcMenu](
	[Cod_OpcionMenu] [char](6) NOT NULL,
	[Des_opcionMenu] [varchar](100) NULL,
 CONSTRAINT [PK_OpcMenu] PRIMARY KEY CLUSTERED 
(
	[Cod_OpcionMenu] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Opciones Menu' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'OpcMenu'
GO
/****** Object:  Table [dbo].[Marca]    Script Date: 05/28/2015 00:18:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Marca](
	[codMarca] [int] NOT NULL,
	[desMarca] [varchar](30) NOT NULL,
 CONSTRAINT [pk_marca] PRIMARY KEY CLUSTERED 
(
	[codMarca] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Producto_expo]    Script Date: 05/28/2015 00:18:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Producto_expo](
	[Cod_Prod] [numeric](7, 0) NOT NULL,
	[Des_Prod] [varchar](150) NULL,
	[Cod_Unidad] [char](3) NULL,
	[Pre_Prod] [decimal](18, 3) NULL,
	[Pes_Prod] [decimal](18, 3) NULL,
 CONSTRAINT [PK_Producto] PRIMARY KEY CLUSTERED 
(
	[Cod_Prod] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Tabla de Productos' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Producto_expo'
GO
/****** Object:  Table [dbo].[UsuMenu]    Script Date: 05/28/2015 00:18:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[UsuMenu](
	[Cod_Usu] [char](10) NOT NULL,
	[Cod_Men] [char](6) NOT NULL,
 CONSTRAINT [PK_UsuMenu] PRIMARY KEY CLUSTERED 
(
	[Cod_Usu] ASC,
	[Cod_Men] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Opciones Menu Usuario' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'UsuMenu'
GO
/****** Object:  Table [dbo].[Usuario]    Script Date: 05/28/2015 00:18:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Usuario](
	[Cod_Usuario] [char](10) NOT NULL,
	[Pwd_Usuario] [char](10) NULL,
	[Nom_Usuario] [varchar](50) NULL,
	[Tipo_Usuario] [char](1) NULL,
	[Estado_Usuario] [char](1) NULL,
	[Filler1] [varchar](100) NULL,
 CONSTRAINT [PK_Usuario] PRIMARY KEY CLUSTERED 
(
	[Cod_Usuario] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Tabla de Usuarios' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Usuario'
GO
/****** Object:  Table [dbo].[tablaTipo]    Script Date: 05/28/2015 00:18:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tablaTipo](
	[idTipo] [int] IDENTITY(1,1) NOT NULL,
	[nombre] [varchar](100) NULL,
	[descripcion] [varchar](200) NULL,
	[idTabla] [varchar](100) NULL,
PRIMARY KEY CLUSTERED 
(
	[idTipo] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Requerimiento_Detalle]    Script Date: 05/28/2015 00:18:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Requerimiento_Detalle](
	[Cod_Det_Req] [decimal](10, 0) NOT NULL,
	[Cod_Prod_Det_Req] [decimal](7, 0) NOT NULL,
	[Cantidad] [int] NULL,
	[Precio_Unit] [decimal](18, 3) NULL,
	[CIF] [decimal](18, 3) NULL,
	[FOB] [decimal](18, 3) NULL,
 CONSTRAINT [PK_Requerimiento_Detalle] PRIMARY KEY CLUSTERED 
(
	[Cod_Det_Req] ASC,
	[Cod_Prod_Det_Req] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Tabla Detalle de Requerimiento' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Requerimiento_Detalle'
GO
/****** Object:  Table [dbo].[Requerimiento]    Script Date: 05/28/2015 00:18:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Requerimiento](
	[Cod_Cab_Req] [decimal](10, 0) NOT NULL,
	[Cli_Cab_Req] [numeric](9, 0) NULL,
	[Pais_Cab_Req] [char](3) NULL,
	[Destino_Cab_Req] [varchar](100) NULL,
	[IATA_Cab_Req] [char](5) NULL,
	[Fec_Reg_Cab_Req] [decimal](8, 0) NULL,
	[Fec_Esp_Cab_Req] [decimal](8, 0) NULL,
	[Pre_Tot_Cab_Req] [decimal](18, 3) NULL,
	[Est_Cab_Req] [char](1) NULL,
	[Obs_Cab_Req] [varchar](max) NULL,
 CONSTRAINT [PK_Requerimiento] PRIMARY KEY CLUSTERED 
(
	[Cod_Cab_Req] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Tabla de Requerimiento' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Requerimiento'
GO
/****** Object:  Table [dbo].[SolicitudAtencion]    Script Date: 05/28/2015 00:18:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[SolicitudAtencion](
	[Cod_Solicitud] [decimal](10, 0) NOT NULL,
	[Cod_Cab_Req_Solicitud] [decimal](10, 0) NULL,
	[Res_Solicitud] [char](10) NULL,
	[Fec_Reg_Solicitud] [decimal](8, 0) NULL,
	[Fec_Res_Esp_Solicitud] [decimal](8, 0) NULL,
	[Fec_Desp_Solicitud] [decimal](8, 0) NULL,
	[Estado_Solicitud] [char](1) NULL,
	[Observacion_Solicitud] [varchar](max) NULL,
 CONSTRAINT [PK_SolicitudAtencion] PRIMARY KEY CLUSTERED 
(
	[Cod_Solicitud] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Tabla de solicitud de Atencion' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SolicitudAtencion'
GO
/****** Object:  Table [dbo].[zona]    Script Date: 05/28/2015 00:18:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[zona](
	[idZona] [int] IDENTITY(1,1) NOT NULL,
	[idAlmacen] [int] NOT NULL,
	[idProducto] [int] NOT NULL,
	[fila] [int] NULL,
	[columna] [int] NULL,
	[nivel] [int] NULL,
	[posicion] [int] NULL,
	[metraje] [int] NULL,
	[capacidad] [int] NULL,
	[disponibilidad] [int] NULL,
	[observacion] [varchar](250) NULL,
	[activo] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[idZona] ASC,
	[idAlmacen] ASC,
	[idProducto] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  StoredProcedure [dbo].[SP_VALIDARUSUARIO]    Script Date: 05/28/2015 00:18:07 ******/
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
/****** Object:  StoredProcedure [dbo].[SP_OBTENER_USUARIOALMACEN]    Script Date: 05/28/2015 00:18:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SP_OBTENER_USUARIOALMACEN]
(
	@CH_COD_USUARIO CHAR(10)
)
AS
BEGIN
	SELECT	idAlmacen,
			descripcionAlmacen
	FROM almacen
	WHERE Cod_Usuario = @CH_COD_USUARIO and activo = 1
	ORDER BY descripcionAlmacen
END
GO
/****** Object:  StoredProcedure [dbo].[SP_OBTENER_TIPOINVENTARIO]    Script Date: 05/28/2015 00:18:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SP_OBTENER_TIPOINVENTARIO]
AS
BEGIN
	SELECT	idTipo,
			nombre
	FROM tablaTipo
	WHERE idTabla = 'tipoInventario'
	ORDER BY nombre
END
GO
/****** Object:  StoredProcedure [dbo].[SP_OBTENER_TIPOALMACEN]    Script Date: 05/28/2015 00:18:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SP_OBTENER_TIPOALMACEN]
AS
BEGIN
	SELECT	idTipo,
			nombre
	FROM tablaTipo
	WHERE idTabla = 'tipoAlmacen'
	ORDER BY nombre
END
GO
/****** Object:  StoredProcedure [dbo].[SP_OBTENER_TIPO]    Script Date: 05/28/2015 00:18:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SP_OBTENER_TIPO] 
	@IN_TIPOTABLA NVARCHAR(100)
AS
BEGIN
	SELECT	idTipo,
			nombre
	FROM tablaTipo
	WHERE idTabla = @IN_TIPOTABLA
	ORDER BY nombre
END
GO
/****** Object:  StoredProcedure [dbo].[sp_documentoPendiente_ActualizarSituacion]    Script Date: 05/28/2015 00:18:07 ******/
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
/****** Object:  StoredProcedure [dbo].[sp_almacen_Listar]    Script Date: 05/28/2015 00:18:07 ******/
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
/****** Object:  Table [dbo].[producto]    Script Date: 05/28/2015 00:18:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[producto](
	[idProducto] [int] IDENTITY(1,1) NOT NULL,
	[tipoProducto] [int] NULL,
	[codigoProducto] [varchar](50) NULL,
	[descripcionProducto] [varchar](200) NULL,
	[tipounidadMedida] [char](3) NULL,
	[numeroPlacas] [int] NULL,
	[capacidadNominal] [int] NULL,
	[capacidadArranque] [int] NULL,
	[largo] [float] NULL,
	[ancho] [float] NULL,
	[alto] [float] NULL,
	[peso] [float] NULL,
	[periodoRecarga] [int] NULL,
	[tiempoMaxSinCarga] [int] NULL,
	[temperaturaMaxCarga] [int] NULL,
	[tipoDeUso] [int] NULL,
	[tiempoGarantia] [int] NULL,
	[stockMinimo] [int] NULL,
	[stockMaximo] [int] NULL,
	[activo] [int] NULL,
	[Cod_Usuario] [char](10) NOT NULL,
	[fechaCreacion] [datetime] NOT NULL,
	[fechaModificacion] [datetime] NULL,
	[pre_prod] [decimal](18, 3) NULL,
	[codCategoria] [int] NULL,
	[codMarca] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[idProducto] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Personal]    Script Date: 05/28/2015 00:18:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Personal](
	[codPersonal] [int] NOT NULL,
	[codCargo] [int] NOT NULL,
	[nomPersonal] [varchar](30) NULL,
	[telefono] [numeric](9, 0) NULL,
	[direccion] [varchar](30) NULL,
	[usuario] [varchar](15) NULL,
	[clave] [varchar](15) NULL,
 CONSTRAINT [pk_personal] PRIMARY KEY CLUSTERED 
(
	[codPersonal] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[persona]    Script Date: 05/28/2015 00:18:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[persona](
	[idPersona] [int] IDENTITY(1,1) NOT NULL,
	[tipoPersona] [int] NULL,
	[nombres] [varchar](40) NULL,
	[apellidoPaterno] [varchar](40) NULL,
	[apellidoMaterno] [varchar](40) NULL,
	[razonSocial] [varchar](60) NULL,
	[tipoDocIdentidad] [int] NULL,
	[numeroDocIdentidad] [varchar](15) NULL,
	[direccion] [varchar](60) NULL,
	[telefono] [varchar](20) NULL,
	[correo] [varchar](40) NULL,
	[paginaWeb] [varchar](60) NULL,
	[fechaNacimiento] [datetime] NULL,
	[cargo] [varchar](50) NULL,
	[centrocosto] [varchar](50) NULL,
	[activo] [tinyint] NULL,
	[fechaIngreso] [datetime] NULL,
	[Cod_Usuario] [char](10) NOT NULL,
	[fechaCreacion] [datetime] NOT NULL,
	[fechaModificacion] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[idPersona] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[lote]    Script Date: 05/28/2015 00:18:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[lote](
	[idLote] [int] IDENTITY(1,1) NOT NULL,
	[fechaFabricacion] [datetime] NULL,
	[ordenFabricacion] [int] NULL,
	[fechaTomaMuestra] [datetime] NULL,
	[bloqueado] [int] NULL,
	[cantidadProducida] [int] NULL,
	[activo] [tinyint] NULL,
	[Cod_Usuario] [char](10) NOT NULL,
	[fechaCreacion] [datetime] NOT NULL,
	[fechaModificacion] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[idLote] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[documentoAlmacen]    Script Date: 05/28/2015 00:18:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[documentoAlmacen](
	[correlativo] [int] NOT NULL,
	[idDocPendiente] [int] NOT NULL,
	[numeroDocAlmacen] [varchar](20) NOT NULL,
	[tipoMovimiento] [int] NULL,
	[fechaDocumento] [datetime] NULL,
	[idAlmacen] [int] NULL,
	[activo] [int] NULL,
	[Cod_Usuario] [char](10) NOT NULL,
	[fechaCreacion] [datetime] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[correlativo] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[detalleDocumentoPendiente]    Script Date: 05/28/2015 00:18:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[detalleDocumentoPendiente](
	[idDocPendiente] [int] NOT NULL,
	[idDetalleDocPendiente] [int] NOT NULL,
	[idProducto] [int] NOT NULL,
	[cantidadPedida] [int] NULL,
	[cantidadAtendida] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[idDetalleDocPendiente] ASC,
	[idDocPendiente] ASC,
	[idProducto] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[detalleDocumentoAlmacen]    Script Date: 05/28/2015 00:18:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[detalleDocumentoAlmacen](
	[correlativo] [int] NOT NULL,
	[idDetalleDocAlmacen] [int] NOT NULL,
	[idProducto] [int] NOT NULL,
	[cantidad] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[idDetalleDocAlmacen] ASC,
	[correlativo] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[stock]    Script Date: 05/28/2015 00:18:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[stock](
	[idAlmacen] [int] NOT NULL,
	[idProducto] [int] NOT NULL,
	[idLote] [int] NOT NULL,
	[cantidad] [int] NULL,
	[cantidadReservada] [int] NULL,
	[activo] [int] NULL,
	[Cod_Usuario] [char](10) NOT NULL,
	[fechaCreacion] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[idAlmacen] ASC,
	[idProducto] ASC,
	[idLote] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[programacionInventario]    Script Date: 05/28/2015 00:18:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[programacionInventario](
	[idProgInventario] [int] IDENTITY(1,1) NOT NULL,
	[tipoInventario] [int] NULL,
	[fechaProgramada] [datetime] NULL,
	[frecuencia] [int] NULL,
	[idAlmacen] [int] NOT NULL,
	[idPersona] [int] NOT NULL,
	[idEstadoInventario] [int] NOT NULL,
	[activo] [tinyint] NULL,
	[Cod_Usuario] [char](10) NOT NULL,
	[fechaCreacion] [datetime] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[idProgInventario] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  StoredProcedure [dbo].[SP_EDITAR_DETALLEMOVIMIENTO]    Script Date: 05/28/2015 00:18:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SP_EDITAR_DETALLEMOVIMIENTO]
(
	@IN_IDDOCPENDIENTE INTEGER,
	@IN_IDPRODUCTO INTEGER,
	@IN_CANTIDAD INTEGER
)
AS
BEGIN

	UPDATE detalleDocumentoPendiente 
	SET cantidadAtendida = @IN_CANTIDAD
	WHERE idDocPendiente = @IN_IDDOCPENDIENTE
	AND idProducto = @IN_IDPRODUCTO
	
	SELECT 0
END
GO
/****** Object:  StoredProcedure [dbo].[SP_DOCUMENTOPENDIENTE_LISTAR]    Script Date: 05/28/2015 00:18:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[SP_DOCUMENTOPENDIENTE_LISTAR]
(
	@IN_SITUACIONATENCION INTEGER = 0,
	@IN_IDALMACEN INTEGER = 0,
	@IN_TIPOMOVIMIENTO INTEGER = 0
)
AS
BEGIN
	SELECT	documentoPendiente.idDocPendiente,
			documentoPendiente.numeroDocPendiente,
			documentoPendiente.idClienteProveedor,
			documentoPendiente.tipoDocumentoPendiente,
			(select nombre
			 from tablaTipo
			  where tablaTipo.idTabla = 'tipoDocumentoPendiente'
			   and tablaTipo.idTipo = documentoPendiente.tipoDocumentoPendiente)
			 as descripcionDocumentoPendiente,
			documentoPendiente.fechaDocumento,
			documentoPendiente.activo,
			documentoPendiente.situacionatencion,
			ISNULL((select nombre
			 from tablaTipo
			  where tablaTipo.idTabla = 'estadoAtencion'
			   and tablaTipo.idTipo = documentoPendiente.situacionatencion),'')
			 as descripcionSituacionAtencion,
			persona.nombres + ' ' + persona.apellidoPaterno + ' ' + persona.apellidoMaterno  as Origen ,
			persona.centrocosto,
			ISNULL(documentoPendiente.idAlmacen,0) idAlmacen,
			ISNULL(almacen.descripcionAlmacen,'') descripcionAlmacen,
			ISNULL(documentoPendiente.tipoMovimiento,0) tipoMovimiento,
			ISNULL((select nombre
			 from tablaTipo
			  where tablaTipo.idTabla = 'tipoMovimiento'
			   and tablaTipo.idTipo = documentoPendiente.tipoMovimiento),'')
			 as descripcionTipoMovimiento
	FROM	documentoPendiente 
			inner join persona persona on documentoPendiente.idClienteProveedor = persona.idPersona
			left outer join almacen on almacen.idAlmacen = documentoPendiente.idAlmacen
	WHERE	documentoPendiente.activo = 1
			AND (@IN_SITUACIONATENCION = 0 or documentoPendiente.situacionatencion = @IN_SITUACIONATENCION)
			AND (@IN_TIPOMOVIMIENTO = 0 OR documentoPendiente.tipoMovimiento = @IN_TIPOMOVIMIENTO)
			AND (@IN_IDALMACEN = 0 OR documentoPendiente.idAlmacen = @IN_IDALMACEN)
END
GO
/****** Object:  StoredProcedure [dbo].[SP_GUARDAR_DETALLEMOVIMIENTO]    Script Date: 05/28/2015 00:18:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SP_GUARDAR_DETALLEMOVIMIENTO]
(
	@IN_IDDOCPENDIENTE INTEGER
)
AS
BEGIN

	DECLARE @IN_CANTIDAD_ATENDIDA INTEGER, @TOTAL INTEGER, @PARCIAL INTEGER
	
	SELECT @TOTAL = 0, @PARCIAL = 0

	DECLARE detalle_cursor CURSOR FOR 
	SELECT cantidadAtendida
	FROM detalleDocumentoPendiente
	WHERE idDocPendiente = @IN_IDDOCPENDIENTE
	
	OPEN detalle_cursor
	
	FETCH NEXT FROM detalle_cursor 
	INTO @IN_CANTIDAD_ATENDIDA
	
	WHILE @@FETCH_STATUS = 0
	BEGIN
		IF (@IN_CANTIDAD_ATENDIDA < 1)
		BEGIN
			SET @PARCIAL = 1
		END
		ELSE
		BEGIN
			SET @TOTAL = 1
		END
		
		FETCH NEXT FROM detalle_cursor 
		INTO @IN_CANTIDAD_ATENDIDA
	END 
	CLOSE detalle_cursor
	DEALLOCATE detalle_cursor
	
	IF (@PARCIAL = 1 AND @TOTAL = 1)
	BEGIN
		UPDATE documentoPendiente 
		SET situacionatencion = (SELECT idTipo FROM tablaTipo WHERE UPPER(nombre) = UPPER('PARCIAL') AND UPPER(idTabla) = UPPER('estadoAtencion'))
		WHERE idDocPendiente = @IN_IDDOCPENDIENTE
	END
	
	IF (@PARCIAL = 0 AND @TOTAL = 1)
	BEGIN
		UPDATE documentoPendiente 
		SET situacionatencion = (SELECT idTipo FROM tablaTipo WHERE UPPER(nombre) = UPPER('TOTAL') AND UPPER(idTabla) = UPPER('estadoAtencion'))
		WHERE idDocPendiente = @IN_IDDOCPENDIENTE
	END
	
	SELECT 0
END
GO
/****** Object:  Table [dbo].[RequerimientoCompras]    Script Date: 05/28/2015 00:18:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[RequerimientoCompras](
	[codRequerimiento] [int] IDENTITY(1,1) NOT NULL,
	[codPersonal] [int] NOT NULL,
	[codEstado] [int] NOT NULL,
	[codCategoria] [int] NOT NULL,
	[fechaRegistro] [datetime] NOT NULL,
	[observacion] [varchar](150) NULL,
 CONSTRAINT [pk_requerimientoCompras] PRIMARY KEY CLUSTERED 
(
	[codRequerimiento] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  StoredProcedure [dbo].[sp_documentoAlmacen_Listar]    Script Date: 05/28/2015 00:18:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[sp_documentoAlmacen_Listar]
(
@tipoMovimiento INT = NULL ,
@correlativo INT = NULL
)
AS
BEGIN
	SELECT	documentoAlmacen.correlativo,documentoAlmacen.idDocPendiente,documentoAlmacen.numeroDocAlmacen,
			documentoAlmacen.tipoMovimiento,documentoAlmacen.fechaDocumento,documentoAlmacen.idAlmacen,documentoAlmacen.activo,
			almacen.descripcionAlmacen,
			TipoMovimiento.descripcion as descripcionTipoMovimiento,
			documentoPendiente.numeroDocPendiente,
			TipoDocumentoPendiente.descripcion as descripcionDocumentoPendiente,
			persona.nombres + ' ' + persona.apellidoPaterno + ' ' + persona.apellidoMaterno  as Origen , persona.centrocosto
	FROM	documentoAlmacen 
			INNER JOIN almacen ON documentoAlmacen.idAlmacen = almacen.idAlmacen
			INNER JOIN tablaTipo TipoMovimiento ON documentoAlmacen.tipoMovimiento = TipoMovimiento.idTipo
			INNER JOIN documentoPendiente ON documentoAlmacen.idDocPendiente = documentoPendiente.idDocPendiente
			INNER JOIN tablaTipo TipoDocumentoPendiente ON documentoPendiente.tipoDocumentoPendiente = TipoDocumentoPendiente.idTipo
			INNER JOIN persona ON documentoPendiente.idClienteProveedor = persona.idPersona
	WHERE	(@tipoMovimiento IS NULL OR documentoAlmacen.tipoMovimiento = @tipoMovimiento)
			AND (@correlativo IS NULL OR documentoAlmacen.correlativo = @correlativo)
END
GO
/****** Object:  StoredProcedure [dbo].[sp_documentoAlmacen_Insertar]    Script Date: 05/28/2015 00:18:07 ******/
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
/****** Object:  StoredProcedure [dbo].[sp_DetalleDocumentoPendiente_Listar]    Script Date: 05/28/2015 00:18:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[sp_DetalleDocumentoPendiente_Listar]
(
@idDocPendiente INT
)
AS
BEGIN
	SELECT  detalleDocumentoPendiente.idDocPendiente, detalleDocumentoPendiente.idDetalleDocPendiente, 
			detalleDocumentoPendiente.cantidadPedida, detalleDocumentoPendiente.cantidadAtendida,
			producto.idProducto,producto.codigoProducto, producto.descripcionProducto , producto.tipounidadMedida,
			TipoUnidadMedida.descripcion as descripcionUnidadMedida
	FROM	detalleDocumentoPendiente INNER JOIN documentoPendiente ON detalleDocumentoPendiente.idDocPendiente = documentoPendiente.idDocPendiente				
			INNER JOIN producto ON detalleDocumentoPendiente.idProducto = producto.idProducto
			INNER JOIN tablaTipo TipoUnidadMedida on TipoUnidadMedida.idTipo = producto.tipounidadMedida
	WHERE	documentoPendiente.idDocPendiente = @idDocPendiente
END
GO
/****** Object:  StoredProcedure [dbo].[sp_lote_ActualizarBloqueo]    Script Date: 05/28/2015 00:18:07 ******/
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
/****** Object:  StoredProcedure [dbo].[sp_listar_producto_reponer]    Script Date: 05/28/2015 00:18:07 ******/
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
/****** Object:  StoredProcedure [dbo].[sp_Persona_Listar]    Script Date: 05/28/2015 00:18:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[sp_Persona_Listar]
AS
BEGIN
	SELECT * FROM persona
END
GO
/****** Object:  StoredProcedure [dbo].[SP_OBTINFOUSUARIOLOGIN]    Script Date: 05/28/2015 00:18:07 ******/
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
/****** Object:  StoredProcedure [dbo].[SP_OBTENER_DOCUMENTOPENDIENTE]    Script Date: 05/28/2015 00:18:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[SP_OBTENER_DOCUMENTOPENDIENTE]
(
	@IN_IDDOCPENDIENTE INTEGER
)
AS
BEGIN

	IF((SELECT situacionatencion FROM documentoPendiente WHERE idDocPendiente = @IN_IDDOCPENDIENTE) = 
		(SELECT idTipo FROM tablaTipo WHERE UPPER(nombre) = UPPER('PENDIENTE') AND UPPER(idTabla) = UPPER('estadoAtencion')))
	BEGIN
		UPDATE detalleDocumentoPendiente
		SET cantidadAtendida = 0
		WHERE idDocPendiente = @IN_IDDOCPENDIENTE
	END

	SELECT ISNULL((select nombre from tablaTipo where tablaTipo.idTabla = 'tipoMovimiento' and tablaTipo.idTipo = d.tipoMovimiento),'') tipoMovimiento,
			ISNULL((select nombre from tablaTipo where tablaTipo.idTabla = 'estadoAtencion' and tablaTipo.idTipo = d.situacionatencion),'') situacionAtencion,
			ISNULL((select descripcionAlmacen from almacen where almacen.idAlmacen = d.idAlmacen),'') almacen,
			fechaDocumento,
			ISNULL(areaSolicitante,'') areaSolicitante,
			ISNULL(idUsuarioSolicitante,'') usuarioSolicitante
	FROM documentoPendiente d WHERE d.idDocPendiente = ISNULL(@IN_IDDOCPENDIENTE,0)
END
GO
/****** Object:  StoredProcedure [dbo].[SP_OBTENER_DETALLEMOVIMIENTOS]    Script Date: 05/28/2015 00:18:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SP_OBTENER_DETALLEMOVIMIENTOS]
(
	@IN_IDDOCPENDIENTE INTEGER
)
AS
BEGIN

	SELECT d.idProducto, d.cantidadPedida, d.cantidadAtendida, p.codigoProducto, p.descripcionProducto
	FROM detalleDocumentoPendiente d INNER JOIN producto p ON d.idProducto = p.idProducto
	WHERE d.idDocPendiente = @IN_IDDOCPENDIENTE
	ORDER BY d.idProducto ASC
END
GO
/****** Object:  StoredProcedure [dbo].[sp_programacionInventario_Actualizar]    Script Date: 05/28/2015 00:18:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[sp_programacionInventario_Actualizar]
(
@idProgInventario	int,
@tipoInventario	int,
@fechaProgramada	datetime,
@idAlmacen	int,
@idPersona	int
)
AS
BEGIN
	UPDATE	programacionInventario
	SET		tipoInventario = @tipoInventario,
			fechaProgramada = @fechaProgramada,
			idAlmacen = @idAlmacen,
			idPersona = @idPersona
	WHERE	idProgInventario = @idProgInventario			
END
GO
/****** Object:  StoredProcedure [dbo].[SP_ACTUALIZAR_INVENTARIO_PROGRAMADO]    Script Date: 05/28/2015 00:18:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SP_ACTUALIZAR_INVENTARIO_PROGRAMADO]
(
	@IN_idProgInventario INTEGER,
	@DT_FechaProgramada DATETIME,
	@IN_TipoInventario INTEGER,
	@IN_idAlmacen INTEGER
)
AS
BEGIN

	UPDATE programacionInventario 
	SET tipoInventario = @IN_TipoInventario, fechaProgramada = @DT_FechaProgramada,
		idAlmacen = @IN_idAlmacen
	WHERE idProgInventario = @IN_idProgInventario
	
	SELECT 0
END
GO
/****** Object:  StoredProcedure [dbo].[sp_listar_producto]    Script Date: 05/28/2015 00:18:07 ******/
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
/****** Object:  StoredProcedure [dbo].[SP_INSERTAR_INVENTARIO_PROGRAMADO]    Script Date: 05/28/2015 00:18:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SP_INSERTAR_INVENTARIO_PROGRAMADO]
(
	@DT_FechaProgramada DATETIME,
	@IN_TipoInventario INTEGER,
	@CH_Cod_Usuario CHAR(10),
	@IN_idAlmacen INTEGER
)
AS
BEGIN
	DECLARE @IN_idPersona INTEGER
	DECLARE @IN_idEstadoInventario INTEGER

	SET @IN_idPersona = (SELECT idPersona FROM persona WHERE Cod_Usuario = @CH_Cod_Usuario)
	SET @IN_idEstadoInventario = (SELECT idTipo FROM tablaTipo WHERE idTabla = 'tipoEstadoInventario' AND UPPER(nombre) = UPPER('PENDIENTE'))

	INSERT INTO programacionInventario
	(
		tipoInventario,
		fechaProgramada,
		idAlmacen,
		idPersona,
		idEstadoInventario,
		activo,
		Cod_Usuario,
		fechaCreacion
	)
	VALUES
	(
		@IN_TipoInventario,
		@DT_FechaProgramada,
		@IN_idAlmacen,
		@IN_idPersona,
		@IN_idEstadoInventario,
		1,
		@CH_Cod_Usuario,
		GETDATE()
	)
	
	SELECT 0
END
GO
/****** Object:  StoredProcedure [dbo].[SP_OBTENER_INVENTARIOS_PROGRAMADOS]    Script Date: 05/28/2015 00:18:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SP_OBTENER_INVENTARIOS_PROGRAMADOS]
(
	@IN_TIPOINVENTARIO INTEGER,
	@IN_IDALMACEN INTEGER
)
AS
BEGIN
	IF @IN_TIPOINVENTARIO = 0 AND @IN_IDALMACEN = 0
	BEGIN
		SELECT	p.idProgInventario id, p.fechaProgramada fecha, p.tipoInventario idTipo, 
				t.nombre tipo, p.idAlmacen idAlmacen, a.descripcionAlmacen almacen, u.nombres usuario, e.nombre estado
		FROM programacionInventario p INNER JOIN tablaTipo t ON p.tipoInventario = t.idTipo
		INNER JOIN almacen a ON p.idAlmacen = a.idAlmacen
		INNER JOIN persona u ON p.Cod_Usuario = u.Cod_Usuario
		INNER JOIN tablaTipo e ON p.idEstadoInventario = e.idTipo
		WHERE p.activo = 1
		ORDER BY p.fechaProgramada
	END
	
	IF @IN_TIPOINVENTARIO = 0 AND @IN_IDALMACEN > 0
	BEGIN
		SELECT	p.idProgInventario id, p.fechaProgramada fecha, p.tipoInventario idTipo, 
				t.nombre tipo, p.idAlmacen idAlmacen, a.descripcionAlmacen almacen, u.nombres usuario, e.nombre estado
		FROM programacionInventario p INNER JOIN tablaTipo t ON p.tipoInventario = t.idTipo
		INNER JOIN almacen a ON p.idAlmacen = a.idAlmacen
		INNER JOIN persona u ON p.Cod_Usuario = u.Cod_Usuario
		INNER JOIN tablaTipo e ON p.idEstadoInventario = e.idTipo
		WHERE p.idAlmacen = @IN_IDALMACEN AND p.activo = 1
		ORDER BY p.fechaProgramada
	END
	
	IF @IN_TIPOINVENTARIO > 0 AND @IN_IDALMACEN = 0
	BEGIN
		SELECT	p.idProgInventario id, p.fechaProgramada fecha, p.tipoInventario idTipo, 
				t.nombre tipo, p.idAlmacen idAlmacen, a.descripcionAlmacen almacen, u.nombres usuario, e.nombre estado
		FROM programacionInventario p INNER JOIN tablaTipo t ON p.tipoInventario = t.idTipo
		INNER JOIN almacen a ON p.idAlmacen = a.idAlmacen
		INNER JOIN persona u ON p.Cod_Usuario = u.Cod_Usuario
		INNER JOIN tablaTipo e ON p.idEstadoInventario = e.idTipo
		WHERE p.tipoInventario = @IN_TIPOINVENTARIO AND p.activo = 1
		ORDER BY p.fechaProgramada
	END
	
	IF @IN_TIPOINVENTARIO > 0 AND @IN_IDALMACEN > 0
	BEGIN
		SELECT	p.idProgInventario id, p.fechaProgramada fecha, p.tipoInventario idTipo, 
				t.nombre tipo, p.idAlmacen idAlmacen, a.descripcionAlmacen almacen, u.nombres usuario, e.nombre estado
		FROM programacionInventario p INNER JOIN tablaTipo t ON p.tipoInventario = t.idTipo
		INNER JOIN almacen a ON p.idAlmacen = a.idAlmacen
		INNER JOIN persona u ON p.Cod_Usuario = u.Cod_Usuario
		INNER JOIN tablaTipo e ON p.idEstadoInventario = e.idTipo
		WHERE p.tipoInventario = @IN_TIPOINVENTARIO AND p.idAlmacen = @IN_IDALMACEN AND p.activo = 1
		ORDER BY p.fechaProgramada
	END
END
GO
/****** Object:  StoredProcedure [dbo].[SP_OBTENER_INVENTARIOS]    Script Date: 05/28/2015 00:18:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SP_OBTENER_INVENTARIOS]
(
	@IN_ESTADOINVENTARIO INTEGER,
	@IN_IDALMACEN INTEGER
)
AS
BEGIN
	IF @IN_ESTADOINVENTARIO = 0 AND @IN_IDALMACEN = 0
	BEGIN
		SELECT	p.idProgInventario id, p.fechaProgramada fecha, p.tipoInventario idTipo, 
				t.nombre tipo, p.idAlmacen idAlmacen, a.descripcionAlmacen almacen, u.nombres usuario, e.nombre estado
		FROM programacionInventario p INNER JOIN tablaTipo t ON p.tipoInventario = t.idTipo
		INNER JOIN almacen a ON p.idAlmacen = a.idAlmacen
		INNER JOIN persona u ON p.Cod_Usuario = u.Cod_Usuario
		INNER JOIN tablaTipo e ON p.idEstadoInventario = e.idTipo
		WHERE p.activo = 1
		ORDER BY p.fechaProgramada
	END
	
	IF @IN_ESTADOINVENTARIO = 0 AND @IN_IDALMACEN > 0
	BEGIN
		SELECT	p.idProgInventario id, p.fechaProgramada fecha, p.tipoInventario idTipo, 
				t.nombre tipo, p.idAlmacen idAlmacen, a.descripcionAlmacen almacen, u.nombres usuario, e.nombre estado
		FROM programacionInventario p INNER JOIN tablaTipo t ON p.tipoInventario = t.idTipo
		INNER JOIN almacen a ON p.idAlmacen = a.idAlmacen
		INNER JOIN persona u ON p.Cod_Usuario = u.Cod_Usuario
		INNER JOIN tablaTipo e ON p.idEstadoInventario = e.idTipo
		WHERE p.idAlmacen = @IN_IDALMACEN AND p.activo = 1
		ORDER BY p.fechaProgramada
	END
	
	IF @IN_ESTADOINVENTARIO > 0 AND @IN_IDALMACEN = 0
	BEGIN
		SELECT	p.idProgInventario id, p.fechaProgramada fecha, p.tipoInventario idTipo, 
				t.nombre tipo, p.idAlmacen idAlmacen, a.descripcionAlmacen almacen, u.nombres usuario, e.nombre estado
		FROM programacionInventario p INNER JOIN tablaTipo t ON p.tipoInventario = t.idTipo
		INNER JOIN almacen a ON p.idAlmacen = a.idAlmacen
		INNER JOIN persona u ON p.Cod_Usuario = u.Cod_Usuario
		INNER JOIN tablaTipo e ON p.idEstadoInventario = e.idTipo
		WHERE p.idEstadoInventario = @IN_ESTADOINVENTARIO AND p.activo = 1
		ORDER BY p.fechaProgramada
	END
	
	IF @IN_ESTADOINVENTARIO > 0 AND @IN_IDALMACEN > 0
	BEGIN
		SELECT	p.idProgInventario id, p.fechaProgramada fecha, p.tipoInventario idTipo, 
				t.nombre tipo, p.idAlmacen idAlmacen, a.descripcionAlmacen almacen, u.nombres usuario, e.nombre estado
		FROM programacionInventario p INNER JOIN tablaTipo t ON p.tipoInventario = t.idTipo
		INNER JOIN almacen a ON p.idAlmacen = a.idAlmacen
		INNER JOIN persona u ON p.Cod_Usuario = u.Cod_Usuario
		INNER JOIN tablaTipo e ON p.idEstadoInventario = e.idTipo
		WHERE p.idEstadoInventario = @IN_ESTADOINVENTARIO AND p.idAlmacen = @IN_IDALMACEN AND p.activo = 1
		ORDER BY p.fechaProgramada
	END
END
GO
/****** Object:  StoredProcedure [dbo].[sp_stock_Consultar]    Script Date: 05/28/2015 00:18:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[sp_stock_Consultar]
(
@idAlmacen INT,
@idProducto INT
)
AS
BEGIN
	SELECT	TOP 1 stock.* 
	FROM	stock
			inner join lote on stock.idLote = lote.idLote
	WHERE	idAlmacen = @idAlmacen
			AND idProducto = @idProducto
			AND lote.bloqueado = 0
	ORDER BY fechaCreacion ASC
END
GO
/****** Object:  StoredProcedure [dbo].[sp_stock_Actualizar]    Script Date: 05/28/2015 00:18:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[sp_stock_Actualizar]
(
@idAlmacen INT,
@idProducto INT,
@cantidadIngreso INT,
@cantidadSalida INT
)
AS
BEGIN
	UPDATE	stock
	SET		cantidad = cantidad + @cantidadIngreso - @cantidadSalida
	WHERE	idAlmacen = @idAlmacen
			AND idProducto = @idProducto
END
GO
/****** Object:  StoredProcedure [dbo].[sp_reponer_producto]    Script Date: 05/28/2015 00:18:07 ******/
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
/****** Object:  StoredProcedure [dbo].[sp_programacionInventario_Listar]    Script Date: 05/28/2015 00:18:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[sp_programacionInventario_Listar]
(
@idProgInventario	int = NULL,
@tipoInventario	int = NULL
)
AS
BEGIN
	select	programacionInventario.* ,
			TipoInventario.nombre as descripcionTipoInventario,
			persona.nombres + ' ' + persona.apellidoPaterno + ' ' + persona.apellidoMaterno as Responsable,
			almacen.descripcionAlmacen,
			TipoEstadoInventario.nombre as descripcionEstadoInventario
	from 	programacionInventario
			INNER JOIN tablaTipo AS TipoInventario ON programacionInventario.tipoInventario = TipoInventario.idTipo
			INNER JOIN persona  ON persona.idPersona = programacionInventario.idPersona
			INNER JOIN almacen ON almacen.idAlmacen = programacionInventario.idAlmacen
			INNER JOIN tablaTipo AS TipoEstadoInventario ON programacionInventario.idEstadoInventario = TipoEstadoInventario.idTipo
	WHERE	programacionInventario.activo = 1
			and (@idProgInventario is null or programacionInventario.idProgInventario = @idProgInventario)
			and (@tipoInventario is null or programacionInventario.tipoInventario = @tipoInventario)
END
GO
/****** Object:  StoredProcedure [dbo].[sp_programacionInventario_Insertar]    Script Date: 05/28/2015 00:18:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[sp_programacionInventario_Insertar]
(
@tipoInventario	int,
@fechaProgramada	datetime,
@frecuencia	int,
@idAlmacen	int,
@idPersona	int,
@idEstadoInventario	int,
@idUsuario	int
)
AS
BEGIN
	INSERT INTO programacionInventario 
	(		
		tipoInventario,
		fechaProgramada,
		frecuencia,
		idAlmacen,
		idPersona,
		idEstadoInventario,
		activo,
		Cod_Usuario,
		fechaCreacion
	)
	VALUES
	(
		@tipoInventario,
		@fechaProgramada,
		@frecuencia,
		@idAlmacen,
		@idPersona,
		@idEstadoInventario,
		1,
		@idUsuario,
		GETDATE()
	)
END
GO
/****** Object:  StoredProcedure [dbo].[sp_programacionInventario_Eliminar]    Script Date: 05/28/2015 00:18:07 ******/
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
/****** Object:  StoredProcedure [dbo].[sp_detalledocumentoAlmacen_Listar]    Script Date: 05/28/2015 00:18:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[sp_detalledocumentoAlmacen_Listar]
(
@correlativo INT
)
AS
BEGIN
	SELECT  detalleDocumentoPendiente.idDocPendiente, detalleDocumentoPendiente.idDetalleDocPendiente, 
			detalleDocumentoPendiente.cantidadPedida, detalleDocumentoPendiente.cantidadAtendida,
			producto.idProducto,producto.codigoProducto, producto.descripcionProducto , producto.tipounidadMedida,
			TipoUnidadMedida.descripcion as descripcionUnidadMedida
	FROM	detalleDocumentoAlmacen INNER JOIN documentoAlmacen ON detalleDocumentoAlmacen.correlativo = documentoAlmacen.correlativo				
			INNER JOIN detalleDocumentoPendiente ON detalleDocumentoPendiente.idDetalleDocPendiente = detalleDocumentoAlmacen.idDetalleDocAlmacen
				AND detalleDocumentoPendiente.idProducto = detalleDocumentoAlmacen.idProducto 
				AND detalleDocumentoPendiente.idDocPendiente = documentoAlmacen.idDocPendiente			
			INNER JOIN producto ON detalleDocumentoAlmacen.idProducto = producto.idProducto
			INNER JOIN tablaTipo TipoUnidadMedida on TipoUnidadMedida.idTipo = producto.tipounidadMedida
	WHERE	documentoAlmacen.correlativo = @correlativo
END
GO
/****** Object:  StoredProcedure [dbo].[sp_detalleDocumentoAlmacen_Insertar]    Script Date: 05/28/2015 00:18:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[sp_detalleDocumentoAlmacen_Insertar]
(
@correlativo	int ,
@idDetalleDocAlmacen	int ,
@idProducto	int ,
@cantidad	int ,
@idDocPendiente int
)		
AS
BEGIN
	INSERT 
	INTO detalleDocumentoAlmacen
	(
		correlativo,
		idDetalleDocAlmacen,
		idProducto,
		cantidad		
	)
	VALUES
	(
		@correlativo,
		@idDetalleDocAlmacen,
		@idProducto,
		@cantidad	
	)
	
	--ACTUALIZAR EL DETALLE DEL DOCUMENTO PENDIENTE
	UPDATE	detalleDocumentoPendiente
	SET		cantidadAtendida = cantidadAtendida + @cantidad
	WHERE	idProducto = @idProducto
			AND idDetalleDocPendiente = @idDetalleDocAlmacen
			AND idDocPendiente = @idDocPendiente
		
END
GO
/****** Object:  Table [dbo].[RequerimientoDetalle]    Script Date: 05/28/2015 00:18:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RequerimientoDetalle](
	[codRequerimiento] [int] NOT NULL,
	[idProducto] [int] NOT NULL,
	[cantidad] [int] NOT NULL,
 CONSTRAINT [pk_requerimientoDetalle] PRIMARY KEY CLUSTERED 
(
	[codRequerimiento] ASC,
	[idProducto] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  StoredProcedure [dbo].[SP_ELIMINAR_INVENTARIO_PROGRAMADO]    Script Date: 05/28/2015 00:18:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SP_ELIMINAR_INVENTARIO_PROGRAMADO]
(
	@IN_idProgInventario INTEGER
)
AS
BEGIN

	UPDATE programacionInventario 
	SET activo = 0
	WHERE idProgInventario = @IN_idProgInventario
	
	SELECT 0
END
GO
/****** Object:  Table [dbo].[inventario]    Script Date: 05/28/2015 00:18:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[inventario](
	[idInventario] [int] IDENTITY(1,1) NOT NULL,
	[idAlmacen] [int] NOT NULL,
	[idProgInventario] [int] NOT NULL,
	[fechaHoraInicio] [datetime] NULL,
	[fechaHoraFin] [datetime] NULL,
	[tipo] [int] NULL,
	[activo] [int] NULL,
	[Cod_Usuario] [char](10) NOT NULL,
	[fechaCreacion] [datetime] NULL,
	[fechaModificacion] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[idInventario] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Aprobacion]    Script Date: 05/28/2015 00:18:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Aprobacion](
	[codRequerimiento] [int] NOT NULL,
	[codEstado] [int] NOT NULL,
	[codPersonal] [int] NOT NULL,
 CONSTRAINT [pk_aprobacion] PRIMARY KEY CLUSTERED 
(
	[codRequerimiento] ASC,
	[codEstado] ASC,
	[codPersonal] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[detalleInventario]    Script Date: 05/28/2015 00:18:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[detalleInventario](
	[idDetalleInventario] [int] IDENTITY(1,1) NOT NULL,
	[idInventario] [int] NOT NULL,
	[idAlmacen] [int] NOT NULL,
	[idProducto] [int] NOT NULL,
	[idOperadorAlmacen] [int] NOT NULL,
	[cantidadActual] [int] NULL,
	[cantidad] [int] NULL,
	[cantidadAjuste] [int] NULL,
	[fechaHoraToma] [datetime] NULL,
	[numeroToma] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[idDetalleInventario] ASC,
	[idInventario] ASC,
	[idAlmacen] ASC,
	[idProducto] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  StoredProcedure [dbo].[SP_FINALIZAR_TOMA_INVENTARIO]    Script Date: 05/28/2015 00:18:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SP_FINALIZAR_TOMA_INVENTARIO]
(
	@IN_IDINVENTARIO INTEGER
)
AS
BEGIN

	DECLARE @IN_IDPROGINVENTARIO INTEGER
	
	SET @IN_IDPROGINVENTARIO = (SELECT idProgInventario FROM inventario WHERE idInventario = @IN_IDINVENTARIO)

	UPDATE programacionInventario 
	SET idEstadoInventario = (SELECT idTipo FROM tablaTipo WHERE UPPER(nombre) = UPPER('CONTABILIZADO'))
	WHERE idProgInventario = @IN_IDPROGINVENTARIO
	
	SELECT 0
END
GO
/****** Object:  StoredProcedure [dbo].[sp_programacionInventario_ConsultarReferencia]    Script Date: 05/28/2015 00:18:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[sp_programacionInventario_ConsultarReferencia]
(
@idProgInventario	int
)
AS
BEGIN
	select * from dbo.inventario WHERE idProgInventario = @idProgInventario
END
GO
/****** Object:  StoredProcedure [dbo].[SP_OBTENER_INVENTARIO]    Script Date: 05/28/2015 00:18:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SP_OBTENER_INVENTARIO]
(
	@CH_CODUSUARIO CHAR(10),
	@IN_IDALMACEN INTEGER
)
AS
BEGIN

	SELECT	i.idInventario id, i.fechaHoraInicio fechaInicio, t.nombre tipo, p.nombres responsable
	FROM inventario i 
		INNER JOIN tablaTipo t ON i.tipo = t.idTipo
		INNER JOIN persona p ON p.Cod_Usuario = i.Cod_Usuario
	WHERE i.Cod_Usuario = @CH_CODUSUARIO 
		AND i.idAlmacen = @IN_IDALMACEN 
		AND i.activo = 1
		AND i.idProgInventario = isnull((SELECT idProgInventario FROM programacionInventario 
										WHERE Cod_Usuario = @CH_CODUSUARIO 
										AND idAlmacen = @IN_IDALMACEN
										AND idEstadoInventario = (SELECT idTipo FROM tablaTipo WHERE UPPER(nombre) = UPPER('INICIADO'))),0)
	ORDER BY i.fechaHoraInicio DESC
END
GO
/****** Object:  StoredProcedure [dbo].[SP_OBTENER_DETALLE_INVENTARIO]    Script Date: 05/28/2015 00:18:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SP_OBTENER_DETALLE_INVENTARIO]
(
	@IN_IDINVENTARIO INTEGER
)
AS
BEGIN
	SELECT	d.idDetalleInventario id, p.descripcionProducto producto, d.fechaHoraToma fecha, d.cantidad cantidad
	FROM detalleInventario d INNER JOIN producto p ON d.idProducto = p.idProducto
	WHERE d.idInventario = @IN_IDINVENTARIO
	ORDER BY p.descripcionProducto DESC
END
GO
/****** Object:  StoredProcedure [dbo].[SP_INICIAR_INVENTARIO]    Script Date: 05/28/2015 00:18:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SP_INICIAR_INVENTARIO]
(
	@IN_idProgInventario INTEGER
)
AS
BEGIN

	BEGIN
		UPDATE programacionInventario 
		SET idEstadoInventario = (SELECT idTipo FROM tablaTipo WHERE nombre = 'INICIADO')
		WHERE idProgInventario = @IN_idProgInventario
	END
	
	DECLARE @IN_idAlmacen INTEGER, @CH_Cod_Usuario CHAR(10), @IN_tipoInventario INTEGER, @IN_idPersona INTEGER, 
			@IN_idProducto INTEGER, @IN_cantidad INTEGER, @IN_idInventario INTEGER
	
	BEGIN
		SELECT @IN_idAlmacen = idAlmacen, @CH_Cod_Usuario = Cod_Usuario, @IN_tipoInventario = tipoInventario, @IN_idPersona = idPersona
		FROM programacionInventario WHERE idProgInventario = @IN_idProgInventario
	END
	
	BEGIN
		INSERT INTO inventario (idAlmacen, idProgInventario, fechaHoraInicio, tipo, activo, Cod_Usuario, fechaCreacion)
		VALUES (@IN_idAlmacen, @IN_idProgInventario, GETDATE(), @IN_tipoInventario, 1, @CH_Cod_Usuario, GETDATE())
	
		SELECT @IN_idInventario = SCOPE_IDENTITY()
	END
	
	DECLARE inventario_cursor CURSOR FOR 
	SELECT idProducto, cantidad
	FROM stock
	WHERE idAlmacen = @IN_idAlmacen AND Cod_Usuario = @CH_Cod_Usuario
	
	OPEN inventario_cursor
	
	FETCH NEXT FROM inventario_cursor 
	INTO @IN_idProducto, @IN_cantidad
	
	WHILE @@FETCH_STATUS = 0
	BEGIN
		
		INSERT INTO detalleInventario (idInventario, idAlmacen, idProducto, idOperadorAlmacen, cantidadActual, fechaHoraToma)
		VALUES (@IN_idInventario, @IN_idAlmacen, @IN_idProducto, @IN_idPersona, @IN_cantidad, GETDATE())
		
		FETCH NEXT FROM inventario_cursor 
		INTO @IN_idProducto, @IN_cantidad
	END 
	CLOSE inventario_cursor;
	DEALLOCATE inventario_cursor;
	
	SELECT 0
END
GO
/****** Object:  StoredProcedure [dbo].[SP_EDITAR_TOMA_INVENTARIO]    Script Date: 05/28/2015 00:18:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SP_EDITAR_TOMA_INVENTARIO]
(
	@IN_IDDETALLEINVENTARIO INTEGER,
	@IN_CANTIDAD INTEGER
)
AS
BEGIN

	UPDATE detalleInventario 
	SET cantidad = @IN_CANTIDAD
	WHERE idDetalleInventario = @IN_IDDETALLEINVENTARIO
	
	SELECT 0
END
GO
/****** Object:  StoredProcedure [dbo].[SP_AJUSTAR_INVENTARIO]    Script Date: 05/28/2015 00:18:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SP_AJUSTAR_INVENTARIO]
(
	@IN_idProgInventario INTEGER
)
AS
BEGIN
	DECLARE @IN_idProducto INTEGER, @IN_cantidad INTEGER, @IN_cantidadActual INTEGER, @IN_idInventario INTEGER,
			@Ch_Cod_Usuario CHAR(10), @IN_idAlmacen INTEGER
			
	DECLARE @numeroDoc VARCHAR(10), @tipoDoc INTEGER, @situacion INTEGER, @tipoMovimiento INTEGER, @IN_idDoc INTEGER, @IN_cantidadAjuste INTEGER
	
	BEGIN
		SELECT @IN_idInventario = idInventario, @Ch_Cod_Usuario = Cod_Usuario, @IN_idAlmacen = idAlmacen
		FROM inventario WHERE idProgInventario = @IN_idProgInventario
	END
	
	DECLARE detalle_cursor CURSOR FOR 
	SELECT cantidadActual, cantidad, idProducto
	FROM detalleInventario
	WHERE idInventario = @IN_idInventario
	
	OPEN detalle_cursor
	
	FETCH NEXT FROM detalle_cursor 
	INTO @IN_cantidadActual, @IN_cantidad, @IN_idProducto
	
	WHILE @@FETCH_STATUS = 0
	BEGIN
		UPDATE detalleInventario
		SET cantidadAjuste = @IN_cantidadActual - @IN_cantidad
		WHERE idProducto = @IN_idProducto AND idInventario = @IN_idInventario
		
		FETCH NEXT FROM detalle_cursor 
		INTO @IN_cantidadActual, @IN_cantidad, @IN_idProducto
	END 
	CLOSE detalle_cursor
	DEALLOCATE detalle_cursor
	
	
	BEGIN
		SET @numeroDoc = isnull((SELECT MAX(numeroDocPendiente) FROM documentoPendiente),0)
		
		SET @situacion = (SELECT idTipo FROM tablaTipo WHERE nombre = 'TOTAL')
		
		IF (SELECT SUM(cantidadAjuste) FROM detalleInventario WHERE idInventario = @IN_idInventario) > 0
		BEGIN
			SET @tipoDoc = (SELECT idTipo FROM tablaTipo WHERE nombre = 'SALIDA')
			
			INSERT INTO documentoPendiente (numeroDocPendiente, tipoDocumentoPendiente, idClienteProveedor, fechaDocumento, situacionatencion,
					activo, Cod_Usuario, fechaCreacion, tipoMovimiento, idAlmacen, areaSolicitante, idUsuarioSolicitante)
			VALUES (@numeroDoc, @tipoDoc, 1, GETDATE(), @situacion, 1, @Ch_Cod_Usuario, GETDATE(), @tipoDoc, @IN_idAlmacen, 'Sistema', @Ch_Cod_Usuario)
			
			SELECT @IN_idDoc = SCOPE_IDENTITY()
		END
		
		IF (SELECT SUM(cantidadAjuste) FROM detalleInventario WHERE idInventario = @IN_idInventario) < 0
		BEGIN
			SET @tipoDoc = (SELECT idTipo FROM tablaTipo WHERE nombre = 'INGRESO')
			
			INSERT INTO documentoPendiente (numeroDocPendiente, tipoDocumentoPendiente, idClienteProveedor, fechaDocumento, situacionatencion,
					activo, Cod_Usuario, fechaCreacion, tipoMovimiento, idAlmacen, areaSolicitante, idUsuarioSolicitante)
			VALUES (@numeroDoc, @tipoDoc, 1, GETDATE(), @situacion, 1, @Ch_Cod_Usuario, GETDATE(), @tipoDoc, @IN_idAlmacen, 'Sistema', @Ch_Cod_Usuario)
			
			SELECT @IN_idDoc = SCOPE_IDENTITY()
		END
	END
	
	DECLARE detalle_pendiente_cursor CURSOR FOR 
	SELECT cantidadAjuste, idProducto
	FROM detalleInventario
	WHERE idInventario = @IN_idInventario
	
	OPEN detalle_pendiente_cursor
	
	FETCH NEXT FROM detalle_pendiente_cursor 
	INTO @IN_cantidadAjuste, @IN_idProducto
	
	WHILE @@FETCH_STATUS = 0
	BEGIN
		INSERT INTO detalleDocumentoPendiente (idDocPendiente, idProducto, cantidadPedida)
		VALUES (@IN_idDoc, @IN_idProducto, @IN_cantidadAjuste)
		
		FETCH NEXT FROM detalle_pendiente_cursor 
		INTO @IN_cantidadAjuste, @IN_idProducto
	END 
	CLOSE detalle_pendiente_cursor
	DEALLOCATE detalle_pendiente_cursor
	
	BEGIN
		UPDATE programacionInventario 
		SET idEstadoInventario = (SELECT idTipo FROM tablaTipo WHERE nombre = 'FINALIZADO')
		WHERE idProgInventario = @IN_idProgInventario
		
		UPDATE inventario
		SET activo = 0, fechaHoraFin = GETDATE()
		WHERE idInventario = @IN_idInventario
	END
	
	SELECT 0
END
GO
/****** Object:  ForeignKey [fk_estado_aprobacion]    Script Date: 05/28/2015 00:18:06 ******/
ALTER TABLE [dbo].[Aprobacion]  WITH CHECK ADD  CONSTRAINT [fk_estado_aprobacion] FOREIGN KEY([codEstado])
REFERENCES [dbo].[Estado] ([codEstado])
GO
ALTER TABLE [dbo].[Aprobacion] CHECK CONSTRAINT [fk_estado_aprobacion]
GO
/****** Object:  ForeignKey [fk_personal_aprobacion]    Script Date: 05/28/2015 00:18:06 ******/
ALTER TABLE [dbo].[Aprobacion]  WITH CHECK ADD  CONSTRAINT [fk_personal_aprobacion] FOREIGN KEY([codPersonal])
REFERENCES [dbo].[Personal] ([codPersonal])
GO
ALTER TABLE [dbo].[Aprobacion] CHECK CONSTRAINT [fk_personal_aprobacion]
GO
/****** Object:  ForeignKey [fk_requerimiento_aprobacion]    Script Date: 05/28/2015 00:18:06 ******/
ALTER TABLE [dbo].[Aprobacion]  WITH CHECK ADD  CONSTRAINT [fk_requerimiento_aprobacion] FOREIGN KEY([codRequerimiento])
REFERENCES [dbo].[RequerimientoCompras] ([codRequerimiento])
GO
ALTER TABLE [dbo].[Aprobacion] CHECK CONSTRAINT [fk_requerimiento_aprobacion]
GO
/****** Object:  ForeignKey [FK_Cliente_Cliente]    Script Date: 05/28/2015 00:18:06 ******/
ALTER TABLE [dbo].[Cliente]  WITH CHECK ADD  CONSTRAINT [FK_Cliente_Cliente] FOREIGN KEY([Codigo])
REFERENCES [dbo].[Cliente] ([Codigo])
GO
ALTER TABLE [dbo].[Cliente] CHECK CONSTRAINT [FK_Cliente_Cliente]
GO
/****** Object:  ForeignKey [detalleDocumentoAlmacen_FKCONSTRAINT1]    Script Date: 05/28/2015 00:18:06 ******/
ALTER TABLE [dbo].[detalleDocumentoAlmacen]  WITH CHECK ADD  CONSTRAINT [detalleDocumentoAlmacen_FKCONSTRAINT1] FOREIGN KEY([correlativo])
REFERENCES [dbo].[documentoAlmacen] ([correlativo])
GO
ALTER TABLE [dbo].[detalleDocumentoAlmacen] CHECK CONSTRAINT [detalleDocumentoAlmacen_FKCONSTRAINT1]
GO
/****** Object:  ForeignKey [detalleDocumentoPendiente_FKCONSTRAINT2]    Script Date: 05/28/2015 00:18:06 ******/
ALTER TABLE [dbo].[detalleDocumentoPendiente]  WITH CHECK ADD  CONSTRAINT [detalleDocumentoPendiente_FKCONSTRAINT2] FOREIGN KEY([idDocPendiente])
REFERENCES [dbo].[documentoPendiente] ([idDocPendiente])
GO
ALTER TABLE [dbo].[detalleDocumentoPendiente] CHECK CONSTRAINT [detalleDocumentoPendiente_FKCONSTRAINT2]
GO
/****** Object:  ForeignKey [detalleInventario_FKCONSTRAINT1]    Script Date: 05/28/2015 00:18:06 ******/
ALTER TABLE [dbo].[detalleInventario]  WITH CHECK ADD  CONSTRAINT [detalleInventario_FKCONSTRAINT1] FOREIGN KEY([idInventario])
REFERENCES [dbo].[inventario] ([idInventario])
GO
ALTER TABLE [dbo].[detalleInventario] CHECK CONSTRAINT [detalleInventario_FKCONSTRAINT1]
GO
/****** Object:  ForeignKey [detalleInventario_FKCONSTRAINT2]    Script Date: 05/28/2015 00:18:06 ******/
ALTER TABLE [dbo].[detalleInventario]  WITH CHECK ADD  CONSTRAINT [detalleInventario_FKCONSTRAINT2] FOREIGN KEY([idOperadorAlmacen])
REFERENCES [dbo].[persona] ([idPersona])
GO
ALTER TABLE [dbo].[detalleInventario] CHECK CONSTRAINT [detalleInventario_FKCONSTRAINT2]
GO
/****** Object:  ForeignKey [detalleInventario_FKCONSTRAINT3]    Script Date: 05/28/2015 00:18:06 ******/
ALTER TABLE [dbo].[detalleInventario]  WITH CHECK ADD  CONSTRAINT [detalleInventario_FKCONSTRAINT3] FOREIGN KEY([idAlmacen])
REFERENCES [dbo].[almacen] ([idAlmacen])
GO
ALTER TABLE [dbo].[detalleInventario] CHECK CONSTRAINT [detalleInventario_FKCONSTRAINT3]
GO
/****** Object:  ForeignKey [documentoAlmacen_FKCONSTRAINT1]    Script Date: 05/28/2015 00:18:06 ******/
ALTER TABLE [dbo].[documentoAlmacen]  WITH CHECK ADD  CONSTRAINT [documentoAlmacen_FKCONSTRAINT1] FOREIGN KEY([idDocPendiente])
REFERENCES [dbo].[documentoPendiente] ([idDocPendiente])
GO
ALTER TABLE [dbo].[documentoAlmacen] CHECK CONSTRAINT [documentoAlmacen_FKCONSTRAINT1]
GO
/****** Object:  ForeignKey [documentoAlmacen_FKCONSTRAINT2]    Script Date: 05/28/2015 00:18:06 ******/
ALTER TABLE [dbo].[documentoAlmacen]  WITH CHECK ADD  CONSTRAINT [documentoAlmacen_FKCONSTRAINT2] FOREIGN KEY([tipoMovimiento])
REFERENCES [dbo].[tablaTipo] ([idTipo])
GO
ALTER TABLE [dbo].[documentoAlmacen] CHECK CONSTRAINT [documentoAlmacen_FKCONSTRAINT2]
GO
/****** Object:  ForeignKey [documentoAlmacen_FKCONSTRAINT3]    Script Date: 05/28/2015 00:18:06 ******/
ALTER TABLE [dbo].[documentoAlmacen]  WITH CHECK ADD  CONSTRAINT [documentoAlmacen_FKCONSTRAINT3] FOREIGN KEY([Cod_Usuario])
REFERENCES [dbo].[Usuario] ([Cod_Usuario])
GO
ALTER TABLE [dbo].[documentoAlmacen] CHECK CONSTRAINT [documentoAlmacen_FKCONSTRAINT3]
GO
/****** Object:  ForeignKey [documentoAlmacen_FKCONSTRAINT4]    Script Date: 05/28/2015 00:18:06 ******/
ALTER TABLE [dbo].[documentoAlmacen]  WITH CHECK ADD  CONSTRAINT [documentoAlmacen_FKCONSTRAINT4] FOREIGN KEY([idAlmacen])
REFERENCES [dbo].[almacen] ([idAlmacen])
GO
ALTER TABLE [dbo].[documentoAlmacen] CHECK CONSTRAINT [documentoAlmacen_FKCONSTRAINT4]
GO
/****** Object:  ForeignKey [inventario_FKCONSTRAINT1]    Script Date: 05/28/2015 00:18:06 ******/
ALTER TABLE [dbo].[inventario]  WITH CHECK ADD  CONSTRAINT [inventario_FKCONSTRAINT1] FOREIGN KEY([idAlmacen])
REFERENCES [dbo].[almacen] ([idAlmacen])
GO
ALTER TABLE [dbo].[inventario] CHECK CONSTRAINT [inventario_FKCONSTRAINT1]
GO
/****** Object:  ForeignKey [inventario_FKCONSTRAINT2]    Script Date: 05/28/2015 00:18:06 ******/
ALTER TABLE [dbo].[inventario]  WITH CHECK ADD  CONSTRAINT [inventario_FKCONSTRAINT2] FOREIGN KEY([idProgInventario])
REFERENCES [dbo].[programacionInventario] ([idProgInventario])
GO
ALTER TABLE [dbo].[inventario] CHECK CONSTRAINT [inventario_FKCONSTRAINT2]
GO
/****** Object:  ForeignKey [inventario_FKCONSTRAINT3]    Script Date: 05/28/2015 00:18:06 ******/
ALTER TABLE [dbo].[inventario]  WITH CHECK ADD  CONSTRAINT [inventario_FKCONSTRAINT3] FOREIGN KEY([Cod_Usuario])
REFERENCES [dbo].[Usuario] ([Cod_Usuario])
GO
ALTER TABLE [dbo].[inventario] CHECK CONSTRAINT [inventario_FKCONSTRAINT3]
GO
/****** Object:  ForeignKey [lote_FKCONSTRAINT1]    Script Date: 05/28/2015 00:18:06 ******/
ALTER TABLE [dbo].[lote]  WITH CHECK ADD  CONSTRAINT [lote_FKCONSTRAINT1] FOREIGN KEY([Cod_Usuario])
REFERENCES [dbo].[Usuario] ([Cod_Usuario])
GO
ALTER TABLE [dbo].[lote] CHECK CONSTRAINT [lote_FKCONSTRAINT1]
GO
/****** Object:  ForeignKey [persona_FKCONSTRAINT1]    Script Date: 05/28/2015 00:18:06 ******/
ALTER TABLE [dbo].[persona]  WITH CHECK ADD  CONSTRAINT [persona_FKCONSTRAINT1] FOREIGN KEY([tipoPersona])
REFERENCES [dbo].[tablaTipo] ([idTipo])
GO
ALTER TABLE [dbo].[persona] CHECK CONSTRAINT [persona_FKCONSTRAINT1]
GO
/****** Object:  ForeignKey [persona_FKCONSTRAINT2]    Script Date: 05/28/2015 00:18:06 ******/
ALTER TABLE [dbo].[persona]  WITH CHECK ADD  CONSTRAINT [persona_FKCONSTRAINT2] FOREIGN KEY([tipoDocIdentidad])
REFERENCES [dbo].[tablaTipo] ([idTipo])
GO
ALTER TABLE [dbo].[persona] CHECK CONSTRAINT [persona_FKCONSTRAINT2]
GO
/****** Object:  ForeignKey [persona_FKCONSTRAINT3]    Script Date: 05/28/2015 00:18:06 ******/
ALTER TABLE [dbo].[persona]  WITH CHECK ADD  CONSTRAINT [persona_FKCONSTRAINT3] FOREIGN KEY([Cod_Usuario])
REFERENCES [dbo].[Usuario] ([Cod_Usuario])
GO
ALTER TABLE [dbo].[persona] CHECK CONSTRAINT [persona_FKCONSTRAINT3]
GO
/****** Object:  ForeignKey [fk_cargo]    Script Date: 05/28/2015 00:18:06 ******/
ALTER TABLE [dbo].[Personal]  WITH CHECK ADD  CONSTRAINT [fk_cargo] FOREIGN KEY([codCargo])
REFERENCES [dbo].[Cargo] ([codCargo])
GO
ALTER TABLE [dbo].[Personal] CHECK CONSTRAINT [fk_cargo]
GO
/****** Object:  ForeignKey [producto_FKCONSTRAINT1]    Script Date: 05/28/2015 00:18:06 ******/
ALTER TABLE [dbo].[producto]  WITH CHECK ADD  CONSTRAINT [producto_FKCONSTRAINT1] FOREIGN KEY([tipoProducto])
REFERENCES [dbo].[tablaTipo] ([idTipo])
GO
ALTER TABLE [dbo].[producto] CHECK CONSTRAINT [producto_FKCONSTRAINT1]
GO
/****** Object:  ForeignKey [producto_FKCONSTRAINT2]    Script Date: 05/28/2015 00:18:06 ******/
ALTER TABLE [dbo].[producto]  WITH CHECK ADD  CONSTRAINT [producto_FKCONSTRAINT2] FOREIGN KEY([Cod_Usuario])
REFERENCES [dbo].[Usuario] ([Cod_Usuario])
GO
ALTER TABLE [dbo].[producto] CHECK CONSTRAINT [producto_FKCONSTRAINT2]
GO
/****** Object:  ForeignKey [programacionInventario_FKCONSTRAINT1]    Script Date: 05/28/2015 00:18:06 ******/
ALTER TABLE [dbo].[programacionInventario]  WITH CHECK ADD  CONSTRAINT [programacionInventario_FKCONSTRAINT1] FOREIGN KEY([tipoInventario])
REFERENCES [dbo].[tablaTipo] ([idTipo])
GO
ALTER TABLE [dbo].[programacionInventario] CHECK CONSTRAINT [programacionInventario_FKCONSTRAINT1]
GO
/****** Object:  ForeignKey [programacionInventario_FKCONSTRAINT2]    Script Date: 05/28/2015 00:18:06 ******/
ALTER TABLE [dbo].[programacionInventario]  WITH CHECK ADD  CONSTRAINT [programacionInventario_FKCONSTRAINT2] FOREIGN KEY([Cod_Usuario])
REFERENCES [dbo].[Usuario] ([Cod_Usuario])
GO
ALTER TABLE [dbo].[programacionInventario] CHECK CONSTRAINT [programacionInventario_FKCONSTRAINT2]
GO
/****** Object:  ForeignKey [programacionInventario_FKCONSTRAINT3]    Script Date: 05/28/2015 00:18:06 ******/
ALTER TABLE [dbo].[programacionInventario]  WITH CHECK ADD  CONSTRAINT [programacionInventario_FKCONSTRAINT3] FOREIGN KEY([idAlmacen])
REFERENCES [dbo].[almacen] ([idAlmacen])
GO
ALTER TABLE [dbo].[programacionInventario] CHECK CONSTRAINT [programacionInventario_FKCONSTRAINT3]
GO
/****** Object:  ForeignKey [programacionInventario_FKCONSTRAINT4]    Script Date: 05/28/2015 00:18:06 ******/
ALTER TABLE [dbo].[programacionInventario]  WITH CHECK ADD  CONSTRAINT [programacionInventario_FKCONSTRAINT4] FOREIGN KEY([idPersona])
REFERENCES [dbo].[persona] ([idPersona])
GO
ALTER TABLE [dbo].[programacionInventario] CHECK CONSTRAINT [programacionInventario_FKCONSTRAINT4]
GO
/****** Object:  ForeignKey [programacionInventario_FKCONSTRAINT5]    Script Date: 05/28/2015 00:18:06 ******/
ALTER TABLE [dbo].[programacionInventario]  WITH CHECK ADD  CONSTRAINT [programacionInventario_FKCONSTRAINT5] FOREIGN KEY([idEstadoInventario])
REFERENCES [dbo].[tablaTipo] ([idTipo])
GO
ALTER TABLE [dbo].[programacionInventario] CHECK CONSTRAINT [programacionInventario_FKCONSTRAINT5]
GO
/****** Object:  ForeignKey [fk_categoria_req]    Script Date: 05/28/2015 00:18:06 ******/
ALTER TABLE [dbo].[RequerimientoCompras]  WITH CHECK ADD  CONSTRAINT [fk_categoria_req] FOREIGN KEY([codCategoria])
REFERENCES [dbo].[Categoria] ([codCategoria])
GO
ALTER TABLE [dbo].[RequerimientoCompras] CHECK CONSTRAINT [fk_categoria_req]
GO
/****** Object:  ForeignKey [fk_personal_req]    Script Date: 05/28/2015 00:18:06 ******/
ALTER TABLE [dbo].[RequerimientoCompras]  WITH CHECK ADD  CONSTRAINT [fk_personal_req] FOREIGN KEY([codPersonal])
REFERENCES [dbo].[Personal] ([codPersonal])
GO
ALTER TABLE [dbo].[RequerimientoCompras] CHECK CONSTRAINT [fk_personal_req]
GO
/****** Object:  ForeignKey [fk_articulo]    Script Date: 05/28/2015 00:18:06 ******/
ALTER TABLE [dbo].[RequerimientoDetalle]  WITH CHECK ADD  CONSTRAINT [fk_articulo] FOREIGN KEY([idProducto])
REFERENCES [dbo].[producto] ([idProducto])
GO
ALTER TABLE [dbo].[RequerimientoDetalle] CHECK CONSTRAINT [fk_articulo]
GO
/****** Object:  ForeignKey [fk_requerimientoCompras]    Script Date: 05/28/2015 00:18:06 ******/
ALTER TABLE [dbo].[RequerimientoDetalle]  WITH CHECK ADD  CONSTRAINT [fk_requerimientoCompras] FOREIGN KEY([codRequerimiento])
REFERENCES [dbo].[RequerimientoCompras] ([codRequerimiento])
GO
ALTER TABLE [dbo].[RequerimientoDetalle] CHECK CONSTRAINT [fk_requerimientoCompras]
GO
/****** Object:  ForeignKey [stock_FKCONSTRAINT2]    Script Date: 05/28/2015 00:18:06 ******/
ALTER TABLE [dbo].[stock]  WITH CHECK ADD  CONSTRAINT [stock_FKCONSTRAINT2] FOREIGN KEY([idAlmacen])
REFERENCES [dbo].[almacen] ([idAlmacen])
GO
ALTER TABLE [dbo].[stock] CHECK CONSTRAINT [stock_FKCONSTRAINT2]
GO
/****** Object:  ForeignKey [stock_FKCONSTRAINT3]    Script Date: 05/28/2015 00:18:06 ******/
ALTER TABLE [dbo].[stock]  WITH CHECK ADD  CONSTRAINT [stock_FKCONSTRAINT3] FOREIGN KEY([idLote])
REFERENCES [dbo].[lote] ([idLote])
GO
ALTER TABLE [dbo].[stock] CHECK CONSTRAINT [stock_FKCONSTRAINT3]
GO
/****** Object:  ForeignKey [stock_FKCONSTRAINT4]    Script Date: 05/28/2015 00:18:06 ******/
ALTER TABLE [dbo].[stock]  WITH CHECK ADD  CONSTRAINT [stock_FKCONSTRAINT4] FOREIGN KEY([Cod_Usuario])
REFERENCES [dbo].[Usuario] ([Cod_Usuario])
GO
ALTER TABLE [dbo].[stock] CHECK CONSTRAINT [stock_FKCONSTRAINT4]
GO
/****** Object:  ForeignKey [zona_FKCONSTRAINT1]    Script Date: 05/28/2015 00:18:06 ******/
ALTER TABLE [dbo].[zona]  WITH CHECK ADD  CONSTRAINT [zona_FKCONSTRAINT1] FOREIGN KEY([idAlmacen])
REFERENCES [dbo].[almacen] ([idAlmacen])
GO
ALTER TABLE [dbo].[zona] CHECK CONSTRAINT [zona_FKCONSTRAINT1]
GO
