USE [master]
GO
/****** Object:  Database [Preguntadort_Bottarini_Piva]    Script Date: 10/8/2023 09:02:47 ******/
CREATE DATABASE [Preguntadort_Bottarini_Piva]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Preguntadort_Bottarini_Piva', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.MSSQLSERVER\MSSQL\DATA\Preguntadort_Bottarini_Piva.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'Preguntadort_Bottarini_Piva_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.MSSQLSERVER\MSSQL\DATA\Preguntadort_Bottarini_Piva_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [Preguntadort_Bottarini_Piva] SET COMPATIBILITY_LEVEL = 140
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Preguntadort_Bottarini_Piva].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Preguntadort_Bottarini_Piva] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Preguntadort_Bottarini_Piva] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Preguntadort_Bottarini_Piva] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Preguntadort_Bottarini_Piva] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Preguntadort_Bottarini_Piva] SET ARITHABORT OFF 
GO
ALTER DATABASE [Preguntadort_Bottarini_Piva] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [Preguntadort_Bottarini_Piva] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Preguntadort_Bottarini_Piva] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Preguntadort_Bottarini_Piva] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Preguntadort_Bottarini_Piva] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Preguntadort_Bottarini_Piva] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Preguntadort_Bottarini_Piva] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Preguntadort_Bottarini_Piva] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Preguntadort_Bottarini_Piva] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Preguntadort_Bottarini_Piva] SET  DISABLE_BROKER 
GO
ALTER DATABASE [Preguntadort_Bottarini_Piva] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Preguntadort_Bottarini_Piva] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Preguntadort_Bottarini_Piva] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Preguntadort_Bottarini_Piva] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Preguntadort_Bottarini_Piva] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Preguntadort_Bottarini_Piva] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Preguntadort_Bottarini_Piva] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Preguntadort_Bottarini_Piva] SET RECOVERY FULL 
GO
ALTER DATABASE [Preguntadort_Bottarini_Piva] SET  MULTI_USER 
GO
ALTER DATABASE [Preguntadort_Bottarini_Piva] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Preguntadort_Bottarini_Piva] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Preguntadort_Bottarini_Piva] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Preguntadort_Bottarini_Piva] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [Preguntadort_Bottarini_Piva] SET DELAYED_DURABILITY = DISABLED 
GO
EXEC sys.sp_db_vardecimal_storage_format N'Preguntadort_Bottarini_Piva', N'ON'
GO
ALTER DATABASE [Preguntadort_Bottarini_Piva] SET QUERY_STORE = OFF
GO
USE [Preguntadort_Bottarini_Piva]
GO
/****** Object:  User [alumno]    Script Date: 10/8/2023 09:02:47 ******/
CREATE USER [alumno] FOR LOGIN [alumno] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  Table [dbo].[Categorias]    Script Date: 10/8/2023 09:02:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Categorias](
	[IdCategoria] [int] IDENTITY(1,1) NOT NULL,
	[Nombre] [varchar](100) NULL,
	[Foto(opcional)] [varchar](100) NULL,
 CONSTRAINT [PK_Categorias] PRIMARY KEY CLUSTERED 
(
	[IdCategoria] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Dificultades]    Script Date: 10/8/2023 09:02:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Dificultades](
	[IdDificultad] [int] IDENTITY(1,1) NOT NULL,
	[Nombre] [varchar](100) NULL,
 CONSTRAINT [PK_Dificultades] PRIMARY KEY CLUSTERED 
(
	[IdDificultad] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Preguntas]    Script Date: 10/8/2023 09:02:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Preguntas](
	[IdPregunta] [int] IDENTITY(1,1) NOT NULL,
	[IdCategoria] [int] NULL,
	[IdDificultad] [int] NULL,
	[Enunciado] [varchar](250) NULL,
	[Foto(opcional)] [varchar](250) NULL,
 CONSTRAINT [PK_Preguntas] PRIMARY KEY CLUSTERED 
(
	[IdPregunta] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Respuestas]    Script Date: 10/8/2023 09:02:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Respuestas](
	[IdRespuesta] [int] IDENTITY(1,1) NOT NULL,
	[IdPregunta] [int] NULL,
	[Opcion] [int] NULL,
	[Contenido] [varchar](100) NULL,
	[Correcta] [bit] NULL,
	[Foto(opcional)] [varchar](100) NULL,
 CONSTRAINT [PK_Respuestas] PRIMARY KEY CLUSTERED 
(
	[IdRespuesta] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Categorias] ON 

INSERT [dbo].[Categorias] ([IdCategoria], [Nombre], [Foto(opcional)]) VALUES (1, N'CULTURA POP', N'entretenimiento.jpg')
INSERT [dbo].[Categorias] ([IdCategoria], [Nombre], [Foto(opcional)]) VALUES (2, N'CIENCIA', N'ciencia.jpg')
INSERT [dbo].[Categorias] ([IdCategoria], [Nombre], [Foto(opcional)]) VALUES (3, N'DEPORTES', N'deporte.jpg')
SET IDENTITY_INSERT [dbo].[Categorias] OFF
GO
SET IDENTITY_INSERT [dbo].[Dificultades] ON 

INSERT [dbo].[Dificultades] ([IdDificultad], [Nombre]) VALUES (1, N'FACIL')
INSERT [dbo].[Dificultades] ([IdDificultad], [Nombre]) VALUES (2, N'MEDIO')
INSERT [dbo].[Dificultades] ([IdDificultad], [Nombre]) VALUES (3, N'DIFICIL')
SET IDENTITY_INSERT [dbo].[Dificultades] OFF
GO
SET IDENTITY_INSERT [dbo].[Preguntas] ON 

INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto(opcional)]) VALUES (1, 1, 1, N'¿Cuál es el nombre del protagonista de la saga de películas "Harry Potter"?', N'harrypotter.png')
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto(opcional)]) VALUES (2, 1, 1, N'¿En qué película de Disney una joven encuentra el amor verdadero con un príncipe que se convierte en bestia?', NULL)
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto(opcional)]) VALUES (3, 1, 1, N'¿Cuál es el título de la canción más reproducida en Spotify hasta la fecha?', N'spotify.png')
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto(opcional)]) VALUES (4, 1, 1, N'¿Cuál es el nombre del actor que interpreta a Iron Man en las películas de Marvel?', N'marvel.png')
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto(opcional)]) VALUES (5, 1, 1, N'¿Qué popular serie de ciencia ficción sigue las aventuras de un excéntrico viajero en el tiempo y su nave espacial que parece una cabina de policía británica?', NULL)
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto(opcional)]) VALUES (6, 1, 2, N'¿Qué famoso cantante es conocido como "el Rey del Pop"?', NULL)
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto(opcional)]) VALUES (7, 1, 2, N'¿Cuál es el nombre del director y creador de la saga de películas "Star Wars"?', N'starwars.png')
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto(opcional)]) VALUES (8, 1, 2, N'¿Cuál es el título de la serie de Netflix protagonizada por Millie Bobby Brown que se centra en un grupo de niños con poderes sobrenaturales?', N'hermanosduffer.png')
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto(opcional)]) VALUES (9, 1, 2, N'¿Cuál es el nombre de la cantante estadounidense conocida por su álbum "1989" y éxitos como "Shake It Off"?', NULL)
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto(opcional)]) VALUES (10, 1, 2, N'¿En qué película animada una joven china se disfraza de hombre para tomar el lugar de su padre en el ejército?', NULL)
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto(opcional)]) VALUES (11, 1, 3, N'¿Qué serie de televisión de ciencia ficción creada por los hermanos Duffer se ha convertido en un éxito mundial?', NULL)
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto(opcional)]) VALUES (12, 1, 3, N'¿Cuál es el nombre de la actriz que interpreta a Black Widow en las películas del Universo Cinematográfico de Marvel?', N'blackwidow.png')
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto(opcional)]) VALUES (13, 1, 3, N'¿Cuál es el nombre del villano enmascarado de la saga "Scream"?', NULL)
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto(opcional)]) VALUES (14, 1, 3, N'¿Cuál es el título de la canción de Luis Fonsi y Daddy Yankee que se convirtió en un fenómeno global en 2017?', NULL)
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto(opcional)]) VALUES (15, 1, 3, N'¿En qué película de ciencia ficción un hacker llamado Neo descubre que vive en una realidad simulada por máquinas?', NULL)
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto(opcional)]) VALUES (16, 2, 1, N'¿Cuál es el nombre del sistema operativo más utilizado en teléfonos móviles?', NULL)
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto(opcional)]) VALUES (17, 2, 1, N'¿Qué significa la sigla "USB" en informática?', NULL)
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto(opcional)]) VALUES (18, 2, 1, N'¿Cuál es el nombre del fundador de Tesla Motors?', NULL)
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto(opcional)]) VALUES (19, 2, 1, N'¿Cuál es la unidad básica de almacenamiento en un disco duro de computadora?', NULL)
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto(opcional)]) VALUES (20, 2, 1, N'¿Qué famosa empresa de comercio electrónico fue fundada por Jeff Bezos?', NULL)
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto(opcional)]) VALUES (21, 2, 2, N'¿Qué científico formuló la teoría de la relatividad?', NULL)
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto(opcional)]) VALUES (22, 2, 2, N'¿Cuál es el nombre del químico sueco inventor de la dinamita?', NULL)
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto(opcional)]) VALUES (23, 2, 2, N'¿Qué lenguaje de programación es utilizado para el desarrollo de aplicaciones móviles en iOS?', NULL)
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto(opcional)]) VALUES (24, 2, 2, N'¿Cuál es el nombre del primer satélite artificial enviado al espacio?', NULL)
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto(opcional)]) VALUES (25, 2, 2, N'¿Qué es un "emoji" en el contexto de la comunicación digital?', NULL)
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto(opcional)]) VALUES (26, 2, 3, N'¿Cuál es la teoría científica que describe la evolución de las especies por medio de la selección natural?', NULL)
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto(opcional)]) VALUES (27, 2, 3, N'¿Quién es considerado el padre de la computación y diseñó la primera máquina de cálculo programable?', NULL)
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto(opcional)]) VALUES (28, 2, 3, N'¿Cuál es el nombre del rover de la NASA que aterrizó en Marte en febrero de 2021 para buscar señales de vida pasada?', NULL)
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto(opcional)]) VALUES (29, 2, 3, N'¿Qué científico estableció las leyes del movimiento y la ley de la gravitación universal?', NULL)
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto(opcional)]) VALUES (30, 2, 3, N'¿Cuál es el proceso mediante el cual las plantas convierten la luz solar en energía química para alimentarse?', NULL)
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto(opcional)]) VALUES (31, 3, 1, N'¿En qué deporte se destaca Lionel Messi?', NULL)
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto(opcional)]) VALUES (32, 3, 1, N'¿Cuál es el deporte más popular en Estados Unidos?', NULL)
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto(opcional)]) VALUES (33, 3, 1, N'¿Qué deporte se juega en la NBA?', NULL)
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto(opcional)]) VALUES (34, 3, 1, N'¿Qué equipo de fútbol español es conocido como "El Barça"?', NULL)
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto(opcional)]) VALUES (35, 3, 1, N'¿En qué deporte se compite por la Copa Stanley?', NULL)
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto(opcional)]) VALUES (36, 3, 2, N'¿Cuál es el nombre del torneo de tenis considerado como el más prestigioso y antiguo del mundo?', NULL)
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto(opcional)]) VALUES (37, 3, 2, N'¿En qué deporte se utiliza un disco de caucho que se golpea con un palo para anotar puntos?', NULL)
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto(opcional)]) VALUES (38, 3, 2, N'¿Qué deporte practica una persona que realiza trucos y saltos en una tabla con ruedas?', NULL)
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto(opcional)]) VALUES (39, 3, 2, N'¿En qué deporte se utiliza un bate para golpear una pelota y se juega en un diamante con bases?', NULL)
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto(opcional)]) VALUES (40, 3, 2, N'¿Qué deporte se juega en un campo con 22 jugadores, una pelota y dos porterías, y es muy popular en Europa?', NULL)
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto(opcional)]) VALUES (41, 3, 3, N'¿Cuál es el nombre del torneo internacional de cricket que se celebra cada cuatro años y es considerado uno de los eventos deportivos más grandes del mundo?', NULL)
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto(opcional)]) VALUES (42, 3, 3, N'¿En qué deporte se utiliza un bate para golpear una pelota, y la Liga Mayor es la organización más importante?', NULL)
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto(opcional)]) VALUES (43, 3, 3, N'¿Cuál es el nombre del juego de mesa en el que los jugadores intentan hundir los barcos del oponente adivinando las coordenadas de su tablero?', NULL)
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto(opcional)]) VALUES (44, 3, 3, N'¿En qué deporte se juega el Super Bowl, la final de la liga profesional más importante de Estados Unidos?', NULL)
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto(opcional)]) VALUES (45, 3, 3, N'¿Cuál es el nombre del juego de mesa de estrategia en el que los jugadores conquistan territorios y continentes?', NULL)
SET IDENTITY_INSERT [dbo].[Preguntas] OFF
GO
SET IDENTITY_INSERT [dbo].[Respuestas] ON 

INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto(opcional)]) VALUES (1, 1, 1, N'Ron Weasley', 0, NULL)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto(opcional)]) VALUES (2, 1, 2, N'Hermione Granger', 0, NULL)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto(opcional)]) VALUES (3, 1, 3, N'Draco Malfoy', 0, NULL)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto(opcional)]) VALUES (4, 1, 4, N'Harry Potter', 1, NULL)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto(opcional)]) VALUES (5, 2, 1, N'La Cenicienta', 0, NULL)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto(opcional)]) VALUES (6, 2, 2, N'Blancanieves y los siete enanitos', 0, NULL)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto(opcional)]) VALUES (7, 2, 3, N'La Bella y la Bestia', 1, NULL)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto(opcional)]) VALUES (8, 2, 4, N'La Sirenita', 0, NULL)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto(opcional)]) VALUES (9, 3, 1, N'"Shape of You" de Ed Sheeran', 1, NULL)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto(opcional)]) VALUES (10, 3, 2, N'"Despacito" de Luis Fonsi y Daddy Yankee', 0, NULL)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto(opcional)]) VALUES (11, 3, 3, N'"Uptown Funk" de Mark Ronson ft. Bruno Mars', 0, NULL)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto(opcional)]) VALUES (12, 3, 4, N'"Blinding Lights" de The Weeknd', 0, NULL)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto(opcional)]) VALUES (13, 4, 1, N'Chris Hemsworth', 0, NULL)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto(opcional)]) VALUES (14, 4, 2, N'Robert Downey Jr.', 1, NULL)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto(opcional)]) VALUES (15, 4, 3, N'Chris Evans', 0, NULL)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto(opcional)]) VALUES (16, 4, 4, N'Mark Ruffalo', 0, NULL)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto(opcional)]) VALUES (17, 5, 1, N'Star Trek', 0, NULL)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto(opcional)]) VALUES (18, 5, 2, N'Doctor Who', 1, NULL)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto(opcional)]) VALUES (19, 5, 3, N'Stargate SG-1', 0, NULL)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto(opcional)]) VALUES (20, 5, 4, N'The X-Files', 0, NULL)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto(opcional)]) VALUES (21, 6, 1, N'Michael Jackson', 1, NULL)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto(opcional)]) VALUES (22, 6, 2, N'Elvis Presley', 0, NULL)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto(opcional)]) VALUES (23, 6, 3, N'Prince', 0, NULL)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto(opcional)]) VALUES (24, 6, 4, N'David Bowie', 0, NULL)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto(opcional)]) VALUES (25, 7, 1, N'Steven Spielberg', 0, NULL)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto(opcional)]) VALUES (26, 7, 2, N'Christopher Nolan', 0, NULL)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto(opcional)]) VALUES (27, 7, 3, N'George Lucas', 1, NULL)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto(opcional)]) VALUES (28, 7, 4, N'James Cameron', 0, NULL)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto(opcional)]) VALUES (29, 8, 1, N'The Haunting of Hill House', 0, NULL)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto(opcional)]) VALUES (30, 8, 2, N'Dark', 0, NULL)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto(opcional)]) VALUES (31, 8, 3, N'Stranger Things', 1, NULL)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto(opcional)]) VALUES (32, 8, 4, N'Black Mirror', 0, NULL)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto(opcional)]) VALUES (33, 9, 1, N'Katy Perry', 0, NULL)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto(opcional)]) VALUES (34, 9, 2, N'Taylor Swift', 1, NULL)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto(opcional)]) VALUES (35, 9, 3, N'Lady Gaga', 0, NULL)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto(opcional)]) VALUES (36, 9, 4, N'Ariana Grande', 0, NULL)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto(opcional)]) VALUES (37, 10, 1, N'Mulan', 1, NULL)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto(opcional)]) VALUES (38, 10, 2, N'La Princesa y el Sapo', 0, NULL)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto(opcional)]) VALUES (39, 10, 3, N'Brave (Valiente)', 0, NULL)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto(opcional)]) VALUES (40, 10, 4, N'Tangled (Enredados)', 0, NULL)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto(opcional)]) VALUES (41, 11, 1, N'Black Mirror', 0, NULL)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto(opcional)]) VALUES (42, 11, 2, N'Stranger Things', 1, NULL)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto(opcional)]) VALUES (43, 11, 3, N'The 100', 0, NULL)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto(opcional)]) VALUES (44, 11, 4, N'Westworld', 0, NULL)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto(opcional)]) VALUES (45, 12, 1, N'Scarlett Johansson', 1, NULL)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto(opcional)]) VALUES (46, 12, 2, N'Brie Larson', 0, NULL)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto(opcional)]) VALUES (47, 12, 3, N'Gal Gadot', 0, NULL)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto(opcional)]) VALUES (48, 12, 4, N'Margot Robbie', 0, NULL)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto(opcional)]) VALUES (49, 13, 1, N'Jason Voorhees', 0, NULL)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto(opcional)]) VALUES (50, 13, 2, N'Freddy Krueger', 0, NULL)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto(opcional)]) VALUES (51, 13, 3, N'Ghostface', 1, NULL)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto(opcional)]) VALUES (52, 13, 4, N'Michael Myers', 0, NULL)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto(opcional)]) VALUES (53, 14, 1, N'"Hips Don''t Lie"', 0, NULL)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto(opcional)]) VALUES (54, 14, 2, N'"Shape of You"', 0, NULL)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto(opcional)]) VALUES (55, 14, 3, N'"Sorry"', 0, NULL)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto(opcional)]) VALUES (56, 14, 4, N'"Despacito"', 1, NULL)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto(opcional)]) VALUES (57, 15, 1, N'Inception (El origen)', 0, NULL)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto(opcional)]) VALUES (58, 15, 2, N'The Matrix (Matrix)', 1, NULL)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto(opcional)]) VALUES (59, 15, 3, N'Blade Runner', 0, NULL)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto(opcional)]) VALUES (60, 15, 4, N'Interstellar', 0, NULL)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto(opcional)]) VALUES (61, 16, 1, N'iOS', 0, NULL)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto(opcional)]) VALUES (62, 16, 2, N'Windows', 0, NULL)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto(opcional)]) VALUES (63, 16, 3, N'Android', 1, NULL)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto(opcional)]) VALUES (64, 16, 4, N'macOS', 0, NULL)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto(opcional)]) VALUES (65, 17, 1, N'Universal Serial Bus', 1, NULL)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto(opcional)]) VALUES (66, 17, 2, N'Universal System Board', 0, NULL)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto(opcional)]) VALUES (67, 17, 3, N'United States of Business', 0, NULL)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto(opcional)]) VALUES (68, 17, 4, N'Ultimate Super Battery', 0, NULL)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto(opcional)]) VALUES (69, 18, 1, N'Elon Musk', 1, NULL)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto(opcional)]) VALUES (70, 18, 2, N'Jeff Bezos', 0, NULL)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto(opcional)]) VALUES (71, 18, 3, N'Mark Zuckerberg', 0, NULL)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto(opcional)]) VALUES (72, 18, 4, N'Bill Gates', 0, NULL)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto(opcional)]) VALUES (73, 19, 1, N'Bit', 1, NULL)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto(opcional)]) VALUES (74, 19, 2, N'Byte', 0, NULL)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto(opcional)]) VALUES (75, 19, 3, N'Megabyte', 0, NULL)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto(opcional)]) VALUES (76, 19, 4, N'Gigabyte', 0, NULL)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto(opcional)]) VALUES (77, 20, 1, N'Amazon', 1, NULL)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto(opcional)]) VALUES (78, 20, 2, N'Alibaba', 0, NULL)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto(opcional)]) VALUES (79, 20, 3, N'eBay', 0, NULL)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto(opcional)]) VALUES (80, 20, 4, N'Walmart', 0, NULL)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto(opcional)]) VALUES (81, 21, 1, N'Isaac Newton', 0, NULL)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto(opcional)]) VALUES (82, 21, 2, N'Albert Einstein', 1, NULL)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto(opcional)]) VALUES (83, 21, 3, N'Niels Bohr', 0, NULL)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto(opcional)]) VALUES (84, 21, 4, N'Galileo Galilei', 0, NULL)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto(opcional)]) VALUES (85, 22, 1, N'Alfred Nobel', 1, NULL)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto(opcional)]) VALUES (86, 22, 2, N'Marie Curie', 0, NULL)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto(opcional)]) VALUES (87, 22, 3, N'Thomas Edison', 0, NULL)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto(opcional)]) VALUES (88, 22, 4, N'Alexander Graham Bell', 0, NULL)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto(opcional)]) VALUES (89, 23, 1, N'Java', 0, NULL)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto(opcional)]) VALUES (90, 23, 2, N'Swift', 1, NULL)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto(opcional)]) VALUES (91, 23, 3, N'Python', 0, NULL)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto(opcional)]) VALUES (92, 23, 4, N'C#', 0, NULL)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto(opcional)]) VALUES (93, 24, 1, N'Apollo 11', 0, NULL)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto(opcional)]) VALUES (94, 24, 2, N'Voyager 1', 0, NULL)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto(opcional)]) VALUES (95, 24, 3, N'Hubble', 0, NULL)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto(opcional)]) VALUES (96, 24, 4, N'Sputnik 1', 1, NULL)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto(opcional)]) VALUES (97, 25, 1, N'Un código binario utilizado para comprimir datos.', 0, NULL)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto(opcional)]) VALUES (98, 25, 2, N'Una tecnología para transmitir datos de manera inalámbrica.', 0, NULL)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto(opcional)]) VALUES (99, 25, 3, N'Un icono o símbolo que representa una emoción o idea en mensajes de texto o redes sociales.', 1, NULL)
GO
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto(opcional)]) VALUES (100, 25, 4, N'Un programa de inteligencia artificial diseñado para responder preguntas.', 0, NULL)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto(opcional)]) VALUES (101, 26, 1, N'Teoría de la relatividad', 0, NULL)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto(opcional)]) VALUES (102, 26, 2, N'Ley de la gravedad', 0, NULL)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto(opcional)]) VALUES (103, 26, 3, N'Teoría de la evolución', 1, NULL)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto(opcional)]) VALUES (104, 26, 4, N'Teoría cuántica', 0, NULL)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto(opcional)]) VALUES (105, 27, 1, N'Thomas Edison', 0, NULL)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto(opcional)]) VALUES (106, 27, 2, N'Nikola Tesla', 0, NULL)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto(opcional)]) VALUES (107, 27, 3, N'Alan Turing', 0, NULL)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto(opcional)]) VALUES (108, 27, 4, N'Charles Babbage', 1, NULL)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto(opcional)]) VALUES (109, 28, 1, N'Curiosity', 0, NULL)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto(opcional)]) VALUES (110, 28, 2, N'Perseverance', 1, NULL)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto(opcional)]) VALUES (111, 28, 3, N'Opportunity', 0, NULL)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto(opcional)]) VALUES (112, 28, 4, N'Spirit', 0, NULL)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto(opcional)]) VALUES (113, 29, 1, N'Isaac Newton', 1, NULL)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto(opcional)]) VALUES (114, 29, 2, N'Galileo Galilei', 0, NULL)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto(opcional)]) VALUES (115, 29, 3, N'Johannes Kepler', 0, NULL)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto(opcional)]) VALUES (116, 29, 4, N'Albert Einstein', 0, NULL)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto(opcional)]) VALUES (117, 30, 1, N'Fotosíntesis', 1, NULL)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto(opcional)]) VALUES (118, 30, 2, N'Respiración celular', 0, NULL)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto(opcional)]) VALUES (119, 30, 3, N'Mitosis', 0, NULL)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto(opcional)]) VALUES (120, 30, 4, N'Fermentación', 0, NULL)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto(opcional)]) VALUES (121, 31, 1, N'Fútbol', 1, NULL)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto(opcional)]) VALUES (122, 31, 2, N'Basquet', 0, NULL)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto(opcional)]) VALUES (123, 31, 3, N'Tenis', 0, NULL)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto(opcional)]) VALUES (124, 31, 4, N'Golf', 0, NULL)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto(opcional)]) VALUES (125, 32, 1, N'Béisbol', 0, NULL)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto(opcional)]) VALUES (126, 32, 2, N'Fútbol americano (NFL)', 1, NULL)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto(opcional)]) VALUES (127, 32, 3, N'Basquet', 0, NULL)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto(opcional)]) VALUES (128, 32, 4, N'Hockey sobre hielo', 0, NULL)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto(opcional)]) VALUES (129, 33, 1, N'Fútbol', 0, NULL)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto(opcional)]) VALUES (130, 33, 2, N'Tenis', 0, NULL)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto(opcional)]) VALUES (131, 33, 3, N'Basquet', 1, NULL)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto(opcional)]) VALUES (132, 33, 4, N'Voley', 0, NULL)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto(opcional)]) VALUES (133, 34, 1, N'Real Madrid', 0, NULL)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto(opcional)]) VALUES (134, 34, 2, N'Atlético de Madrid', 0, NULL)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto(opcional)]) VALUES (135, 34, 3, N'FC Barcelona', 1, NULL)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto(opcional)]) VALUES (136, 34, 4, N'Valencia CF', 0, NULL)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto(opcional)]) VALUES (137, 35, 1, N'Béisbol', 0, NULL)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto(opcional)]) VALUES (138, 35, 2, N'Voley', 0, NULL)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto(opcional)]) VALUES (139, 35, 3, N'Hockey sobre hielo', 1, NULL)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto(opcional)]) VALUES (140, 35, 4, N'Basquet', 0, NULL)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto(opcional)]) VALUES (141, 36, 1, N'US Open', 0, NULL)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto(opcional)]) VALUES (142, 36, 2, N'Australian Open', 0, NULL)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto(opcional)]) VALUES (143, 36, 3, N'Wimbledon', 1, NULL)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto(opcional)]) VALUES (144, 36, 4, N'French Open (Roland Garros)', 0, NULL)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto(opcional)]) VALUES (145, 37, 1, N'Golf', 0, NULL)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto(opcional)]) VALUES (146, 37, 2, N'Rugby', 0, NULL)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto(opcional)]) VALUES (147, 37, 3, N'Atletismo', 0, NULL)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto(opcional)]) VALUES (148, 37, 4, N'Hockey sobre hielo', 1, NULL)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto(opcional)]) VALUES (149, 38, 1, N'Surf', 0, NULL)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto(opcional)]) VALUES (150, 38, 2, N'BMX', 0, NULL)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto(opcional)]) VALUES (151, 38, 3, N'Skateboarding', 1, NULL)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto(opcional)]) VALUES (152, 38, 4, N'Esquí acuático', 0, NULL)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto(opcional)]) VALUES (153, 39, 1, N'Cricket', 0, NULL)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto(opcional)]) VALUES (154, 39, 2, N'Fútbol americano', 0, NULL)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto(opcional)]) VALUES (155, 39, 3, N'Rugby', 0, NULL)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto(opcional)]) VALUES (156, 39, 4, N'Béisbol', 1, NULL)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto(opcional)]) VALUES (157, 40, 1, N'Fútbol', 1, NULL)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto(opcional)]) VALUES (158, 40, 2, N'Béisbol', 0, NULL)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto(opcional)]) VALUES (159, 40, 3, N'Rugby', 0, NULL)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto(opcional)]) VALUES (160, 40, 4, N'Basquet', 0, NULL)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto(opcional)]) VALUES (161, 41, 1, N'World Series', 0, NULL)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto(opcional)]) VALUES (162, 41, 2, N'Super Bowl', 0, NULL)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto(opcional)]) VALUES (163, 41, 3, N'Copa del Mundo de Cricket', 1, NULL)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto(opcional)]) VALUES (164, 41, 4, N'Wimbledon', 0, NULL)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto(opcional)]) VALUES (165, 42, 1, N'Rugby', 0, NULL)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto(opcional)]) VALUES (166, 42, 2, N'Cricket', 0, NULL)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto(opcional)]) VALUES (167, 42, 3, N'Softbol', 0, NULL)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto(opcional)]) VALUES (168, 42, 4, N'Béisbol', 1, NULL)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto(opcional)]) VALUES (169, 43, 1, N'Ludo', 0, NULL)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto(opcional)]) VALUES (170, 43, 2, N'Monopoly', 0, NULL)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto(opcional)]) VALUES (171, 43, 3, N'Risk', 0, NULL)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto(opcional)]) VALUES (172, 43, 4, N'Batalla Naval', 1, NULL)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto(opcional)]) VALUES (173, 44, 1, N'Fútbol americano (NFL)', 1, NULL)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto(opcional)]) VALUES (174, 44, 2, N'Béisbol', 0, NULL)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto(opcional)]) VALUES (175, 44, 3, N'Rugby', 0, NULL)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto(opcional)]) VALUES (176, 44, 4, N'Tenis', 0, NULL)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto(opcional)]) VALUES (177, 45, 1, N'Pictionary', 0, NULL)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto(opcional)]) VALUES (178, 45, 2, N'Ludo', 0, NULL)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto(opcional)]) VALUES (179, 45, 3, N'Teg', 1, NULL)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto(opcional)]) VALUES (180, 45, 4, N'Truco', 0, NULL)
SET IDENTITY_INSERT [dbo].[Respuestas] OFF
GO
ALTER TABLE [dbo].[Preguntas]  WITH CHECK ADD  CONSTRAINT [FK_Preguntas_Categorias] FOREIGN KEY([IdCategoria])
REFERENCES [dbo].[Categorias] ([IdCategoria])
GO
ALTER TABLE [dbo].[Preguntas] CHECK CONSTRAINT [FK_Preguntas_Categorias]
GO
ALTER TABLE [dbo].[Preguntas]  WITH CHECK ADD  CONSTRAINT [FK_Preguntas_Dificultades] FOREIGN KEY([IdDificultad])
REFERENCES [dbo].[Dificultades] ([IdDificultad])
GO
ALTER TABLE [dbo].[Preguntas] CHECK CONSTRAINT [FK_Preguntas_Dificultades]
GO
ALTER TABLE [dbo].[Respuestas]  WITH CHECK ADD  CONSTRAINT [FK_Respuestas_Preguntas] FOREIGN KEY([IdPregunta])
REFERENCES [dbo].[Preguntas] ([IdPregunta])
GO
ALTER TABLE [dbo].[Respuestas] CHECK CONSTRAINT [FK_Respuestas_Preguntas]
GO
USE [master]
GO
ALTER DATABASE [Preguntadort_Bottarini_Piva] SET  READ_WRITE 
GO
