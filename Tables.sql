USE [ExamenRelutamientoProAgro]
GO
/****** Object:  Table [dbo].[CAT_ESTADO]    Script Date: 05/07/2021 11:43:51 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[CAT_ESTADO](
	[idEstado] [int] IDENTITY(1,1) NOT NULL,
	[NombreEstado] [varchar](100) NULL,
	[Abreviatura] [varchar](50) NULL,
 CONSTRAINT [PK_CAT_ESTADO] PRIMARY KEY CLUSTERED 
(
	[idEstado] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[CAT_GEORREFERENCIAS]    Script Date: 05/07/2021 11:43:51 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CAT_GEORREFERENCIAS](
	[idGeorreferencia] [int] IDENTITY(1,1) NOT NULL,
	[idEstado] [int] NULL,
	[Latitud] [nvarchar](100) NULL,
	[Longitud] [nvarchar](100) NULL,
 CONSTRAINT [PK_CAT_GEORREFERENCIAS] PRIMARY KEY CLUSTERED 
(
	[idGeorreferencia] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[CAT_USUARIO]    Script Date: 05/07/2021 11:43:51 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CAT_USUARIO](
	[idUsuario] [int] IDENTITY(1,1) NOT NULL,
	[Contraseña] [nvarchar](100) NULL,
	[Nombre] [nvarchar](100) NULL,
	[FechaCreacion] [datetime] NULL,
	[RFC] [nvarchar](100) NULL,
 CONSTRAINT [PK_CAT_USUARIO] PRIMARY KEY CLUSTERED 
(
	[idUsuario] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[CAT_USUARIO_ESTADO]    Script Date: 05/07/2021 11:43:51 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CAT_USUARIO_ESTADO](
	[idUsuario] [int] IDENTITY(1,1) NOT NULL,
	[idEstado] [int] NULL
) ON [PRIMARY]

GO
SET IDENTITY_INSERT [dbo].[CAT_ESTADO] ON 

INSERT [dbo].[CAT_ESTADO] ([idEstado], [NombreEstado], [Abreviatura]) VALUES (1, N'AGUASCALIENTES', N'AGS')
INSERT [dbo].[CAT_ESTADO] ([idEstado], [NombreEstado], [Abreviatura]) VALUES (2, N'BAJA CALIFORNIA', N'BCN')
INSERT [dbo].[CAT_ESTADO] ([idEstado], [NombreEstado], [Abreviatura]) VALUES (3, N'BAJA CALIFORNIA SUR', N'BCS')
INSERT [dbo].[CAT_ESTADO] ([idEstado], [NombreEstado], [Abreviatura]) VALUES (4, N'CAMPECHE', N'CAMP')
INSERT [dbo].[CAT_ESTADO] ([idEstado], [NombreEstado], [Abreviatura]) VALUES (5, N'COAHUILA', N'COAH')
INSERT [dbo].[CAT_ESTADO] ([idEstado], [NombreEstado], [Abreviatura]) VALUES (6, N'COLIMA', N'COL')
INSERT [dbo].[CAT_ESTADO] ([idEstado], [NombreEstado], [Abreviatura]) VALUES (7, N'CHIAPAS', N'CHIS')
INSERT [dbo].[CAT_ESTADO] ([idEstado], [NombreEstado], [Abreviatura]) VALUES (8, N'CHIHUAHUA', N'CHIH')
INSERT [dbo].[CAT_ESTADO] ([idEstado], [NombreEstado], [Abreviatura]) VALUES (9, N'DISTRITO FEDERAL', N'DF')
INSERT [dbo].[CAT_ESTADO] ([idEstado], [NombreEstado], [Abreviatura]) VALUES (10, N'DURANGO', N'DGO')
INSERT [dbo].[CAT_ESTADO] ([idEstado], [NombreEstado], [Abreviatura]) VALUES (11, N'GUANAJUATO', N'GTO')
INSERT [dbo].[CAT_ESTADO] ([idEstado], [NombreEstado], [Abreviatura]) VALUES (12, N'GUERRERO', N'GRO')
INSERT [dbo].[CAT_ESTADO] ([idEstado], [NombreEstado], [Abreviatura]) VALUES (13, N'HIDALGO', N'HGO')
INSERT [dbo].[CAT_ESTADO] ([idEstado], [NombreEstado], [Abreviatura]) VALUES (14, N'JALISCO', N'JAL')
INSERT [dbo].[CAT_ESTADO] ([idEstado], [NombreEstado], [Abreviatura]) VALUES (15, N'ESTADO DE MEXICO', N'MEX')
INSERT [dbo].[CAT_ESTADO] ([idEstado], [NombreEstado], [Abreviatura]) VALUES (16, N'MICHOACAN', N'MICH')
INSERT [dbo].[CAT_ESTADO] ([idEstado], [NombreEstado], [Abreviatura]) VALUES (17, N'MORELOS', N'MOR')
INSERT [dbo].[CAT_ESTADO] ([idEstado], [NombreEstado], [Abreviatura]) VALUES (18, N'NAYARIT', N'NAY')
INSERT [dbo].[CAT_ESTADO] ([idEstado], [NombreEstado], [Abreviatura]) VALUES (19, N'NUEVO LEON', N'NL')
INSERT [dbo].[CAT_ESTADO] ([idEstado], [NombreEstado], [Abreviatura]) VALUES (20, N'OAXACA', N'OAX')
INSERT [dbo].[CAT_ESTADO] ([idEstado], [NombreEstado], [Abreviatura]) VALUES (21, N'PUEBLA', N'PUE')
INSERT [dbo].[CAT_ESTADO] ([idEstado], [NombreEstado], [Abreviatura]) VALUES (22, N'QUERETARO', N'QRO')
INSERT [dbo].[CAT_ESTADO] ([idEstado], [NombreEstado], [Abreviatura]) VALUES (23, N'QUINTANA ROO', N'QROO')
INSERT [dbo].[CAT_ESTADO] ([idEstado], [NombreEstado], [Abreviatura]) VALUES (24, N'SAN LUIS POTOSI', N'SLP')
INSERT [dbo].[CAT_ESTADO] ([idEstado], [NombreEstado], [Abreviatura]) VALUES (25, N'SINALOA', N'SIN')
INSERT [dbo].[CAT_ESTADO] ([idEstado], [NombreEstado], [Abreviatura]) VALUES (26, N'SONORA', N'SON')
INSERT [dbo].[CAT_ESTADO] ([idEstado], [NombreEstado], [Abreviatura]) VALUES (27, N'TABASCO', N'TAB')
INSERT [dbo].[CAT_ESTADO] ([idEstado], [NombreEstado], [Abreviatura]) VALUES (28, N'TAMAULIPAS', N'TAMP')
INSERT [dbo].[CAT_ESTADO] ([idEstado], [NombreEstado], [Abreviatura]) VALUES (29, N'TLAXCALA', N'TLAX')
INSERT [dbo].[CAT_ESTADO] ([idEstado], [NombreEstado], [Abreviatura]) VALUES (30, N'VERACRUZ', N'VER')
INSERT [dbo].[CAT_ESTADO] ([idEstado], [NombreEstado], [Abreviatura]) VALUES (31, N'YUCATAN', N'YUC')
INSERT [dbo].[CAT_ESTADO] ([idEstado], [NombreEstado], [Abreviatura]) VALUES (32, N'ZACATECAS', N'ZAC')
INSERT [dbo].[CAT_ESTADO] ([idEstado], [NombreEstado], [Abreviatura]) VALUES (33, N'CIUDAD DE MÉXICO', N'CDMX')
SET IDENTITY_INSERT [dbo].[CAT_ESTADO] OFF
SET IDENTITY_INSERT [dbo].[CAT_GEORREFERENCIAS] ON 

INSERT [dbo].[CAT_GEORREFERENCIAS] ([idGeorreferencia], [idEstado], [Latitud], [Longitud]) VALUES (1, 1, N'21.13180225', N'-89.50884361')
INSERT [dbo].[CAT_GEORREFERENCIAS] ([idGeorreferencia], [idEstado], [Latitud], [Longitud]) VALUES (2, 1, N'22.302625', N'102.2263139')
INSERT [dbo].[CAT_GEORREFERENCIAS] ([idGeorreferencia], [idEstado], [Latitud], [Longitud]) VALUES (3, 1, N'23.2336', N'103.3168167')
INSERT [dbo].[CAT_GEORREFERENCIAS] ([idGeorreferencia], [idEstado], [Latitud], [Longitud]) VALUES (4, 1, N'23.23353333', N'103.3335528')
INSERT [dbo].[CAT_GEORREFERENCIAS] ([idGeorreferencia], [idEstado], [Latitud], [Longitud]) VALUES (5, 1, N'22.07935', N'102.0409833')
INSERT [dbo].[CAT_GEORREFERENCIAS] ([idGeorreferencia], [idEstado], [Latitud], [Longitud]) VALUES (6, 1, N'22.39769444', N'102.2899333')
INSERT [dbo].[CAT_GEORREFERENCIAS] ([idGeorreferencia], [idEstado], [Latitud], [Longitud]) VALUES (7, 1, N'22.39863333', N'102.2900556')
INSERT [dbo].[CAT_GEORREFERENCIAS] ([idGeorreferencia], [idEstado], [Latitud], [Longitud]) VALUES (8, 1, N'21.98357222', N'102.2667667')
INSERT [dbo].[CAT_GEORREFERENCIAS] ([idGeorreferencia], [idEstado], [Latitud], [Longitud]) VALUES (9, 1, N'21.9836', N'102.2502306')
INSERT [dbo].[CAT_GEORREFERENCIAS] ([idGeorreferencia], [idEstado], [Latitud], [Longitud]) VALUES (10, 1, N'22.616775', N'102.2335389')
INSERT [dbo].[CAT_GEORREFERENCIAS] ([idGeorreferencia], [idEstado], [Latitud], [Longitud]) VALUES (11, 5, N'25.506789', N'-102.2433589')
INSERT [dbo].[CAT_GEORREFERENCIAS] ([idGeorreferencia], [idEstado], [Latitud], [Longitud]) VALUES (12, 5, N'25.50705411', N'-102.2443927')
INSERT [dbo].[CAT_GEORREFERENCIAS] ([idGeorreferencia], [idEstado], [Latitud], [Longitud]) VALUES (13, 5, N'26.30458298', N'-103.0647895')
INSERT [dbo].[CAT_GEORREFERENCIAS] ([idGeorreferencia], [idEstado], [Latitud], [Longitud]) VALUES (14, 5, N'26.30687434', N'-103.0620606')
INSERT [dbo].[CAT_GEORREFERENCIAS] ([idGeorreferencia], [idEstado], [Latitud], [Longitud]) VALUES (15, 5, N'26.30047677', N'-103.0553136')
INSERT [dbo].[CAT_GEORREFERENCIAS] ([idGeorreferencia], [idEstado], [Latitud], [Longitud]) VALUES (16, 5, N'26.29786489', N'-103.0583045')
INSERT [dbo].[CAT_GEORREFERENCIAS] ([idGeorreferencia], [idEstado], [Latitud], [Longitud]) VALUES (17, 5, N'26.30464132', N'-103.0648854')
INSERT [dbo].[CAT_GEORREFERENCIAS] ([idGeorreferencia], [idEstado], [Latitud], [Longitud]) VALUES (18, 5, N'26.30694835', N'-103.0622138')
INSERT [dbo].[CAT_GEORREFERENCIAS] ([idGeorreferencia], [idEstado], [Latitud], [Longitud]) VALUES (19, 5, N'26.31341072', N'-103.0691436')
INSERT [dbo].[CAT_GEORREFERENCIAS] ([idGeorreferencia], [idEstado], [Latitud], [Longitud]) VALUES (20, 5, N'26.31077704', N'-103.0722422')
INSERT [dbo].[CAT_GEORREFERENCIAS] ([idGeorreferencia], [idEstado], [Latitud], [Longitud]) VALUES (21, 25, N'24.20180556', N'107.1031389')
INSERT [dbo].[CAT_GEORREFERENCIAS] ([idGeorreferencia], [idEstado], [Latitud], [Longitud]) VALUES (22, 25, N'2.201583333', N'107.1035556')
INSERT [dbo].[CAT_GEORREFERENCIAS] ([idGeorreferencia], [idEstado], [Latitud], [Longitud]) VALUES (23, 25, N'24.22061111', N'107.1337222')
INSERT [dbo].[CAT_GEORREFERENCIAS] ([idGeorreferencia], [idEstado], [Latitud], [Longitud]) VALUES (24, 25, N'24.22238889', N'107.1337222')
INSERT [dbo].[CAT_GEORREFERENCIAS] ([idGeorreferencia], [idEstado], [Latitud], [Longitud]) VALUES (25, 25, N'24.10958333', N'107.0839722')
INSERT [dbo].[CAT_GEORREFERENCIAS] ([idGeorreferencia], [idEstado], [Latitud], [Longitud]) VALUES (26, 25, N'24.11113889', N'107.08325')
INSERT [dbo].[CAT_GEORREFERENCIAS] ([idGeorreferencia], [idEstado], [Latitud], [Longitud]) VALUES (27, 25, N'24.10941667', N'107.0788889')
INSERT [dbo].[CAT_GEORREFERENCIAS] ([idGeorreferencia], [idEstado], [Latitud], [Longitud]) VALUES (28, 25, N'24.10727778', N'107.0763611')
INSERT [dbo].[CAT_GEORREFERENCIAS] ([idGeorreferencia], [idEstado], [Latitud], [Longitud]) VALUES (29, 25, N'24.21880556', N'107.1337778')
INSERT [dbo].[CAT_GEORREFERENCIAS] ([idGeorreferencia], [idEstado], [Latitud], [Longitud]) VALUES (30, 25, N'24.22055556', N'107.13375')
INSERT [dbo].[CAT_GEORREFERENCIAS] ([idGeorreferencia], [idEstado], [Latitud], [Longitud]) VALUES (31, 14, N'20.62366667', N'103.8016111')
INSERT [dbo].[CAT_GEORREFERENCIAS] ([idGeorreferencia], [idEstado], [Latitud], [Longitud]) VALUES (32, 14, N'20.44083333', N'103.9239167')
INSERT [dbo].[CAT_GEORREFERENCIAS] ([idGeorreferencia], [idEstado], [Latitud], [Longitud]) VALUES (33, 14, N'20.48036111', N'103.9556111')
INSERT [dbo].[CAT_GEORREFERENCIAS] ([idGeorreferencia], [idEstado], [Latitud], [Longitud]) VALUES (34, 14, N'20.48425', N'103.9726389')
INSERT [dbo].[CAT_GEORREFERENCIAS] ([idGeorreferencia], [idEstado], [Latitud], [Longitud]) VALUES (35, 14, N'19.88372222', N'103.372')
INSERT [dbo].[CAT_GEORREFERENCIAS] ([idGeorreferencia], [idEstado], [Latitud], [Longitud]) VALUES (36, 14, N'19.62819444', N'103.7716944')
INSERT [dbo].[CAT_GEORREFERENCIAS] ([idGeorreferencia], [idEstado], [Latitud], [Longitud]) VALUES (37, 14, N'19.64733333', N'103.7284444')
INSERT [dbo].[CAT_GEORREFERENCIAS] ([idGeorreferencia], [idEstado], [Latitud], [Longitud]) VALUES (38, 14, N'19.65225', N'103.7428056')
INSERT [dbo].[CAT_GEORREFERENCIAS] ([idGeorreferencia], [idEstado], [Latitud], [Longitud]) VALUES (39, 14, N'19.65730556', N'103.7916111')
INSERT [dbo].[CAT_GEORREFERENCIAS] ([idGeorreferencia], [idEstado], [Latitud], [Longitud]) VALUES (40, 14, N'19.5935', N'103.8120556')
INSERT [dbo].[CAT_GEORREFERENCIAS] ([idGeorreferencia], [idEstado], [Latitud], [Longitud]) VALUES (41, 28, N'25.74877778', N'97.57894444')
INSERT [dbo].[CAT_GEORREFERENCIAS] ([idGeorreferencia], [idEstado], [Latitud], [Longitud]) VALUES (42, 28, N'25.30605556', N'97.86688889')
INSERT [dbo].[CAT_GEORREFERENCIAS] ([idGeorreferencia], [idEstado], [Latitud], [Longitud]) VALUES (43, 28, N'25.30605556', N'97.86688889')
INSERT [dbo].[CAT_GEORREFERENCIAS] ([idGeorreferencia], [idEstado], [Latitud], [Longitud]) VALUES (44, 28, N'24.61438889', N'97.91577778')
INSERT [dbo].[CAT_GEORREFERENCIAS] ([idGeorreferencia], [idEstado], [Latitud], [Longitud]) VALUES (45, 28, N'25.31441667', N'97.79305556')
INSERT [dbo].[CAT_GEORREFERENCIAS] ([idGeorreferencia], [idEstado], [Latitud], [Longitud]) VALUES (46, 28, N'24.61452778', N'97.91575')
INSERT [dbo].[CAT_GEORREFERENCIAS] ([idGeorreferencia], [idEstado], [Latitud], [Longitud]) VALUES (47, 28, N'25.29966667', N'97.85988889')
INSERT [dbo].[CAT_GEORREFERENCIAS] ([idGeorreferencia], [idEstado], [Latitud], [Longitud]) VALUES (48, 28, N'25.29966667', N'97.85988889')
INSERT [dbo].[CAT_GEORREFERENCIAS] ([idGeorreferencia], [idEstado], [Latitud], [Longitud]) VALUES (49, 28, N'25.74986111', N'97.60216667')
INSERT [dbo].[CAT_GEORREFERENCIAS] ([idGeorreferencia], [idEstado], [Latitud], [Longitud]) VALUES (50, 28, N'25.74986111', N'97.60218611')
SET IDENTITY_INSERT [dbo].[CAT_GEORREFERENCIAS] OFF
SET IDENTITY_INSERT [dbo].[CAT_USUARIO] ON 

INSERT [dbo].[CAT_USUARIO] ([idUsuario], [Contraseña], [Nombre], [FechaCreacion], [RFC]) VALUES (1, N'abcde', N'PORCICULTORES EL HIBRIDO S DE RL', CAST(0x000095D900000000 AS DateTime), N'PHI0501116U3')
INSERT [dbo].[CAT_USUARIO] ([idUsuario], [Contraseña], [Nombre], [FechaCreacion], [RFC]) VALUES (2, N'abcde', N'AGROPECUARIA EL GIGANTE S.A. DE C.V.', CAST(0x00008EB900000000 AS DateTime), N'AGI000114C70')
INSERT [dbo].[CAT_USUARIO] ([idUsuario], [Contraseña], [Nombre], [FechaCreacion], [RFC]) VALUES (3, N'abcde', N'PROVEEDORES AGROALIMENTARIOS DEL DISTRITO DE RIEGO 01 SPR DE RL', CAST(0x000094F500000000 AS DateTime), N'PAD0405282B1')
INSERT [dbo].[CAT_USUARIO] ([idUsuario], [Contraseña], [Nombre], [FechaCreacion], [RFC]) VALUES (4, N'abcde', N'EL SILOGISMO SPR DE RL', CAST(0x00008B9A00000000 AS DateTime), N'SIL971106652')
INSERT [dbo].[CAT_USUARIO] ([idUsuario], [Contraseña], [Nombre], [FechaCreacion], [RFC]) VALUES (5, N'abcde', N'PRODUCTORES UNIDOS DE LAGOS, S.C. DE R.L. DE C.V.', CAST(0x0000968E00000000 AS DateTime), N'PUL0507113N6')
INSERT [dbo].[CAT_USUARIO] ([idUsuario], [Contraseña], [Nombre], [FechaCreacion], [RFC]) VALUES (6, N'abcde', N'ALIMENTOS PROCESADOS EL ZARCO S DE R.L. M.I. DE C.V.', CAST(0x0000975B00000000 AS DateTime), N'APZ060201412')
INSERT [dbo].[CAT_USUARIO] ([idUsuario], [Contraseña], [Nombre], [FechaCreacion], [RFC]) VALUES (7, N'abcde', N'HSBC MEXICO S.A., INSTITUCION DE BANCA MULTIPLE GRUPO FINANCIERO HSBC', CAST(0x000087A200000000 AS DateTime), N'HMI950125KG8')
INSERT [dbo].[CAT_USUARIO] ([idUsuario], [Contraseña], [Nombre], [FechaCreacion], [RFC]) VALUES (8, N'abcde', N'UNION GANADERA LAS TROJES', CAST(0x0000970C00000000 AS DateTime), N'UGD0511148J3')
INSERT [dbo].[CAT_USUARIO] ([idUsuario], [Contraseña], [Nombre], [FechaCreacion], [RFC]) VALUES (9, N'abcde', N'QUESOS LOS MARTINEZ, S. DE R.L. M.I. DE C.V.', CAST(0x0000967300000000 AS DateTime), N'QMA050614F17')
INSERT [dbo].[CAT_USUARIO] ([idUsuario], [Contraseña], [Nombre], [FechaCreacion], [RFC]) VALUES (10, N'abcde', N'RANCHO MEDIO KILO, S. P.R. DE R.L.', CAST(0x00008BF300000000 AS DateTime), N'RMK9802033P7')
INSERT [dbo].[CAT_USUARIO] ([idUsuario], [Contraseña], [Nombre], [FechaCreacion], [RFC]) VALUES (11, N'abcde', N'MARTIN RUIZ BERNAL, S. DE P.R. DE R.L.', CAST(0x000091B900000000 AS DateTime), N'MRB0112136W7')
INSERT [dbo].[CAT_USUARIO] ([idUsuario], [Contraseña], [Nombre], [FechaCreacion], [RFC]) VALUES (12, N'abcde', N'CHIVOS Y BORREGOS DE AGUASCALIENTES, S.P.R. DE R.L', CAST(0x0000976700000000 AS DateTime), N'CBA051107TKA')
INSERT [dbo].[CAT_USUARIO] ([idUsuario], [Contraseña], [Nombre], [FechaCreacion], [RFC]) VALUES (13, N'abcde', N'GANADEROS UNIDOS DE TEQUILILLA', CAST(0x000092DD00000000 AS DateTime), N'GUT021209P8G')
INSERT [dbo].[CAT_USUARIO] ([idUsuario], [Contraseña], [Nombre], [FechaCreacion], [RFC]) VALUES (14, N'abcde', N'COMUNIDAD PRODUCTORA 2000, S.P.R.DE R.L.', CAST(0x00008E9600000000 AS DateTime), N'CPD9912105S7')
INSERT [dbo].[CAT_USUARIO] ([idUsuario], [Contraseña], [Nombre], [FechaCreacion], [RFC]) VALUES (15, N'abcde', N'INOVAGRO, S.A. DE C.V.', CAST(0x0000939A00000000 AS DateTime), N'INO030616JN5')
INSERT [dbo].[CAT_USUARIO] ([idUsuario], [Contraseña], [Nombre], [FechaCreacion], [RFC]) VALUES (16, N'abcde', N'GANADERIA LA GREÑUDA, S.C. DE R.L.', CAST(0x000097EA00000000 AS DateTime), N'GGR060624JV4')
INSERT [dbo].[CAT_USUARIO] ([idUsuario], [Contraseña], [Nombre], [FechaCreacion], [RFC]) VALUES (17, N'abcde', N'PRODUCTORES DE LA ESTANCIA DE CUQUIO, S.C.  DE  R.L.', CAST(0x000096F400000000 AS DateTime), N'PEC051021HX7')
INSERT [dbo].[CAT_USUARIO] ([idUsuario], [Contraseña], [Nombre], [FechaCreacion], [RFC]) VALUES (18, N'abcde', N'GRANJA EL 13 DE LOS ACUÑA, S.P.R.  DE  R.L.', CAST(0x000094B700000000 AS DateTime), N'GTA040327Q39')
INSERT [dbo].[CAT_USUARIO] ([idUsuario], [Contraseña], [Nombre], [FechaCreacion], [RFC]) VALUES (19, N'abcde', N'EL GREÑERO, S. DE R.L. DE C.V.', CAST(0x0000920600000000 AS DateTime), N'GRE0205086JA')
INSERT [dbo].[CAT_USUARIO] ([idUsuario], [Contraseña], [Nombre], [FechaCreacion], [RFC]) VALUES (20, N'abcde', N'AGRASISA, S.A. DE C.V.', CAST(0x0000915200000000 AS DateTime), N'AGR011109ST4')
SET IDENTITY_INSERT [dbo].[CAT_USUARIO] OFF
SET IDENTITY_INSERT [dbo].[CAT_USUARIO_ESTADO] ON 

INSERT [dbo].[CAT_USUARIO_ESTADO] ([idUsuario], [idEstado]) VALUES (1, 1)
INSERT [dbo].[CAT_USUARIO_ESTADO] ([idUsuario], [idEstado]) VALUES (2, 5)
INSERT [dbo].[CAT_USUARIO_ESTADO] ([idUsuario], [idEstado]) VALUES (3, 25)
INSERT [dbo].[CAT_USUARIO_ESTADO] ([idUsuario], [idEstado]) VALUES (4, 14)
INSERT [dbo].[CAT_USUARIO_ESTADO] ([idUsuario], [idEstado]) VALUES (5, 28)
INSERT [dbo].[CAT_USUARIO_ESTADO] ([idUsuario], [idEstado]) VALUES (6, 5)
INSERT [dbo].[CAT_USUARIO_ESTADO] ([idUsuario], [idEstado]) VALUES (7, 5)
INSERT [dbo].[CAT_USUARIO_ESTADO] ([idUsuario], [idEstado]) VALUES (8, 5)
INSERT [dbo].[CAT_USUARIO_ESTADO] ([idUsuario], [idEstado]) VALUES (9, 1)
INSERT [dbo].[CAT_USUARIO_ESTADO] ([idUsuario], [idEstado]) VALUES (10, 25)
INSERT [dbo].[CAT_USUARIO_ESTADO] ([idUsuario], [idEstado]) VALUES (11, 14)
INSERT [dbo].[CAT_USUARIO_ESTADO] ([idUsuario], [idEstado]) VALUES (12, 28)
INSERT [dbo].[CAT_USUARIO_ESTADO] ([idUsuario], [idEstado]) VALUES (13, 28)
INSERT [dbo].[CAT_USUARIO_ESTADO] ([idUsuario], [idEstado]) VALUES (14, 28)
INSERT [dbo].[CAT_USUARIO_ESTADO] ([idUsuario], [idEstado]) VALUES (15, 14)
INSERT [dbo].[CAT_USUARIO_ESTADO] ([idUsuario], [idEstado]) VALUES (16, 14)
INSERT [dbo].[CAT_USUARIO_ESTADO] ([idUsuario], [idEstado]) VALUES (17, 1)
INSERT [dbo].[CAT_USUARIO_ESTADO] ([idUsuario], [idEstado]) VALUES (18, 25)
INSERT [dbo].[CAT_USUARIO_ESTADO] ([idUsuario], [idEstado]) VALUES (19, 25)
INSERT [dbo].[CAT_USUARIO_ESTADO] ([idUsuario], [idEstado]) VALUES (20, 1)
SET IDENTITY_INSERT [dbo].[CAT_USUARIO_ESTADO] OFF
ALTER TABLE [dbo].[CAT_GEORREFERENCIAS]  WITH CHECK ADD  CONSTRAINT [FK_CAT_GEORREFERENCIAS_CAT_ESTADO] FOREIGN KEY([idEstado])
REFERENCES [dbo].[CAT_ESTADO] ([idEstado])
GO
ALTER TABLE [dbo].[CAT_GEORREFERENCIAS] CHECK CONSTRAINT [FK_CAT_GEORREFERENCIAS_CAT_ESTADO]
GO
ALTER TABLE [dbo].[CAT_USUARIO_ESTADO]  WITH CHECK ADD  CONSTRAINT [FK_CAT_USUARIO_ESTADO_CAT_ESTADO] FOREIGN KEY([idEstado])
REFERENCES [dbo].[CAT_ESTADO] ([idEstado])
GO
ALTER TABLE [dbo].[CAT_USUARIO_ESTADO] CHECK CONSTRAINT [FK_CAT_USUARIO_ESTADO_CAT_ESTADO]
GO
ALTER TABLE [dbo].[CAT_USUARIO_ESTADO]  WITH CHECK ADD  CONSTRAINT [FK_CAT_USUARIO_ESTADO_CAT_USUARIO] FOREIGN KEY([idUsuario])
REFERENCES [dbo].[CAT_USUARIO] ([idUsuario])
GO
ALTER TABLE [dbo].[CAT_USUARIO_ESTADO] CHECK CONSTRAINT [FK_CAT_USUARIO_ESTADO_CAT_USUARIO]
GO
