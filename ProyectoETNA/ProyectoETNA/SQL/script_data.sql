USE [ETNA]
GO
/****** Object:  Table [dbo].[almacen]    Script Date: 05/28/2015 00:28:47 ******/
SET IDENTITY_INSERT [dbo].[almacen] ON
INSERT [dbo].[almacen] ([idAlmacen], [descripcionAlmacen], [idSupervisorAlmacen], [direccion], [ubigeo], [telefono], [tipoAlmacen], [metraje], [activo], [Cod_Usuario], [fechaCreacion], [fechaModificacion]) VALUES (7, N'Almacén Poseidón', 2, N'', N'', N'', 13, 0, 1, N'4         ', CAST(0x0000A491014A9661 AS DateTime), NULL)
INSERT [dbo].[almacen] ([idAlmacen], [descripcionAlmacen], [idSupervisorAlmacen], [direccion], [ubigeo], [telefono], [tipoAlmacen], [metraje], [activo], [Cod_Usuario], [fechaCreacion], [fechaModificacion]) VALUES (8, N'Almacén Zeus', 2, N'', N'', N'', 12, 0, 1, N'5         ', CAST(0x0000A491014A9661 AS DateTime), NULL)
INSERT [dbo].[almacen] ([idAlmacen], [descripcionAlmacen], [idSupervisorAlmacen], [direccion], [ubigeo], [telefono], [tipoAlmacen], [metraje], [activo], [Cod_Usuario], [fechaCreacion], [fechaModificacion]) VALUES (9, N'Almacén Poseidón', 2, N'', N'', N'', 13, 0, 1, N'4         ', CAST(0x0000A491015533FA AS DateTime), NULL)
INSERT [dbo].[almacen] ([idAlmacen], [descripcionAlmacen], [idSupervisorAlmacen], [direccion], [ubigeo], [telefono], [tipoAlmacen], [metraje], [activo], [Cod_Usuario], [fechaCreacion], [fechaModificacion]) VALUES (10, N'Almacén Zeus', 2, N'', N'', N'', 12, 0, 1, N'5         ', CAST(0x0000A491015533FB AS DateTime), NULL)
INSERT [dbo].[almacen] ([idAlmacen], [descripcionAlmacen], [idSupervisorAlmacen], [direccion], [ubigeo], [telefono], [tipoAlmacen], [metraje], [activo], [Cod_Usuario], [fechaCreacion], [fechaModificacion]) VALUES (11, N'ZEUS', 2, NULL, NULL, NULL, NULL, NULL, 1, N'1         ', CAST(0x0000A4A301143E48 AS DateTime), NULL)
INSERT [dbo].[almacen] ([idAlmacen], [descripcionAlmacen], [idSupervisorAlmacen], [direccion], [ubigeo], [telefono], [tipoAlmacen], [metraje], [activo], [Cod_Usuario], [fechaCreacion], [fechaModificacion]) VALUES (12, N'POSEIDON', 2, NULL, NULL, NULL, NULL, NULL, 1, N'1         ', CAST(0x0000A4A301143E4D AS DateTime), NULL)
SET IDENTITY_INSERT [dbo].[almacen] OFF
/****** Object:  Table [dbo].[IATA]    Script Date: 05/28/2015 00:28:47 ******/
/****** Object:  Table [dbo].[Estado]    Script Date: 05/28/2015 00:28:47 ******/
/****** Object:  Table [dbo].[DosSIICEX]    Script Date: 05/28/2015 00:28:47 ******/
/****** Object:  Table [dbo].[documentoPendiente]    Script Date: 05/28/2015 00:28:47 ******/
INSERT [dbo].[documentoPendiente] ([idDocPendiente], [numeroDocPendiente], [tipoDocumentoPendiente], [idClienteProveedor], [fechaDocumento], [situacionatencion], [activo], [Cod_Usuario], [fechaCreacion], [tipoMovimiento], [idAlmacen], [areaSolicitante], [idUsuarioSolicitante]) VALUES (1, N'0000000001', 21, 6, CAST(0x0000A54400000000 AS DateTime), 78, 1, N'1         ', CAST(0x0000A491015403BB AS DateTime), 22, 12, NULL, NULL)
INSERT [dbo].[documentoPendiente] ([idDocPendiente], [numeroDocPendiente], [tipoDocumentoPendiente], [idClienteProveedor], [fechaDocumento], [situacionatencion], [activo], [Cod_Usuario], [fechaCreacion], [tipoMovimiento], [idAlmacen], [areaSolicitante], [idUsuarioSolicitante]) VALUES (2, N'0000000002', 21, 4, CAST(0x0000A56200000000 AS DateTime), 78, 1, N'1         ', CAST(0x0000A491015403BB AS DateTime), 23, 12, NULL, NULL)
INSERT [dbo].[documentoPendiente] ([idDocPendiente], [numeroDocPendiente], [tipoDocumentoPendiente], [idClienteProveedor], [fechaDocumento], [situacionatencion], [activo], [Cod_Usuario], [fechaCreacion], [tipoMovimiento], [idAlmacen], [areaSolicitante], [idUsuarioSolicitante]) VALUES (3, N'0000000003', 21, 5, CAST(0x0000A56200000000 AS DateTime), 79, 1, N'1         ', CAST(0x0000A491015403BB AS DateTime), 22, 11, NULL, NULL)
/****** Object:  Table [dbo].[docProdTEMP]    Script Date: 05/28/2015 00:28:47 ******/
/****** Object:  Table [dbo].[DocProdReq]    Script Date: 05/28/2015 00:28:47 ******/
/****** Object:  Table [dbo].[Cliente]    Script Date: 05/28/2015 00:28:47 ******/
INSERT [dbo].[Cliente] ([Codigo], [Ruc], [Razon_Social], [Direccion], [CodPai], [Telefono], [Correo], [Observaciones], [Usuario], [Pasword]) VALUES (CAST(1 AS Numeric(9, 0)), N'54789612345', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
/****** Object:  Table [dbo].[Categoria]    Script Date: 05/28/2015 00:28:47 ******/
/****** Object:  Table [dbo].[Cargo]    Script Date: 05/28/2015 00:28:47 ******/
/****** Object:  Table [dbo].[Pais]    Script Date: 05/28/2015 00:28:47 ******/
/****** Object:  Table [dbo].[OpcMenu]    Script Date: 05/28/2015 00:28:47 ******/
/****** Object:  Table [dbo].[Marca]    Script Date: 05/28/2015 00:28:47 ******/
/****** Object:  Table [dbo].[Producto_expo]    Script Date: 05/28/2015 00:28:47 ******/
/****** Object:  Table [dbo].[UsuMenu]    Script Date: 05/28/2015 00:28:47 ******/
INSERT [dbo].[UsuMenu] ([Cod_Usu], [Cod_Men]) VALUES (N'JORGE     ', N'1     ')
INSERT [dbo].[UsuMenu] ([Cod_Usu], [Cod_Men]) VALUES (N'JORGE     ', N'2     ')
INSERT [dbo].[UsuMenu] ([Cod_Usu], [Cod_Men]) VALUES (N'JORGE     ', N'3     ')
INSERT [dbo].[UsuMenu] ([Cod_Usu], [Cod_Men]) VALUES (N'JORGE     ', N'4     ')
/****** Object:  Table [dbo].[Usuario]    Script Date: 05/28/2015 00:28:47 ******/
INSERT [dbo].[Usuario] ([Cod_Usuario], [Pwd_Usuario], [Nom_Usuario], [Tipo_Usuario], [Estado_Usuario], [Filler1]) VALUES (N'1         ', N'1         ', N'admin', N'1', N'1', N'1')
INSERT [dbo].[Usuario] ([Cod_Usuario], [Pwd_Usuario], [Nom_Usuario], [Tipo_Usuario], [Estado_Usuario], [Filler1]) VALUES (N'2         ', N'2         ', N'Manuel', N'2', N'1', N'1')
INSERT [dbo].[Usuario] ([Cod_Usuario], [Pwd_Usuario], [Nom_Usuario], [Tipo_Usuario], [Estado_Usuario], [Filler1]) VALUES (N'3         ', N'3         ', N'Jorge Cabezudo', N'A', N'A', N'')
/****** Object:  Table [dbo].[tablaTipo]    Script Date: 05/28/2015 00:28:47 ******/
SET IDENTITY_INSERT [dbo].[tablaTipo] ON
INSERT [dbo].[tablaTipo] ([idTipo], [nombre], [descripcion], [idTabla]) VALUES (1, N'NATURAL', N'PERSONA NATURAL', N'tipoPersona')
INSERT [dbo].[tablaTipo] ([idTipo], [nombre], [descripcion], [idTabla]) VALUES (2, N'JURIDICA', N'PERSONA JURIDICA', N'tipoPersona')
INSERT [dbo].[tablaTipo] ([idTipo], [nombre], [descripcion], [idTabla]) VALUES (3, N'DNI', N'DNI', N'tipoDocIdentidad')
INSERT [dbo].[tablaTipo] ([idTipo], [nombre], [descripcion], [idTabla]) VALUES (4, N'CE', N'CE', N'tipoDocIdentidad')
INSERT [dbo].[tablaTipo] ([idTipo], [nombre], [descripcion], [idTabla]) VALUES (5, N'MENSUAL', N'MENSUAL', N'tipoInventario')
INSERT [dbo].[tablaTipo] ([idTipo], [nombre], [descripcion], [idTabla]) VALUES (6, N'TERMINADO', N'PRODUCTO TERMINADO', N'tipoProducto')
INSERT [dbo].[tablaTipo] ([idTipo], [nombre], [descripcion], [idTabla]) VALUES (7, N'UTILES', N'UTILES DE OFICINA', N'tipoProducto')
INSERT [dbo].[tablaTipo] ([idTipo], [nombre], [descripcion], [idTabla]) VALUES (8, N'INSUMO', N'MATERIA PRIMA', N'tipoProducto')
INSERT [dbo].[tablaTipo] ([idTipo], [nombre], [descripcion], [idTabla]) VALUES (9, N'SEMITERMINADO', N'PRODUCTO SEMI-TERMINADO', N'tipoProducto')
INSERT [dbo].[tablaTipo] ([idTipo], [nombre], [descripcion], [idTabla]) VALUES (10, N'TRANSITO', N'ALMACEN DE TRANSITO', N'tipoAlmacen')
INSERT [dbo].[tablaTipo] ([idTipo], [nombre], [descripcion], [idTabla]) VALUES (11, N'DISTRIBUCION', N'CENTRO DE DISTRIBUCION', N'tipoAlmacen')
INSERT [dbo].[tablaTipo] ([idTipo], [nombre], [descripcion], [idTabla]) VALUES (12, N'INSUMO', N'ALMACEN DE MATERIA PRIMA', N'tipoAlmacen')
INSERT [dbo].[tablaTipo] ([idTipo], [nombre], [descripcion], [idTabla]) VALUES (13, N'FABRICA', N'ALMACEN DE FABRICA', N'tipoAlmacen')
INSERT [dbo].[tablaTipo] ([idTipo], [nombre], [descripcion], [idTabla]) VALUES (14, N'OFICINA', N'ALMACEN DE OFICINA', N'tipoAlmacen')
INSERT [dbo].[tablaTipo] ([idTipo], [nombre], [descripcion], [idTabla]) VALUES (16, N'NOTA DE INGRESO', N'NOTA DE INGRESO A ALMACEN', N'tipoDocAlmacen')
INSERT [dbo].[tablaTipo] ([idTipo], [nombre], [descripcion], [idTabla]) VALUES (17, N'NOTA DE SALIDA', N'NOTA DE SALIDA DE ALMACEN', N'tipoDocAlmacen')
INSERT [dbo].[tablaTipo] ([idTipo], [nombre], [descripcion], [idTabla]) VALUES (18, N'NOTA DE TRANSFERENCIA', N'NOTA DE TRANSFERENCIA ENTRE ALMACENES', N'tipoDocAlmacen')
INSERT [dbo].[tablaTipo] ([idTipo], [nombre], [descripcion], [idTabla]) VALUES (19, N'ORDEN DE COMPRA', N'ORDEN DE COMPRA', N'tipoDocumentoPendiente')
INSERT [dbo].[tablaTipo] ([idTipo], [nombre], [descripcion], [idTabla]) VALUES (20, N'ORDEN DE PEDIDO', N'ORDEN DE PEDIDO', N'tipoDocumentoPendiente')
INSERT [dbo].[tablaTipo] ([idTipo], [nombre], [descripcion], [idTabla]) VALUES (21, N'ORDEN DE FABRICACION', N'ORDEN DE FABRICACION', N'tipoDocumentoPendiente')
INSERT [dbo].[tablaTipo] ([idTipo], [nombre], [descripcion], [idTabla]) VALUES (22, N'INGRESO', N'MOVIMIENTO DE INGRESO', N'tipoMovimiento')
INSERT [dbo].[tablaTipo] ([idTipo], [nombre], [descripcion], [idTabla]) VALUES (23, N'SALIDA', N'MOVIMIENTO DE SALIDA', N'tipoMovimiento')
INSERT [dbo].[tablaTipo] ([idTipo], [nombre], [descripcion], [idTabla]) VALUES (24, N'ETNA PROFESIONAL', N'LINEA ETNA PROFESIONAL', N'tipoBateria')
INSERT [dbo].[tablaTipo] ([idTipo], [nombre], [descripcion], [idTabla]) VALUES (25, N'ETNA ALTO DESEMPEÑO', N'LINEA ETNA DE ALTO DESEMPEÑO', N'tipoBateria')
INSERT [dbo].[tablaTipo] ([idTipo], [nombre], [descripcion], [idTabla]) VALUES (26, N'ETNA PLATINUM', N'LINEA ETNA PLATINUM', N'tipoBateria')
INSERT [dbo].[tablaTipo] ([idTipo], [nombre], [descripcion], [idTabla]) VALUES (27, N'ETNA BATERIAS INDUSTRIALES', N'LINEA ETNA BATERIAS INDUSTRIALES', N'tipoBateria')
INSERT [dbo].[tablaTipo] ([idTipo], [nombre], [descripcion], [idTabla]) VALUES (28, N'ACUMAXX BATERIAS PARA MINERIA', N'LINEA ETNA PARA MINERIA', N'tipoBateria')
INSERT [dbo].[tablaTipo] ([idTipo], [nombre], [descripcion], [idTabla]) VALUES (29, N'UND', N'UND', N'tipoUnidadMedida')
INSERT [dbo].[tablaTipo] ([idTipo], [nombre], [descripcion], [idTabla]) VALUES (30, N'CONTROL DE CALIDAD', N'CONTROL DE CALIDAD', N'tipoDocumentoPendiente')
INSERT [dbo].[tablaTipo] ([idTipo], [nombre], [descripcion], [idTabla]) VALUES (31, N'PENDIENTE', N'PENDIENTE', N'tipoEstadoInventario')
INSERT [dbo].[tablaTipo] ([idTipo], [nombre], [descripcion], [idTabla]) VALUES (32, N'INICIADO', N'INICIADO', N'tipoEstadoInventario')
INSERT [dbo].[tablaTipo] ([idTipo], [nombre], [descripcion], [idTabla]) VALUES (33, N'CONTABILIZADO', N'CONTABILIZADO', N'tipoEstadoInventario')
INSERT [dbo].[tablaTipo] ([idTipo], [nombre], [descripcion], [idTabla]) VALUES (34, N'FINALIZADO', N'FINALIZADO', N'tipoEstadoInventario')
INSERT [dbo].[tablaTipo] ([idTipo], [nombre], [descripcion], [idTabla]) VALUES (35, N'CANCELADO', N'CANCELADO', N'tipoEstadoInventario')
INSERT [dbo].[tablaTipo] ([idTipo], [nombre], [descripcion], [idTabla]) VALUES (36, N'ANUAL', N'ANUAL', N'tipoInventario')
INSERT [dbo].[tablaTipo] ([idTipo], [nombre], [descripcion], [idTabla]) VALUES (38, N'CICLICO', N'CICLICO', N'tipoInventario')
INSERT [dbo].[tablaTipo] ([idTipo], [nombre], [descripcion], [idTabla]) VALUES (39, N'NATURAL', N'PERSONA NATURAL', N'tipoPersona')
INSERT [dbo].[tablaTipo] ([idTipo], [nombre], [descripcion], [idTabla]) VALUES (40, N'JURIDICA', N'PERSONA JURIDICA', N'tipoPersona')
INSERT [dbo].[tablaTipo] ([idTipo], [nombre], [descripcion], [idTabla]) VALUES (41, N'DNI', N'DNI', N'tipoDocIdentidad')
INSERT [dbo].[tablaTipo] ([idTipo], [nombre], [descripcion], [idTabla]) VALUES (42, N'CE', N'CE', N'tipoDocIdentidad')
INSERT [dbo].[tablaTipo] ([idTipo], [nombre], [descripcion], [idTabla]) VALUES (44, N'TERMINADO', N'PRODUCTO TERMINADO', N'tipoProducto')
INSERT [dbo].[tablaTipo] ([idTipo], [nombre], [descripcion], [idTabla]) VALUES (45, N'UTILES', N'UTILES DE OFICINA', N'tipoProducto')
INSERT [dbo].[tablaTipo] ([idTipo], [nombre], [descripcion], [idTabla]) VALUES (46, N'INSUMO', N'MATERIA PRIMA', N'tipoProducto')
INSERT [dbo].[tablaTipo] ([idTipo], [nombre], [descripcion], [idTabla]) VALUES (47, N'SEMITERMINADO', N'PRODUCTO SEMI-TERMINADO', N'tipoProducto')
INSERT [dbo].[tablaTipo] ([idTipo], [nombre], [descripcion], [idTabla]) VALUES (54, N'NOTA DE INGRESO', N'NOTA DE INGRESO A ALMACEN', N'tipoDocAlmacen')
INSERT [dbo].[tablaTipo] ([idTipo], [nombre], [descripcion], [idTabla]) VALUES (55, N'NOTA DE SALIDA', N'NOTA DE SALIDA DE ALMACEN', N'tipoDocAlmacen')
INSERT [dbo].[tablaTipo] ([idTipo], [nombre], [descripcion], [idTabla]) VALUES (56, N'NOTA DE TRANSFERENCIA', N'NOTA DE TRANSFERENCIA ENTRE ALMACENES', N'tipoDocAlmacen')
INSERT [dbo].[tablaTipo] ([idTipo], [nombre], [descripcion], [idTabla]) VALUES (57, N'ORDEN DE COMPRA', N'ORDEN DE COMPRA', N'tipoDocumentoPendiente')
INSERT [dbo].[tablaTipo] ([idTipo], [nombre], [descripcion], [idTabla]) VALUES (58, N'ORDEN DE PEDIDO', N'ORDEN DE PEDIDO', N'tipoDocumentoPendiente')
INSERT [dbo].[tablaTipo] ([idTipo], [nombre], [descripcion], [idTabla]) VALUES (59, N'ORDEN DE FABRICACION', N'ORDEN DE FABRICACION', N'tipoDocumentoPendiente')
INSERT [dbo].[tablaTipo] ([idTipo], [nombre], [descripcion], [idTabla]) VALUES (62, N'ETNA PROFESIONAL', N'LINEA ETNA PROFESIONAL', N'tipoBateria')
INSERT [dbo].[tablaTipo] ([idTipo], [nombre], [descripcion], [idTabla]) VALUES (63, N'ETNA ALTO DESEMPEÑO', N'LINEA ETNA DE ALTO DESEMPEÑO', N'tipoBateria')
INSERT [dbo].[tablaTipo] ([idTipo], [nombre], [descripcion], [idTabla]) VALUES (64, N'ETNA PLATINUM', N'LINEA ETNA PLATINUM', N'tipoBateria')
INSERT [dbo].[tablaTipo] ([idTipo], [nombre], [descripcion], [idTabla]) VALUES (65, N'ETNA BATERIAS INDUSTRIALES', N'LINEA ETNA BATERIAS INDUSTRIALES', N'tipoBateria')
INSERT [dbo].[tablaTipo] ([idTipo], [nombre], [descripcion], [idTabla]) VALUES (66, N'ACUMAXX BATERIAS PARA MINERIA', N'LINEA ETNA PARA MINERIA', N'tipoBateria')
INSERT [dbo].[tablaTipo] ([idTipo], [nombre], [descripcion], [idTabla]) VALUES (67, N'UND', N'UND', N'tipoUnidadMedida')
INSERT [dbo].[tablaTipo] ([idTipo], [nombre], [descripcion], [idTabla]) VALUES (68, N'CONTROL DE CALIDAD', N'CONTROL DE CALIDAD', N'tipoDocumentoPendiente')
INSERT [dbo].[tablaTipo] ([idTipo], [nombre], [descripcion], [idTabla]) VALUES (77, N'PENDIENTE', N'PENDIENTE', N'estadoAtencion')
INSERT [dbo].[tablaTipo] ([idTipo], [nombre], [descripcion], [idTabla]) VALUES (78, N'TOTAL', N'TOTAL', N'estadoAtencion')
INSERT [dbo].[tablaTipo] ([idTipo], [nombre], [descripcion], [idTabla]) VALUES (79, N'PARCIAL', N'PARCIAL', N'estadoAtencion')
SET IDENTITY_INSERT [dbo].[tablaTipo] OFF
/****** Object:  Table [dbo].[Requerimiento_Detalle]    Script Date: 05/28/2015 00:28:47 ******/
/****** Object:  Table [dbo].[Requerimiento]    Script Date: 05/28/2015 00:28:47 ******/
/****** Object:  Table [dbo].[SolicitudAtencion]    Script Date: 05/28/2015 00:28:47 ******/
/****** Object:  Table [dbo].[zona]    Script Date: 05/28/2015 00:28:47 ******/
/****** Object:  Table [dbo].[producto]    Script Date: 05/28/2015 00:28:47 ******/
SET IDENTITY_INSERT [dbo].[producto] ON
INSERT [dbo].[producto] ([idProducto], [tipoProducto], [codigoProducto], [descripcionProducto], [tipounidadMedida], [numeroPlacas], [capacidadNominal], [capacidadArranque], [largo], [ancho], [alto], [peso], [periodoRecarga], [tiempoMaxSinCarga], [temperaturaMaxCarga], [tipoDeUso], [tiempoGarantia], [stockMinimo], [stockMaximo], [activo], [Cod_Usuario], [fechaCreacion], [fechaModificacion], [pre_prod], [codCategoria], [codMarca]) VALUES (1, NULL, N'PRD-001', N'Prueba-producto', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, N'3         ', CAST(0x0000A49800FF490F AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[producto] ([idProducto], [tipoProducto], [codigoProducto], [descripcionProducto], [tipounidadMedida], [numeroPlacas], [capacidadNominal], [capacidadArranque], [largo], [ancho], [alto], [peso], [periodoRecarga], [tiempoMaxSinCarga], [temperaturaMaxCarga], [tipoDeUso], [tiempoGarantia], [stockMinimo], [stockMaximo], [activo], [Cod_Usuario], [fechaCreacion], [fechaModificacion], [pre_prod], [codCategoria], [codMarca]) VALUES (2, NULL, N'PRD-002', N'Prueba-producto2', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, N'3         ', CAST(0x0000A49800FF55D6 AS DateTime), NULL, NULL, NULL, NULL)
SET IDENTITY_INSERT [dbo].[producto] OFF
/****** Object:  Table [dbo].[Personal]    Script Date: 05/28/2015 00:28:47 ******/
/****** Object:  Table [dbo].[persona]    Script Date: 05/28/2015 00:28:47 ******/
SET IDENTITY_INSERT [dbo].[persona] ON
INSERT [dbo].[persona] ([idPersona], [tipoPersona], [nombres], [apellidoPaterno], [apellidoMaterno], [razonSocial], [tipoDocIdentidad], [numeroDocIdentidad], [direccion], [telefono], [correo], [paginaWeb], [fechaNacimiento], [cargo], [centrocosto], [activo], [fechaIngreso], [Cod_Usuario], [fechaCreacion], [fechaModificacion]) VALUES (4, 1, N'Administrador', N'Administrador', N'Administrador', N'', 3, N'', N'ETNA', N'', N'administrador@etna.com.pe', N'', NULL, N'SISTEMAS', N'CC-SISTEMAS', 1, CAST(0x0000A4910146C865 AS DateTime), N'1         ', CAST(0x0000A4910146C865 AS DateTime), NULL)
INSERT [dbo].[persona] ([idPersona], [tipoPersona], [nombres], [apellidoPaterno], [apellidoMaterno], [razonSocial], [tipoDocIdentidad], [numeroDocIdentidad], [direccion], [telefono], [correo], [paginaWeb], [fechaNacimiento], [cargo], [centrocosto], [activo], [fechaIngreso], [Cod_Usuario], [fechaCreacion], [fechaModificacion]) VALUES (5, 1, N'Jose Luis', N'Carrillo', N'Onairan', N'', 3, N'43814628', N'Jr los ciruelos 633', N'', N'jcarrillo@etna.com.pe', N'', NULL, N'SISTEMAS', N'CC-SISTEMAS', 1, CAST(0x0000A4910146C865 AS DateTime), N'2         ', CAST(0x0000A4910146C865 AS DateTime), NULL)
INSERT [dbo].[persona] ([idPersona], [tipoPersona], [nombres], [apellidoPaterno], [apellidoMaterno], [razonSocial], [tipoDocIdentidad], [numeroDocIdentidad], [direccion], [telefono], [correo], [paginaWeb], [fechaNacimiento], [cargo], [centrocosto], [activo], [fechaIngreso], [Cod_Usuario], [fechaCreacion], [fechaModificacion]) VALUES (6, 2, N'JRMSAC', N'JRMSAC', N'JRMSAC', N'20124545451', 3, N'43814628', N'Jr los ciruelos 633', N'', N'', N'', NULL, N'SISTEMAS', N'CC-SISTEMAS', 1, CAST(0x0000A4910146C865 AS DateTime), N'3         ', CAST(0x0000A4910146C865 AS DateTime), NULL)
SET IDENTITY_INSERT [dbo].[persona] OFF
/****** Object:  Table [dbo].[lote]    Script Date: 05/28/2015 00:28:47 ******/
SET IDENTITY_INSERT [dbo].[lote] ON
INSERT [dbo].[lote] ([idLote], [fechaFabricacion], [ordenFabricacion], [fechaTomaMuestra], [bloqueado], [cantidadProducida], [activo], [Cod_Usuario], [fechaCreacion], [fechaModificacion]) VALUES (1, CAST(0x0000A491015DBA31 AS DateTime), 1, NULL, 0, 500, 1, N'1         ', CAST(0x0000A491015DBA31 AS DateTime), NULL)
INSERT [dbo].[lote] ([idLote], [fechaFabricacion], [ordenFabricacion], [fechaTomaMuestra], [bloqueado], [cantidadProducida], [activo], [Cod_Usuario], [fechaCreacion], [fechaModificacion]) VALUES (2, CAST(0x0000A491015DBA32 AS DateTime), 2, NULL, 0, 1000, 1, N'1         ', CAST(0x0000A491015DBA32 AS DateTime), NULL)
SET IDENTITY_INSERT [dbo].[lote] OFF
/****** Object:  Table [dbo].[documentoAlmacen]    Script Date: 05/28/2015 00:28:47 ******/
INSERT [dbo].[documentoAlmacen] ([correlativo], [idDocPendiente], [numeroDocAlmacen], [tipoMovimiento], [fechaDocumento], [idAlmacen], [activo], [Cod_Usuario], [fechaCreacion]) VALUES (1, 1, N'0000000001', 23, CAST(0x0000A44400000000 AS DateTime), 7, 1, N'1         ', CAST(0x0000A444014AA656 AS DateTime))
INSERT [dbo].[documentoAlmacen] ([correlativo], [idDocPendiente], [numeroDocAlmacen], [tipoMovimiento], [fechaDocumento], [idAlmacen], [activo], [Cod_Usuario], [fechaCreacion]) VALUES (2, 2, N'0000000002', 23, CAST(0x0000A44400000000 AS DateTime), 8, 1, N'1         ', CAST(0x0000A444014AF64A AS DateTime))
INSERT [dbo].[documentoAlmacen] ([correlativo], [idDocPendiente], [numeroDocAlmacen], [tipoMovimiento], [fechaDocumento], [idAlmacen], [activo], [Cod_Usuario], [fechaCreacion]) VALUES (3, 1, N'0000000003', 22, CAST(0x0000A49100000000 AS DateTime), 7, 1, N'1         ', CAST(0x0000A4910160B326 AS DateTime))
/****** Object:  Table [dbo].[detalleDocumentoPendiente]    Script Date: 05/28/2015 00:28:47 ******/
INSERT [dbo].[detalleDocumentoPendiente] ([idDocPendiente], [idDetalleDocPendiente], [idProducto], [cantidadPedida], [cantidadAtendida]) VALUES (1, 1, 1, 20, 20)
INSERT [dbo].[detalleDocumentoPendiente] ([idDocPendiente], [idDetalleDocPendiente], [idProducto], [cantidadPedida], [cantidadAtendida]) VALUES (2, 1, 1, 100, 100)
INSERT [dbo].[detalleDocumentoPendiente] ([idDocPendiente], [idDetalleDocPendiente], [idProducto], [cantidadPedida], [cantidadAtendida]) VALUES (3, 1, 1, 30, 30)
INSERT [dbo].[detalleDocumentoPendiente] ([idDocPendiente], [idDetalleDocPendiente], [idProducto], [cantidadPedida], [cantidadAtendida]) VALUES (1, 2, 2, 10, 10)
INSERT [dbo].[detalleDocumentoPendiente] ([idDocPendiente], [idDetalleDocPendiente], [idProducto], [cantidadPedida], [cantidadAtendida]) VALUES (3, 2, 2, 40, 0)
/****** Object:  Table [dbo].[detalleDocumentoAlmacen]    Script Date: 05/28/2015 00:28:47 ******/
/****** Object:  Table [dbo].[stock]    Script Date: 05/28/2015 00:28:47 ******/
INSERT [dbo].[stock] ([idAlmacen], [idProducto], [idLote], [cantidad], [cantidadReservada], [activo], [Cod_Usuario], [fechaCreacion]) VALUES (7, 1, 1, 100, 400, 1, N'1         ', CAST(0x0000A491015DC125 AS DateTime))
INSERT [dbo].[stock] ([idAlmacen], [idProducto], [idLote], [cantidad], [cantidadReservada], [activo], [Cod_Usuario], [fechaCreacion]) VALUES (7, 2, 2, 200, 500, 1, N'1         ', CAST(0x0000A491015DC125 AS DateTime))
INSERT [dbo].[stock] ([idAlmacen], [idProducto], [idLote], [cantidad], [cantidadReservada], [activo], [Cod_Usuario], [fechaCreacion]) VALUES (8, 1, 1, 100, 400, 1, N'1         ', CAST(0x0000A491015DC125 AS DateTime))
INSERT [dbo].[stock] ([idAlmacen], [idProducto], [idLote], [cantidad], [cantidadReservada], [activo], [Cod_Usuario], [fechaCreacion]) VALUES (8, 2, 2, 200, 500, 1, N'1         ', CAST(0x0000A491015DC125 AS DateTime))
INSERT [dbo].[stock] ([idAlmacen], [idProducto], [idLote], [cantidad], [cantidadReservada], [activo], [Cod_Usuario], [fechaCreacion]) VALUES (11, 1, 1, 30, NULL, 1, N'1         ', CAST(0x0000A4A301273977 AS DateTime))
INSERT [dbo].[stock] ([idAlmacen], [idProducto], [idLote], [cantidad], [cantidadReservada], [activo], [Cod_Usuario], [fechaCreacion]) VALUES (11, 2, 2, 60, NULL, 1, N'1         ', CAST(0x0000A4A301273977 AS DateTime))
INSERT [dbo].[stock] ([idAlmacen], [idProducto], [idLote], [cantidad], [cantidadReservada], [activo], [Cod_Usuario], [fechaCreacion]) VALUES (12, 1, 1, 50, NULL, 1, N'1         ', CAST(0x0000A4A30127396E AS DateTime))
INSERT [dbo].[stock] ([idAlmacen], [idProducto], [idLote], [cantidad], [cantidadReservada], [activo], [Cod_Usuario], [fechaCreacion]) VALUES (12, 2, 2, 40, NULL, 1, N'1         ', CAST(0x0000A4A301273976 AS DateTime))
/****** Object:  Table [dbo].[programacionInventario]    Script Date: 05/28/2015 00:28:47 ******/
SET IDENTITY_INSERT [dbo].[programacionInventario] ON
INSERT [dbo].[programacionInventario] ([idProgInventario], [tipoInventario], [fechaProgramada], [frecuencia], [idAlmacen], [idPersona], [idEstadoInventario], [activo], [Cod_Usuario], [fechaCreacion]) VALUES (1, 5, CAST(0x0000A4A100000000 AS DateTime), 0, 10, 4, 32, 1, N'1         ', CAST(0x0000A49E01018EAB AS DateTime))
INSERT [dbo].[programacionInventario] ([idProgInventario], [tipoInventario], [fechaProgramada], [frecuencia], [idAlmacen], [idPersona], [idEstadoInventario], [activo], [Cod_Usuario], [fechaCreacion]) VALUES (2, 5, CAST(0x0000A4A100000000 AS DateTime), 0, 8, 4, 32, 1, N'1         ', CAST(0x0000A49E01018EB1 AS DateTime))
INSERT [dbo].[programacionInventario] ([idProgInventario], [tipoInventario], [fechaProgramada], [frecuencia], [idAlmacen], [idPersona], [idEstadoInventario], [activo], [Cod_Usuario], [fechaCreacion]) VALUES (3, 5, CAST(0x0000A4A100000000 AS DateTime), NULL, 7, 4, 34, 1, N'1         ', CAST(0x0000A49E0171EE31 AS DateTime))
INSERT [dbo].[programacionInventario] ([idProgInventario], [tipoInventario], [fechaProgramada], [frecuencia], [idAlmacen], [idPersona], [idEstadoInventario], [activo], [Cod_Usuario], [fechaCreacion]) VALUES (4, 36, CAST(0x0000A4A300000000 AS DateTime), NULL, 10, 4, 32, 1, N'1         ', CAST(0x0000A49E01731E53 AS DateTime))
INSERT [dbo].[programacionInventario] ([idProgInventario], [tipoInventario], [fechaProgramada], [frecuencia], [idAlmacen], [idPersona], [idEstadoInventario], [activo], [Cod_Usuario], [fechaCreacion]) VALUES (5, 36, CAST(0x0000A4A300000000 AS DateTime), NULL, 7, 4, 32, 1, N'1         ', CAST(0x0000A49F0001BCFD AS DateTime))
INSERT [dbo].[programacionInventario] ([idProgInventario], [tipoInventario], [fechaProgramada], [frecuencia], [idAlmacen], [idPersona], [idEstadoInventario], [activo], [Cod_Usuario], [fechaCreacion]) VALUES (7, 5, CAST(0x0000A4C200000000 AS DateTime), NULL, 12, 4, 33, 1, N'1         ', CAST(0x0000A4A30127915B AS DateTime))
SET IDENTITY_INSERT [dbo].[programacionInventario] OFF
/****** Object:  Table [dbo].[RequerimientoCompras]    Script Date: 05/28/2015 00:28:47 ******/
/****** Object:  Table [dbo].[RequerimientoDetalle]    Script Date: 05/28/2015 00:28:47 ******/
/****** Object:  Table [dbo].[inventario]    Script Date: 05/28/2015 00:28:47 ******/
SET IDENTITY_INSERT [dbo].[inventario] ON
INSERT [dbo].[inventario] ([idInventario], [idAlmacen], [idProgInventario], [fechaHoraInicio], [fechaHoraFin], [tipo], [activo], [Cod_Usuario], [fechaCreacion], [fechaModificacion]) VALUES (1, 10, 1, CAST(0x0000A49F00205844 AS DateTime), NULL, 5, 1, N'1         ', CAST(0x0000A49F00205844 AS DateTime), NULL)
INSERT [dbo].[inventario] ([idInventario], [idAlmacen], [idProgInventario], [fechaHoraInicio], [fechaHoraFin], [tipo], [activo], [Cod_Usuario], [fechaCreacion], [fechaModificacion]) VALUES (3, 8, 2, CAST(0x0000A49F00215A60 AS DateTime), NULL, 5, 1, N'1         ', CAST(0x0000A49F00215A60 AS DateTime), NULL)
INSERT [dbo].[inventario] ([idInventario], [idAlmacen], [idProgInventario], [fechaHoraInicio], [fechaHoraFin], [tipo], [activo], [Cod_Usuario], [fechaCreacion], [fechaModificacion]) VALUES (4, 7, 3, CAST(0x0000A49F002641F8 AS DateTime), CAST(0x0000A49F00C3F6F8 AS DateTime), 5, 0, N'1         ', CAST(0x0000A49F002641F8 AS DateTime), NULL)
INSERT [dbo].[inventario] ([idInventario], [idAlmacen], [idProgInventario], [fechaHoraInicio], [fechaHoraFin], [tipo], [activo], [Cod_Usuario], [fechaCreacion], [fechaModificacion]) VALUES (5, 10, 4, CAST(0x0000A49F0027976F AS DateTime), NULL, 36, 1, N'1         ', CAST(0x0000A49F0027976F AS DateTime), NULL)
INSERT [dbo].[inventario] ([idInventario], [idAlmacen], [idProgInventario], [fechaHoraInicio], [fechaHoraFin], [tipo], [activo], [Cod_Usuario], [fechaCreacion], [fechaModificacion]) VALUES (6, 7, 5, CAST(0x0000A49F0027FC23 AS DateTime), NULL, 36, 1, N'1         ', CAST(0x0000A49F0027FC23 AS DateTime), NULL)
INSERT [dbo].[inventario] ([idInventario], [idAlmacen], [idProgInventario], [fechaHoraInicio], [fechaHoraFin], [tipo], [activo], [Cod_Usuario], [fechaCreacion], [fechaModificacion]) VALUES (8, 12, 7, CAST(0x0000A4A30127A81F AS DateTime), NULL, 5, 1, N'1         ', CAST(0x0000A4A30127A81F AS DateTime), NULL)
SET IDENTITY_INSERT [dbo].[inventario] OFF
/****** Object:  Table [dbo].[Aprobacion]    Script Date: 05/28/2015 00:28:47 ******/
/****** Object:  Table [dbo].[detalleInventario]    Script Date: 05/28/2015 00:28:47 ******/
SET IDENTITY_INSERT [dbo].[detalleInventario] ON
INSERT [dbo].[detalleInventario] ([idDetalleInventario], [idInventario], [idAlmacen], [idProducto], [idOperadorAlmacen], [cantidadActual], [cantidad], [cantidadAjuste], [fechaHoraToma], [numeroToma]) VALUES (1, 4, 7, 1, 4, 100, 200, -100, CAST(0x0000A49F00264200 AS DateTime), NULL)
INSERT [dbo].[detalleInventario] ([idDetalleInventario], [idInventario], [idAlmacen], [idProducto], [idOperadorAlmacen], [cantidadActual], [cantidad], [cantidadAjuste], [fechaHoraToma], [numeroToma]) VALUES (2, 4, 7, 2, 4, 200, 200, 0, CAST(0x0000A49F00264200 AS DateTime), NULL)
INSERT [dbo].[detalleInventario] ([idDetalleInventario], [idInventario], [idAlmacen], [idProducto], [idOperadorAlmacen], [cantidadActual], [cantidad], [cantidadAjuste], [fechaHoraToma], [numeroToma]) VALUES (3, 6, 7, 1, 4, 100, NULL, NULL, CAST(0x0000A49F0027FC24 AS DateTime), NULL)
INSERT [dbo].[detalleInventario] ([idDetalleInventario], [idInventario], [idAlmacen], [idProducto], [idOperadorAlmacen], [cantidadActual], [cantidad], [cantidadAjuste], [fechaHoraToma], [numeroToma]) VALUES (4, 6, 7, 2, 4, 200, NULL, NULL, CAST(0x0000A49F0027FC24 AS DateTime), NULL)
INSERT [dbo].[detalleInventario] ([idDetalleInventario], [idInventario], [idAlmacen], [idProducto], [idOperadorAlmacen], [cantidadActual], [cantidad], [cantidadAjuste], [fechaHoraToma], [numeroToma]) VALUES (5, 8, 12, 1, 4, 50, 20, NULL, CAST(0x0000A4A30127A849 AS DateTime), NULL)
INSERT [dbo].[detalleInventario] ([idDetalleInventario], [idInventario], [idAlmacen], [idProducto], [idOperadorAlmacen], [cantidadActual], [cantidad], [cantidadAjuste], [fechaHoraToma], [numeroToma]) VALUES (6, 8, 12, 2, 4, 40, 60, NULL, CAST(0x0000A4A30127A849 AS DateTime), NULL)
SET IDENTITY_INSERT [dbo].[detalleInventario] OFF
