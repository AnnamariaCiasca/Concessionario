USE [master]
GO
/****** Object:  Database [Magazzino]    Script Date: 8/25/2021 11:02:12 AM ******/
CREATE DATABASE [Magazzino]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Magazzino', FILENAME = N'C:\Users\annamaria.ciasca\Magazzino.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'Magazzino_log', FILENAME = N'C:\Users\annamaria.ciasca\Magazzino_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [Magazzino] SET COMPATIBILITY_LEVEL = 130
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Magazzino].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Magazzino] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Magazzino] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Magazzino] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Magazzino] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Magazzino] SET ARITHABORT OFF 
GO
ALTER DATABASE [Magazzino] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [Magazzino] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Magazzino] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Magazzino] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Magazzino] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Magazzino] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Magazzino] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Magazzino] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Magazzino] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Magazzino] SET  DISABLE_BROKER 
GO
ALTER DATABASE [Magazzino] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Magazzino] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Magazzino] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Magazzino] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Magazzino] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Magazzino] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Magazzino] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Magazzino] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [Magazzino] SET  MULTI_USER 
GO
ALTER DATABASE [Magazzino] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Magazzino] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Magazzino] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Magazzino] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [Magazzino] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [Magazzino] SET QUERY_STORE = OFF
GO
USE [Magazzino]
GO
ALTER DATABASE SCOPED CONFIGURATION SET LEGACY_CARDINALITY_ESTIMATION = OFF;
GO
ALTER DATABASE SCOPED CONFIGURATION SET MAXDOP = 0;
GO
ALTER DATABASE SCOPED CONFIGURATION SET PARAMETER_SNIFFING = ON;
GO
ALTER DATABASE SCOPED CONFIGURATION SET QUERY_OPTIMIZER_HOTFIXES = OFF;
GO
USE [Magazzino]
GO
/****** Object:  Table [dbo].[Bus]    Script Date: 8/25/2021 11:02:12 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Bus](
	[SeatsNumber] [int] NULL,
	[Id] [int] NOT NULL,
	[IdVehicle] [int] NOT NULL,
 CONSTRAINT [PK_Bus] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Car]    Script Date: 8/25/2021 11:02:12 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Car](
	[Supply] [nvarchar](50) NULL,
	[DoorsNumber] [int] NULL,
	[Id] [int] NOT NULL,
	[IdVehicle] [int] NOT NULL,
 CONSTRAINT [PK_Car] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Motocycle]    Script Date: 8/25/2021 11:02:12 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Motocycle](
	[ProductionYear] [int] NULL,
	[Id] [int] NOT NULL,
	[IdVehicle] [int] NOT NULL,
 CONSTRAINT [PK_Motocycle] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Vehicle]    Script Date: 8/25/2021 11:02:12 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Vehicle](
	[Brand] [nvarchar](50) NOT NULL,
	[Model] [nvarchar](50) NOT NULL,
	[Id] [int] NOT NULL,
 CONSTRAINT [PK_Vehicle] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

SET IDENTITY_INSERT [dbo].[Vehicle] ON 

INSERT [dbo].[Vehicle] ([Brand], [Model], [Id]) VALUES (N'Honda', N'CB', 1)
INSERT [dbo].[Vehicle] ([Brand], [Model], [Id]) VALUES (N'Honda', N'SH', 2)
INSERT [dbo].[Vehicle] ([Brand], [Model], [Id]) VALUES (N'Fiat', N'500', 4)
INSERT [dbo].[Vehicle] ([Brand], [Model], [Id]) VALUES (N'Tesla', N'Model X', 5)
INSERT [dbo].[Vehicle] ([Brand], [Model], [Id]) VALUES (N'Lancia', N'Y', 6)
INSERT [dbo].[Vehicle] ([Brand], [Model], [Id]) VALUES (N'Iveco', N'Euroclass', 7)
INSERT [dbo].[Vehicle] ([Brand], [Model], [Id]) VALUES (N'Renault', N'Trafic', 8)
INSERT [dbo].[Vehicle] ([Brand], [Model], [Id]) VALUES (N'Fiat', N'Talento', 9)
INSERT [dbo].[Vehicle] ([Brand], [Model], [Id]) VALUES (N'Vespa', N'P125X', 10)
SET IDENTITY_INSERT [dbo].[Vehicle] OFF


SET IDENTITY_INSERT [dbo].[Bus] ON 

INSERT [dbo].[Bus] ([SeatsNumber], [Id], [IdVehicle]) VALUES (10, 1, 7)
INSERT [dbo].[Bus] ([SeatsNumber], [Id], [IdVehicle]) VALUES (8, 2, 8)
INSERT [dbo].[Bus] ([SeatsNumber], [Id], [IdVehicle]) VALUES (12, 3, 9)
SET IDENTITY_INSERT [dbo].[Bus] OFF
GO
SET IDENTITY_INSERT [dbo].[Car] ON 

INSERT [dbo].[Car] ([Supply], [DoorsNumber], [Id], [IdVehicle]) VALUES (0, 3, 2, 4)
INSERT [dbo].[Car] ([Supply], [DoorsNumber], [Id], [IdVehicle]) VALUES (2, 5, 3, 5)
INSERT [dbo].[Car] ([Supply], [DoorsNumber], [Id], [IdVehicle]) VALUES (1, 5, 4, 6)
SET IDENTITY_INSERT [dbo].[Car] OFF
GO
SET IDENTITY_INSERT [dbo].[Motocycle] ON 

INSERT [dbo].[Motocycle] ([ProductionYear], [Id], [IdVehicle]) VALUES (2020, 1, 1)
INSERT [dbo].[Motocycle] ([ProductionYear], [Id], [IdVehicle]) VALUES (2015, 2, 2)
INSERT [dbo].[Motocycle] ([ProductionYear], [Id], [IdVehicle]) VALUES (1985, 4, 10)
SET IDENTITY_INSERT [dbo].[Motocycle] OFF
GO

ALTER TABLE [dbo].[Bus]  WITH CHECK ADD  CONSTRAINT [FK_Bus_Vehicle] FOREIGN KEY([IdVehicle])
REFERENCES [dbo].[Vehicle] ([Id])
GO
ALTER TABLE [dbo].[Bus] CHECK CONSTRAINT [FK_Bus_Vehicle]
GO
ALTER TABLE [dbo].[Car]  WITH CHECK ADD  CONSTRAINT [FK_Car_Vehicle] FOREIGN KEY([IdVehicle])
REFERENCES [dbo].[Vehicle] ([Id])
GO
ALTER TABLE [dbo].[Car] CHECK CONSTRAINT [FK_Car_Vehicle]
GO
ALTER TABLE [dbo].[Motocycle]  WITH CHECK ADD  CONSTRAINT [FK_Motocycle_Vehicle] FOREIGN KEY([IdVehicle])
REFERENCES [dbo].[Vehicle] ([Id])
GO
ALTER TABLE [dbo].[Motocycle] CHECK CONSTRAINT [FK_Motocycle_Vehicle]
GO
USE [master]
GO
ALTER DATABASE [Magazzino] SET  READ_WRITE 
GO
