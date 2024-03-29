USE [Technology]
GO
/****** Object:  Table [dbo].[Clientes]    Script Date: 07/03/2024 05:13:38 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Clientes](
	[id_cliente] [int] IDENTITY(1,1) NOT NULL,
	[nombre_empresa] [varchar](100) NULL,
	[direccion] [varchar](200) NULL,
	[telefono] [varchar](15) NULL,
	[email] [varchar](100) NULL,
PRIMARY KEY CLUSTERED 
(
	[id_cliente] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Desarrolladores]    Script Date: 07/03/2024 05:13:38 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Desarrolladores](
	[id_desarrollador] [int] IDENTITY(1,1) NOT NULL,
	[nombre] [varchar](100) NULL,
	[especialidad] [varchar](100) NULL,
	[telefono] [varchar](15) NULL,
	[email] [varchar](100) NULL,
PRIMARY KEY CLUSTERED 
(
	[id_desarrollador] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Empleados]    Script Date: 07/03/2024 05:13:38 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Empleados](
	[id_empleado] [int] IDENTITY(1,1) NOT NULL,
	[nombre] [varchar](100) NULL,
	[cargo] [varchar](100) NULL,
	[telefono] [varchar](15) NULL,
	[email] [varchar](100) NULL,
PRIMARY KEY CLUSTERED 
(
	[id_empleado] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Mantenimiento]    Script Date: 07/03/2024 05:13:38 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Mantenimiento](
	[id_mantenimiento] [int] IDENTITY(1,1) NOT NULL,
	[id_proyecto] [int] NULL,
	[fecha_mantenimiento] [date] NULL,
	[costo] [decimal](10, 2) NULL,
PRIMARY KEY CLUSTERED 
(
	[id_mantenimiento] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Pedidos]    Script Date: 07/03/2024 05:13:38 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Pedidos](
	[id_pedido] [int] IDENTITY(1,1) NOT NULL,
	[id_cliente] [int] NULL,
	[id_proyecto] [int] NULL,
	[id_empleado] [int] NULL,
	[fecha_pedido] [date] NULL,
PRIMARY KEY CLUSTERED 
(
	[id_pedido] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Proyectos]    Script Date: 07/03/2024 05:13:38 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Proyectos](
	[id_proyecto] [int] IDENTITY(1,1) NOT NULL,
	[nombre_proyecto] [varchar](100) NULL,
	[descripcion] [text] NULL,
	[fecha_inicio] [date] NULL,
	[fecha_fin] [date] NULL,
PRIMARY KEY CLUSTERED 
(
	[id_proyecto] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Clientes] ON 

INSERT [dbo].[Clientes] ([id_cliente], [nombre_empresa], [direccion], [telefono], [email]) VALUES (1, N'SolucionesTec', N'Calle Principal 123', N'8091112233', N'solucionesTec@gmail.com')
INSERT [dbo].[Clientes] ([id_cliente], [nombre_empresa], [direccion], [telefono], [email]) VALUES (2, N'InnovaciónDigital', N'Avenida Central 456', N'8092223344', N'innovacionDigital@gmail.com')
INSERT [dbo].[Clientes] ([id_cliente], [nombre_empresa], [direccion], [telefono], [email]) VALUES (3, N'TechLabs', N'Boulevard Sur 789', N'8093334455', N'techLabs@gmail.com')
INSERT [dbo].[Clientes] ([id_cliente], [nombre_empresa], [direccion], [telefono], [email]) VALUES (4, N'CodeMaster', N'Calle Este 321', N'8094445566', N'codeMaster@gmail.com')
INSERT [dbo].[Clientes] ([id_cliente], [nombre_empresa], [direccion], [telefono], [email]) VALUES (5, N'SoftWorks', N'Avenida Norte 654', N'8095556677', N'softWorks@gmail.com')
INSERT [dbo].[Clientes] ([id_cliente], [nombre_empresa], [direccion], [telefono], [email]) VALUES (6, N'ByteTech', N'Calle Oeste 987', N'8096667788', N'byteTech@gmail.com')
INSERT [dbo].[Clientes] ([id_cliente], [nombre_empresa], [direccion], [telefono], [email]) VALUES (7, N'Mindware', N'Boulevard Oeste 210', N'8097778899', N'mindware@gmail.com')
INSERT [dbo].[Clientes] ([id_cliente], [nombre_empresa], [direccion], [telefono], [email]) VALUES (8, N'SoftGenius', N'Avenida Sur 753', N'8098889900', N'softGenius@gmail.com')
INSERT [dbo].[Clientes] ([id_cliente], [nombre_empresa], [direccion], [telefono], [email]) VALUES (9, N'DataTech Solutions', N'Calle Norte 486', N'8099990011', N'dataTechSolutions@gmail.com')
INSERT [dbo].[Clientes] ([id_cliente], [nombre_empresa], [direccion], [telefono], [email]) VALUES (10, N'InnovaciónSoftech', N'Boulevard Este 159', N'8090001122', N'innovacionSoftech@gmail.com')
SET IDENTITY_INSERT [dbo].[Clientes] OFF
GO
SET IDENTITY_INSERT [dbo].[Desarrolladores] ON 

INSERT [dbo].[Desarrolladores] ([id_desarrollador], [nombre], [especialidad], [telefono], [email]) VALUES (1, N'Eduardo Martínez', N'Desarrollador Web', N'8091112233', N'eduardo.martinez@gmail.com')
INSERT [dbo].[Desarrolladores] ([id_desarrollador], [nombre], [especialidad], [telefono], [email]) VALUES (2, N'Laura García', N'Desarrollador de Aplicaciones Móviles', N'8092223344', N'laura.garcia@hotmail.com')
INSERT [dbo].[Desarrolladores] ([id_desarrollador], [nombre], [especialidad], [telefono], [email]) VALUES (3, N'Daniel Rodríguez', N'Diseñador UI/UX', N'8093334455', N'daniel.rodriguez@gmail.com')
INSERT [dbo].[Desarrolladores] ([id_desarrollador], [nombre], [especialidad], [telefono], [email]) VALUES (4, N'Ana López', N'Desarrollador Full Stack', N'8094445566', N'ana.lopez@hotmail.com')
INSERT [dbo].[Desarrolladores] ([id_desarrollador], [nombre], [especialidad], [telefono], [email]) VALUES (5, N'Carlos Sánchez', N'Ingeniero de Software', N'8095556677', N'carlos.sanchez@gmail.com')
INSERT [dbo].[Desarrolladores] ([id_desarrollador], [nombre], [especialidad], [telefono], [email]) VALUES (6, N'María González', N'Analista de Sistemas', N'8096667788', N'maria.gonzalez@hotmail.com')
INSERT [dbo].[Desarrolladores] ([id_desarrollador], [nombre], [especialidad], [telefono], [email]) VALUES (7, N'Juan Hernández', N'Desarrollador Backend', N'8097778899', N'juan.hernandez@gmail.com')
INSERT [dbo].[Desarrolladores] ([id_desarrollador], [nombre], [especialidad], [telefono], [email]) VALUES (8, N'Sofía Pérez', N'Especialista en Bases de Datos', N'8098889900', N'sofia.perez@hotmail.com')
INSERT [dbo].[Desarrolladores] ([id_desarrollador], [nombre], [especialidad], [telefono], [email]) VALUES (9, N'Diego Martín', N'Tester de Software', N'8099990011', N'diego.martin@gmail.com')
INSERT [dbo].[Desarrolladores] ([id_desarrollador], [nombre], [especialidad], [telefono], [email]) VALUES (10, N'Laura Ramírez', N'Desarrollador Frontend', N'8090001122', N'laura.ramirez@hotmail.com')
SET IDENTITY_INSERT [dbo].[Desarrolladores] OFF
GO
SET IDENTITY_INSERT [dbo].[Empleados] ON 

INSERT [dbo].[Empleados] ([id_empleado], [nombre], [cargo], [telefono], [email]) VALUES (1, N'Juan Pérez', N'Gerente de Proyecto', N'8091112233', N'juan.perez@gmail.com')
INSERT [dbo].[Empleados] ([id_empleado], [nombre], [cargo], [telefono], [email]) VALUES (2, N'María Rodríguez', N'Desarrollador Senior', N'8092223344', N'maria.rodriguez@gmail.com')
INSERT [dbo].[Empleados] ([id_empleado], [nombre], [cargo], [telefono], [email]) VALUES (3, N'Carlos Gómez', N'Analista de Sistemas', N'8093334455', N'carlos.gomez@gmail.com')
INSERT [dbo].[Empleados] ([id_empleado], [nombre], [cargo], [telefono], [email]) VALUES (4, N'Luis Hernández', N'Diseñador UI/UX', N'8094445566', N'luis.hernandez@gmail.com')
INSERT [dbo].[Empleados] ([id_empleado], [nombre], [cargo], [telefono], [email]) VALUES (5, N'Ana Martínez', N'Ingeniero de Software', N'8095556677', N'ana.martinez@gmail.com')
INSERT [dbo].[Empleados] ([id_empleado], [nombre], [cargo], [telefono], [email]) VALUES (6, N'Pedro López', N'Especialista en Bases de Datos', N'8096667788', N'pedro.lopez@gmail.com')
INSERT [dbo].[Empleados] ([id_empleado], [nombre], [cargo], [telefono], [email]) VALUES (7, N'Sofía Díaz', N'Tester de Software', N'8097778899', N'sofia.diaz@gmail.com')
INSERT [dbo].[Empleados] ([id_empleado], [nombre], [cargo], [telefono], [email]) VALUES (8, N'Jorge Vásquez', N'Desarrollador Frontend', N'8098889900', N'jorge.vasquez@gmail.com')
INSERT [dbo].[Empleados] ([id_empleado], [nombre], [cargo], [telefono], [email]) VALUES (9, N'Laura Ramírez', N'Scrum Master', N'8099990011', N'laura.ramirez@gmail.com')
INSERT [dbo].[Empleados] ([id_empleado], [nombre], [cargo], [telefono], [email]) VALUES (10, N'Diego Torres', N'Desarrollador Full Stack', N'8090001122', N'diego.torres@gmail.com')
SET IDENTITY_INSERT [dbo].[Empleados] OFF
GO
SET IDENTITY_INSERT [dbo].[Mantenimiento] ON 

INSERT [dbo].[Mantenimiento] ([id_mantenimiento], [id_proyecto], [fecha_mantenimiento], [costo]) VALUES (1, 1, CAST(N'2024-03-01' AS Date), CAST(500.00 AS Decimal(10, 2)))
INSERT [dbo].[Mantenimiento] ([id_mantenimiento], [id_proyecto], [fecha_mantenimiento], [costo]) VALUES (2, 2, CAST(N'2024-04-15' AS Date), CAST(750.00 AS Decimal(10, 2)))
INSERT [dbo].[Mantenimiento] ([id_mantenimiento], [id_proyecto], [fecha_mantenimiento], [costo]) VALUES (3, 3, CAST(N'2024-05-10' AS Date), CAST(600.00 AS Decimal(10, 2)))
INSERT [dbo].[Mantenimiento] ([id_mantenimiento], [id_proyecto], [fecha_mantenimiento], [costo]) VALUES (4, 4, CAST(N'2024-06-20' AS Date), CAST(900.00 AS Decimal(10, 2)))
INSERT [dbo].[Mantenimiento] ([id_mantenimiento], [id_proyecto], [fecha_mantenimiento], [costo]) VALUES (5, 5, CAST(N'2024-07-25' AS Date), CAST(800.00 AS Decimal(10, 2)))
INSERT [dbo].[Mantenimiento] ([id_mantenimiento], [id_proyecto], [fecha_mantenimiento], [costo]) VALUES (6, 6, CAST(N'2024-08-10' AS Date), CAST(1200.00 AS Decimal(10, 2)))
INSERT [dbo].[Mantenimiento] ([id_mantenimiento], [id_proyecto], [fecha_mantenimiento], [costo]) VALUES (7, 7, CAST(N'2024-09-05' AS Date), CAST(1000.00 AS Decimal(10, 2)))
INSERT [dbo].[Mantenimiento] ([id_mantenimiento], [id_proyecto], [fecha_mantenimiento], [costo]) VALUES (8, 8, CAST(N'2024-10-15' AS Date), CAST(850.00 AS Decimal(10, 2)))
INSERT [dbo].[Mantenimiento] ([id_mantenimiento], [id_proyecto], [fecha_mantenimiento], [costo]) VALUES (9, 9, CAST(N'2024-11-20' AS Date), CAST(1100.00 AS Decimal(10, 2)))
INSERT [dbo].[Mantenimiento] ([id_mantenimiento], [id_proyecto], [fecha_mantenimiento], [costo]) VALUES (10, 10, CAST(N'2024-12-30' AS Date), CAST(950.00 AS Decimal(10, 2)))
SET IDENTITY_INSERT [dbo].[Mantenimiento] OFF
GO
SET IDENTITY_INSERT [dbo].[Pedidos] ON 

INSERT [dbo].[Pedidos] ([id_pedido], [id_cliente], [id_proyecto], [id_empleado], [fecha_pedido]) VALUES (1, 1, 1, 1, CAST(N'2024-02-05' AS Date))
INSERT [dbo].[Pedidos] ([id_pedido], [id_cliente], [id_proyecto], [id_empleado], [fecha_pedido]) VALUES (2, 2, 2, 2, CAST(N'2024-03-20' AS Date))
INSERT [dbo].[Pedidos] ([id_pedido], [id_cliente], [id_proyecto], [id_empleado], [fecha_pedido]) VALUES (3, 3, 3, 3, CAST(N'2024-04-15' AS Date))
INSERT [dbo].[Pedidos] ([id_pedido], [id_cliente], [id_proyecto], [id_empleado], [fecha_pedido]) VALUES (4, 4, 4, 4, CAST(N'2024-05-25' AS Date))
INSERT [dbo].[Pedidos] ([id_pedido], [id_cliente], [id_proyecto], [id_empleado], [fecha_pedido]) VALUES (5, 5, 5, 5, CAST(N'2024-06-30' AS Date))
INSERT [dbo].[Pedidos] ([id_pedido], [id_cliente], [id_proyecto], [id_empleado], [fecha_pedido]) VALUES (6, 6, 6, 6, CAST(N'2024-07-15' AS Date))
INSERT [dbo].[Pedidos] ([id_pedido], [id_cliente], [id_proyecto], [id_empleado], [fecha_pedido]) VALUES (7, 7, 7, 7, CAST(N'2024-08-20' AS Date))
INSERT [dbo].[Pedidos] ([id_pedido], [id_cliente], [id_proyecto], [id_empleado], [fecha_pedido]) VALUES (8, 8, 8, 8, CAST(N'2024-09-25' AS Date))
INSERT [dbo].[Pedidos] ([id_pedido], [id_cliente], [id_proyecto], [id_empleado], [fecha_pedido]) VALUES (9, 9, 9, 9, CAST(N'2024-10-30' AS Date))
INSERT [dbo].[Pedidos] ([id_pedido], [id_cliente], [id_proyecto], [id_empleado], [fecha_pedido]) VALUES (10, 10, 10, 10, CAST(N'2024-11-15' AS Date))
SET IDENTITY_INSERT [dbo].[Pedidos] OFF
GO
SET IDENTITY_INSERT [dbo].[Proyectos] ON 

INSERT [dbo].[Proyectos] ([id_proyecto], [nombre_proyecto], [descripcion], [fecha_inicio], [fecha_fin]) VALUES (1, N'AppSale', N'Desarrollo de una aplicación móvil para gestionar ventas.', CAST(N'2024-02-01' AS Date), CAST(N'2024-08-30' AS Date))
INSERT [dbo].[Proyectos] ([id_proyecto], [nombre_proyecto], [descripcion], [fecha_inicio], [fecha_fin]) VALUES (2, N'Dynamic', N'Diseño e implementación de un sistema de gestión de inventario.', CAST(N'2024-03-15' AS Date), CAST(N'2024-10-31' AS Date))
INSERT [dbo].[Proyectos] ([id_proyecto], [nombre_proyecto], [descripcion], [fecha_inicio], [fecha_fin]) VALUES (3, N'PromoApp', N'Creación de un sitio web para promoción de productos.', CAST(N'2024-04-10' AS Date), CAST(N'2024-12-15' AS Date))
INSERT [dbo].[Proyectos] ([id_proyecto], [nombre_proyecto], [descripcion], [fecha_inicio], [fecha_fin]) VALUES (4, N'CountApp', N'Desarrollo de un software de contabilidad empresarial.', CAST(N'2024-05-20' AS Date), CAST(N'2025-01-31' AS Date))
INSERT [dbo].[Proyectos] ([id_proyecto], [nombre_proyecto], [descripcion], [fecha_inicio], [fecha_fin]) VALUES (5, N'HummanApp', N'Implementación de un sistema de gestión de recursos humanos.', CAST(N'2024-06-25' AS Date), CAST(N'2025-03-15' AS Date))
INSERT [dbo].[Proyectos] ([id_proyecto], [nombre_proyecto], [descripcion], [fecha_inicio], [fecha_fin]) VALUES (6, N'Virtuality', N'Diseño de una aplicación de realidad virtual para capacitación.', CAST(N'2024-07-10' AS Date), CAST(N'2025-04-30' AS Date))
INSERT [dbo].[Proyectos] ([id_proyecto], [nombre_proyecto], [descripcion], [fecha_inicio], [fecha_fin]) VALUES (7, N'JMetodology', N'Desarrollo de un sistema de gestión de proyectos.', CAST(N'2024-08-05' AS Date), CAST(N'2025-06-15' AS Date))
INSERT [dbo].[Proyectos] ([id_proyecto], [nombre_proyecto], [descripcion], [fecha_inicio], [fecha_fin]) VALUES (8, N'PyAn', N'Implementación de un software de análisis de datos.', CAST(N'2024-09-15' AS Date), CAST(N'2025-07-31' AS Date))
INSERT [dbo].[Proyectos] ([id_proyecto], [nombre_proyecto], [descripcion], [fecha_inicio], [fecha_fin]) VALUES (9, N'MailerApp', N'Creación de una plataforma de comercio electrónico.', CAST(N'2024-10-20' AS Date), CAST(N'2025-09-15' AS Date))
INSERT [dbo].[Proyectos] ([id_proyecto], [nombre_proyecto], [descripcion], [fecha_inicio], [fecha_fin]) VALUES (10, N'YouYou', N'Desarrollo de una aplicación de mensajería instantánea.', CAST(N'2024-11-30' AS Date), CAST(N'2025-11-30' AS Date))
SET IDENTITY_INSERT [dbo].[Proyectos] OFF
GO
ALTER TABLE [dbo].[Mantenimiento]  WITH CHECK ADD FOREIGN KEY([id_proyecto])
REFERENCES [dbo].[Proyectos] ([id_proyecto])
GO
ALTER TABLE [dbo].[Pedidos]  WITH CHECK ADD FOREIGN KEY([id_cliente])
REFERENCES [dbo].[Clientes] ([id_cliente])
GO
ALTER TABLE [dbo].[Pedidos]  WITH CHECK ADD FOREIGN KEY([id_empleado])
REFERENCES [dbo].[Empleados] ([id_empleado])
GO
ALTER TABLE [dbo].[Pedidos]  WITH CHECK ADD FOREIGN KEY([id_proyecto])
REFERENCES [dbo].[Proyectos] ([id_proyecto])
GO
