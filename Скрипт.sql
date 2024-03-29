USE [master]
GO
/****** Object:  Database [KR2_Fokavin]    Script Date: 01.02.2024 17:06:08 ******/
CREATE DATABASE [KR2_Fokavin]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'KR2_Fokavin', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.IS2011\MSSQL\DATA\KR2_Fokavin.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'KR2_Fokavin_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.IS2011\MSSQL\DATA\KR2_Fokavin_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [KR2_Fokavin] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [KR2_Fokavin].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [KR2_Fokavin] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [KR2_Fokavin] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [KR2_Fokavin] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [KR2_Fokavin] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [KR2_Fokavin] SET ARITHABORT OFF 
GO
ALTER DATABASE [KR2_Fokavin] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [KR2_Fokavin] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [KR2_Fokavin] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [KR2_Fokavin] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [KR2_Fokavin] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [KR2_Fokavin] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [KR2_Fokavin] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [KR2_Fokavin] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [KR2_Fokavin] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [KR2_Fokavin] SET  DISABLE_BROKER 
GO
ALTER DATABASE [KR2_Fokavin] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [KR2_Fokavin] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [KR2_Fokavin] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [KR2_Fokavin] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [KR2_Fokavin] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [KR2_Fokavin] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [KR2_Fokavin] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [KR2_Fokavin] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [KR2_Fokavin] SET  MULTI_USER 
GO
ALTER DATABASE [KR2_Fokavin] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [KR2_Fokavin] SET DB_CHAINING OFF 
GO
ALTER DATABASE [KR2_Fokavin] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [KR2_Fokavin] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [KR2_Fokavin] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [KR2_Fokavin] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [KR2_Fokavin] SET QUERY_STORE = OFF
GO
USE [KR2_Fokavin]
GO
/****** Object:  Table [dbo].[Clients]    Script Date: 01.02.2024 17:06:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Clients](
	[Clientid] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NULL,
	[Phone] [float] NULL,
 CONSTRAINT [PK_Clients] PRIMARY KEY CLUSTERED 
(
	[Clientid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Order]    Script Date: 01.02.2024 17:06:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Order](
	[idOrder] [int] IDENTITY(1,1) NOT NULL,
	[Clientid] [int] NOT NULL,
	[Sotrudnikid] [int] NOT NULL,
	[Date] [date] NULL,
	[TrebovaniePoPlatforme] [nvarchar](50) NULL,
 CONSTRAINT [PK_Order] PRIMARY KEY CLUSTERED 
(
	[idOrder] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[OrderProduct]    Script Date: 01.02.2024 17:06:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OrderProduct](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[ProductId] [int] NOT NULL,
	[Orderid] [int] NOT NULL,
 CONSTRAINT [PK_OrderProduct] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Otdel]    Script Date: 01.02.2024 17:06:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Otdel](
	[Otdelid] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NULL,
 CONSTRAINT [PK_Otdel] PRIMARY KEY CLUSTERED 
(
	[Otdelid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Post]    Script Date: 01.02.2024 17:06:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Post](
	[Postid] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NULL,
 CONSTRAINT [PK_Post] PRIMARY KEY CLUSTERED 
(
	[Postid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Product]    Script Date: 01.02.2024 17:06:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Product](
	[Productid] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NULL,
 CONSTRAINT [PK_Product] PRIMARY KEY CLUSTERED 
(
	[Productid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Sotrudniki]    Script Date: 01.02.2024 17:06:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Sotrudniki](
	[SotrudnikId] [int] IDENTITY(1,1) NOT NULL,
	[FirstName] [nvarchar](50) NULL,
	[LastName] [nvarchar](50) NULL,
	[Address] [nvarchar](50) NULL,
	[Phone] [float] NULL,
	[Passport] [nvarchar](50) NULL,
	[Postid] [int] NOT NULL,
	[Otdelid] [int] NOT NULL,
	[Login] [nvarchar](50) NULL,
	[Password] [nvarchar](50) NULL,
 CONSTRAINT [PK_Sotrudniki] PRIMARY KEY CLUSTERED 
(
	[SotrudnikId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Clients] ON 

INSERT [dbo].[Clients] ([Clientid], [Name], [Phone]) VALUES (1, N'Василий', 79458765678)
INSERT [dbo].[Clients] ([Clientid], [Name], [Phone]) VALUES (2, N'Дмитрий', 79864653443)
INSERT [dbo].[Clients] ([Clientid], [Name], [Phone]) VALUES (3, N'Александр', 79887546774)
INSERT [dbo].[Clients] ([Clientid], [Name], [Phone]) VALUES (4, N'Ратмир', 79898765345)
SET IDENTITY_INSERT [dbo].[Clients] OFF
GO
SET IDENTITY_INSERT [dbo].[Order] ON 

INSERT [dbo].[Order] ([idOrder], [Clientid], [Sotrudnikid], [Date], [TrebovaniePoPlatforme]) VALUES (5, 2, 2, CAST(N'2004-12-15' AS Date), N'Android')
INSERT [dbo].[Order] ([idOrder], [Clientid], [Sotrudnikid], [Date], [TrebovaniePoPlatforme]) VALUES (6, 3, 3, CAST(N'2004-12-01' AS Date), N'IOS')
INSERT [dbo].[Order] ([idOrder], [Clientid], [Sotrudnikid], [Date], [TrebovaniePoPlatforme]) VALUES (7, 4, 4, CAST(N'2004-12-05' AS Date), N'Windows')
SET IDENTITY_INSERT [dbo].[Order] OFF
GO
SET IDENTITY_INSERT [dbo].[Otdel] ON 

INSERT [dbo].[Otdel] ([Otdelid], [Name]) VALUES (1, N'Отдел по разработке ПО')
INSERT [dbo].[Otdel] ([Otdelid], [Name]) VALUES (2, N'Бухгалтерский отдел')
INSERT [dbo].[Otdel] ([Otdelid], [Name]) VALUES (3, N'Отдел кадров')
INSERT [dbo].[Otdel] ([Otdelid], [Name]) VALUES (4, N'Коммерческий')
SET IDENTITY_INSERT [dbo].[Otdel] OFF
GO
SET IDENTITY_INSERT [dbo].[Post] ON 

INSERT [dbo].[Post] ([Postid], [Name]) VALUES (1, N'Директор')
INSERT [dbo].[Post] ([Postid], [Name]) VALUES (2, N'Зам Директора')
INSERT [dbo].[Post] ([Postid], [Name]) VALUES (3, N'Специалист по разработке')
INSERT [dbo].[Post] ([Postid], [Name]) VALUES (4, N'Специалист техник')
SET IDENTITY_INSERT [dbo].[Post] OFF
GO
SET IDENTITY_INSERT [dbo].[Product] ON 

INSERT [dbo].[Product] ([Productid], [Name]) VALUES (1, N'Смарт туалет ')
INSERT [dbo].[Product] ([Productid], [Name]) VALUES (2, N'Android PO')
INSERT [dbo].[Product] ([Productid], [Name]) VALUES (3, N'Телефон')
INSERT [dbo].[Product] ([Productid], [Name]) VALUES (4, N'Смарт клавиатура')
SET IDENTITY_INSERT [dbo].[Product] OFF
GO
SET IDENTITY_INSERT [dbo].[Sotrudniki] ON 

INSERT [dbo].[Sotrudniki] ([SotrudnikId], [FirstName], [LastName], [Address], [Phone], [Passport], [Postid], [Otdelid], [Login], [Password]) VALUES (2, N'Александр', N'Амосов', N'ул.Оренбургский тракт', 79898877645, N'54556457', 1, 1, N'1', N'1')
INSERT [dbo].[Sotrudniki] ([SotrudnikId], [FirstName], [LastName], [Address], [Phone], [Passport], [Postid], [Otdelid], [Login], [Password]) VALUES (3, N'Ратмир', N'Хуснулин', N'ул.Чистопольская', 78998788668, N'34345436', 2, 2, N'2', N'2')
INSERT [dbo].[Sotrudniki] ([SotrudnikId], [FirstName], [LastName], [Address], [Phone], [Passport], [Postid], [Otdelid], [Login], [Password]) VALUES (4, N'Дмитрий', N'Шершунов', N'ул.Декабристов', 79876567887, N'43536767', 3, 3, N'3', N'3')
INSERT [dbo].[Sotrudniki] ([SotrudnikId], [FirstName], [LastName], [Address], [Phone], [Passport], [Postid], [Otdelid], [Login], [Password]) VALUES (7, N'Рушан', N'Сайфутдинов', N'ул.Кольцевая', 79899989877, N'76576588', 4, 4, N'4', N'4')
SET IDENTITY_INSERT [dbo].[Sotrudniki] OFF
GO
ALTER TABLE [dbo].[Order]  WITH CHECK ADD  CONSTRAINT [FK_Order_Clients] FOREIGN KEY([Clientid])
REFERENCES [dbo].[Clients] ([Clientid])
GO
ALTER TABLE [dbo].[Order] CHECK CONSTRAINT [FK_Order_Clients]
GO
ALTER TABLE [dbo].[Order]  WITH CHECK ADD  CONSTRAINT [FK_Order_Sotrudniki] FOREIGN KEY([Sotrudnikid])
REFERENCES [dbo].[Sotrudniki] ([SotrudnikId])
GO
ALTER TABLE [dbo].[Order] CHECK CONSTRAINT [FK_Order_Sotrudniki]
GO
ALTER TABLE [dbo].[OrderProduct]  WITH CHECK ADD  CONSTRAINT [FK_OrderProduct_Order] FOREIGN KEY([Orderid])
REFERENCES [dbo].[Order] ([idOrder])
GO
ALTER TABLE [dbo].[OrderProduct] CHECK CONSTRAINT [FK_OrderProduct_Order]
GO
ALTER TABLE [dbo].[OrderProduct]  WITH CHECK ADD  CONSTRAINT [FK_OrderProduct_Product] FOREIGN KEY([ProductId])
REFERENCES [dbo].[Product] ([Productid])
GO
ALTER TABLE [dbo].[OrderProduct] CHECK CONSTRAINT [FK_OrderProduct_Product]
GO
ALTER TABLE [dbo].[Sotrudniki]  WITH CHECK ADD  CONSTRAINT [FK_Sotrudniki_Otdel1] FOREIGN KEY([Otdelid])
REFERENCES [dbo].[Otdel] ([Otdelid])
GO
ALTER TABLE [dbo].[Sotrudniki] CHECK CONSTRAINT [FK_Sotrudniki_Otdel1]
GO
ALTER TABLE [dbo].[Sotrudniki]  WITH CHECK ADD  CONSTRAINT [FK_Sotrudniki_Post] FOREIGN KEY([Postid])
REFERENCES [dbo].[Post] ([Postid])
GO
ALTER TABLE [dbo].[Sotrudniki] CHECK CONSTRAINT [FK_Sotrudniki_Post]
GO
USE [master]
GO
ALTER DATABASE [KR2_Fokavin] SET  READ_WRITE 
GO
