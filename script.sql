USE [master]
GO
/****** Object:  Database [db_unidecor]    Script Date: 08-06-2021 14:22:25 ******/
CREATE DATABASE [db_unidecor]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'db_unidecor', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS01\MSSQL\DATA\db_unidecor.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'db_unidecor_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS01\MSSQL\DATA\db_unidecor_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [db_unidecor] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [db_unidecor].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [db_unidecor] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [db_unidecor] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [db_unidecor] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [db_unidecor] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [db_unidecor] SET ARITHABORT OFF 
GO
ALTER DATABASE [db_unidecor] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [db_unidecor] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [db_unidecor] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [db_unidecor] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [db_unidecor] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [db_unidecor] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [db_unidecor] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [db_unidecor] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [db_unidecor] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [db_unidecor] SET  ENABLE_BROKER 
GO
ALTER DATABASE [db_unidecor] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [db_unidecor] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [db_unidecor] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [db_unidecor] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [db_unidecor] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [db_unidecor] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [db_unidecor] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [db_unidecor] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [db_unidecor] SET  MULTI_USER 
GO
ALTER DATABASE [db_unidecor] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [db_unidecor] SET DB_CHAINING OFF 
GO
ALTER DATABASE [db_unidecor] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [db_unidecor] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [db_unidecor] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [db_unidecor] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [db_unidecor] SET QUERY_STORE = OFF
GO
USE [db_unidecor]
GO
/****** Object:  Table [dbo].[tbl_bank]    Script Date: 08-06-2021 14:22:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_bank](
	[BankId] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [int] NULL,
	[CardNo] [varchar](50) NULL,
	[CVC] [int] NULL,
	[Balance] [int] NULL,
	[Expiry] [date] NULL,
 CONSTRAINT [PK_tbl_bank] PRIMARY KEY CLUSTERED 
(
	[BankId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_Cart]    Script Date: 08-06-2021 14:22:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_Cart](
	[CartId] [int] IDENTITY(1,1) NOT NULL,
	[ProvId] [int] NULL,
	[UserId] [int] NULL,
	[ProductName] [varchar](50) NULL,
	[Price] [int] NULL,
	[Quantity] [int] NULL,
	[IsRemove] [bit] NULL,
	[CreateDate] [datetime] NULL,
	[ProductId] [int] NULL,
 CONSTRAINT [PK_tbl_Cart] PRIMARY KEY CLUSTERED 
(
	[CartId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_Category]    Script Date: 08-06-2021 14:22:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_Category](
	[CategoryId] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](50) NULL,
	[Description] [varchar](max) NULL,
 CONSTRAINT [PK_tbl_Category] PRIMARY KEY CLUSTERED 
(
	[CategoryId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_IdProof]    Script Date: 08-06-2021 14:22:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_IdProof](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[IdType] [varchar](50) NULL,
 CONSTRAINT [PK_tbl_IdProof] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_Login]    Script Date: 08-06-2021 14:22:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_Login](
	[LogId] [int] IDENTITY(1,1) NOT NULL,
	[Username] [varchar](50) NULL,
	[Password] [varchar](50) NULL,
	[IsApprove] [bit] NULL,
	[Isdelete] [bit] NULL,
	[CreateDate] [datetime] NULL,
	[role] [int] NULL,
 CONSTRAINT [PK_tbl_Login] PRIMARY KEY CLUSTERED 
(
	[LogId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_Orderstatus]    Script Date: 08-06-2021 14:22:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_Orderstatus](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Status] [varchar](100) NULL,
	[SaleId] [int] NULL,
	[updatedate] [datetime] NULL,
 CONSTRAINT [PK_tbl_Orderstatus] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_Products]    Script Date: 08-06-2021 14:22:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_Products](
	[ProductId] [int] IDENTITY(1,1) NOT NULL,
	[ProductName] [varchar](50) NULL,
	[Description] [varchar](max) NULL,
	[Image] [varchar](max) NULL,
	[ProviderID] [int] NULL,
	[Price] [int] NULL,
	[Createdate] [datetime] NULL,
	[Isdelete] [bit] NULL,
	[Quantity] [int] NULL,
	[CategoryId] [int] NULL,
 CONSTRAINT [PK_tbl_Products] PRIMARY KEY CLUSTERED 
(
	[ProductId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_Providers]    Script Date: 08-06-2021 14:22:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_Providers](
	[ProvId] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](50) NULL,
	[Address] [varchar](max) NULL,
	[Phone] [varchar](50) NULL,
	[Email] [varchar](50) NULL,
	[IdProof] [varchar](50) NULL,
	[IdNo] [varchar](50) NULL,
	[CreateDate] [datetime] NULL,
	[IsDelete] [bit] NULL,
	[LogId] [int] NULL,
	[IsApprove] [bit] NULL,
 CONSTRAINT [PK_tbl_Providers] PRIMARY KEY CLUSTERED 
(
	[ProvId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_Sales]    Script Date: 08-06-2021 14:22:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_Sales](
	[SalesId] [int] IDENTITY(1,1) NOT NULL,
	[ProvId] [int] NULL,
	[UserId] [int] NULL,
	[ProductId] [int] NULL,
	[Quantity] [int] NULL,
	[Price] [float] NULL,
	[PayStatus] [bit] NULL,
	[CreateDate] [datetime] NULL,
	[Orderstatus] [bit] NULL,
	[TotalAmount] [float] NULL,
 CONSTRAINT [PK_tbl_Sales] PRIMARY KEY CLUSTERED 
(
	[SalesId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_User]    Script Date: 08-06-2021 14:22:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_User](
	[UserId] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](50) NULL,
	[Address] [varchar](max) NULL,
	[Mobile] [varchar](12) NULL,
	[Email] [varchar](50) NULL,
	[LogId] [int] NULL,
	[CreateDate] [datetime] NULL,
	[IsDelete] [bit] NULL,
 CONSTRAINT [PK_tbl_User] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[tbl_bank] ON 

INSERT [dbo].[tbl_bank] ([BankId], [UserId], [CardNo], [CVC], [Balance], [Expiry]) VALUES (1, 1, N'1234567890123456', 123, 20000, CAST(N'2023-12-09' AS Date))
INSERT [dbo].[tbl_bank] ([BankId], [UserId], [CardNo], [CVC], [Balance], [Expiry]) VALUES (2, 5, N'9876543211234567', 321, 50000, CAST(N'2023-12-10' AS Date))
SET IDENTITY_INSERT [dbo].[tbl_bank] OFF
GO
SET IDENTITY_INSERT [dbo].[tbl_Cart] ON 

INSERT [dbo].[tbl_Cart] ([CartId], [ProvId], [UserId], [ProductName], [Price], [Quantity], [IsRemove], [CreateDate], [ProductId]) VALUES (1, 1, 1, N'Foldable Stool', 3000, 2, 1, CAST(N'2021-05-02T00:00:00.000' AS DateTime), 1)
INSERT [dbo].[tbl_Cart] ([CartId], [ProvId], [UserId], [ProductName], [Price], [Quantity], [IsRemove], [CreateDate], [ProductId]) VALUES (2, 1, 1, N'Foldable Stool', 3000, 2, 1, CAST(N'2021-05-02T00:00:00.000' AS DateTime), 1)
INSERT [dbo].[tbl_Cart] ([CartId], [ProvId], [UserId], [ProductName], [Price], [Quantity], [IsRemove], [CreateDate], [ProductId]) VALUES (3, 1, 1, N'Table', 10000, 2, 1, CAST(N'2021-05-07T00:00:00.000' AS DateTime), 2)
INSERT [dbo].[tbl_Cart] ([CartId], [ProvId], [UserId], [ProductName], [Price], [Quantity], [IsRemove], [CreateDate], [ProductId]) VALUES (4, 1, 1, N'Table', 10000, 2, 1, CAST(N'2021-05-07T00:00:00.000' AS DateTime), 2)
INSERT [dbo].[tbl_Cart] ([CartId], [ProvId], [UserId], [ProductName], [Price], [Quantity], [IsRemove], [CreateDate], [ProductId]) VALUES (5, 1, 1, N'Table', 10000, 2, 1, CAST(N'2021-05-07T00:00:00.000' AS DateTime), 2)
INSERT [dbo].[tbl_Cart] ([CartId], [ProvId], [UserId], [ProductName], [Price], [Quantity], [IsRemove], [CreateDate], [ProductId]) VALUES (6, 1, 1, N'Table', 10000, 2, 1, CAST(N'2021-05-07T00:00:00.000' AS DateTime), 2)
INSERT [dbo].[tbl_Cart] ([CartId], [ProvId], [UserId], [ProductName], [Price], [Quantity], [IsRemove], [CreateDate], [ProductId]) VALUES (7, 1, 1, N'Table', 10000, 2, 1, CAST(N'2021-05-07T00:00:00.000' AS DateTime), 2)
INSERT [dbo].[tbl_Cart] ([CartId], [ProvId], [UserId], [ProductName], [Price], [Quantity], [IsRemove], [CreateDate], [ProductId]) VALUES (8, 1, 1, N'Table', 10000, 2, 1, CAST(N'2021-05-07T00:00:00.000' AS DateTime), 2)
INSERT [dbo].[tbl_Cart] ([CartId], [ProvId], [UserId], [ProductName], [Price], [Quantity], [IsRemove], [CreateDate], [ProductId]) VALUES (9, 1, 1, N'Foldable Stool', 6000, 4, 1, CAST(N'2021-05-07T00:00:00.000' AS DateTime), 1)
INSERT [dbo].[tbl_Cart] ([CartId], [ProvId], [UserId], [ProductName], [Price], [Quantity], [IsRemove], [CreateDate], [ProductId]) VALUES (10, 1, 1, N'Table', 10000, 2, 1, CAST(N'2021-05-07T00:00:00.000' AS DateTime), 2)
INSERT [dbo].[tbl_Cart] ([CartId], [ProvId], [UserId], [ProductName], [Price], [Quantity], [IsRemove], [CreateDate], [ProductId]) VALUES (11, 1, 1, N'Table', 5000, 1, 1, CAST(N'2021-05-07T00:00:00.000' AS DateTime), 2)
INSERT [dbo].[tbl_Cart] ([CartId], [ProvId], [UserId], [ProductName], [Price], [Quantity], [IsRemove], [CreateDate], [ProductId]) VALUES (12, 1, 1, N'Foldable Stool', 0, NULL, 1, CAST(N'2021-05-07T00:00:00.000' AS DateTime), 1)
INSERT [dbo].[tbl_Cart] ([CartId], [ProvId], [UserId], [ProductName], [Price], [Quantity], [IsRemove], [CreateDate], [ProductId]) VALUES (13, 1, 1, N'Table', 10000, 2, 1, CAST(N'2021-05-07T00:00:00.000' AS DateTime), 2)
INSERT [dbo].[tbl_Cart] ([CartId], [ProvId], [UserId], [ProductName], [Price], [Quantity], [IsRemove], [CreateDate], [ProductId]) VALUES (14, 1, 1, N'Foldable Stool', 1500, 1, 1, CAST(N'2021-05-07T00:00:00.000' AS DateTime), 1)
INSERT [dbo].[tbl_Cart] ([CartId], [ProvId], [UserId], [ProductName], [Price], [Quantity], [IsRemove], [CreateDate], [ProductId]) VALUES (15, 1, 1, N'Foldable Stool', 4500, 3, 1, CAST(N'2021-05-07T00:00:00.000' AS DateTime), 1)
INSERT [dbo].[tbl_Cart] ([CartId], [ProvId], [UserId], [ProductName], [Price], [Quantity], [IsRemove], [CreateDate], [ProductId]) VALUES (16, 1, 1, N'Table', 5000, 1, 1, CAST(N'2021-05-07T00:00:00.000' AS DateTime), 2)
INSERT [dbo].[tbl_Cart] ([CartId], [ProvId], [UserId], [ProductName], [Price], [Quantity], [IsRemove], [CreateDate], [ProductId]) VALUES (17, 1, 1, N'Foldable Stool', 1500, 1, 1, CAST(N'2021-05-07T00:00:00.000' AS DateTime), 1)
INSERT [dbo].[tbl_Cart] ([CartId], [ProvId], [UserId], [ProductName], [Price], [Quantity], [IsRemove], [CreateDate], [ProductId]) VALUES (18, 1, 1, N'Foldable Stool', 1500, 1, 1, CAST(N'2021-05-07T00:00:00.000' AS DateTime), 1)
INSERT [dbo].[tbl_Cart] ([CartId], [ProvId], [UserId], [ProductName], [Price], [Quantity], [IsRemove], [CreateDate], [ProductId]) VALUES (19, 1, 1, N'Foldable Stool', 1500, 1, 1, CAST(N'2021-05-07T00:00:00.000' AS DateTime), 1)
INSERT [dbo].[tbl_Cart] ([CartId], [ProvId], [UserId], [ProductName], [Price], [Quantity], [IsRemove], [CreateDate], [ProductId]) VALUES (20, 1, 1, N'Foldable Stool', 3000, 2, 1, CAST(N'2021-05-07T00:00:00.000' AS DateTime), 1)
INSERT [dbo].[tbl_Cart] ([CartId], [ProvId], [UserId], [ProductName], [Price], [Quantity], [IsRemove], [CreateDate], [ProductId]) VALUES (21, 1, 1, N'Table', 5000, 1, 1, CAST(N'2021-05-07T00:00:00.000' AS DateTime), 2)
INSERT [dbo].[tbl_Cart] ([CartId], [ProvId], [UserId], [ProductName], [Price], [Quantity], [IsRemove], [CreateDate], [ProductId]) VALUES (22, 1, 1, N'Foldable Stool', 1500, 1, 1, CAST(N'2021-05-08T00:00:00.000' AS DateTime), 1)
INSERT [dbo].[tbl_Cart] ([CartId], [ProvId], [UserId], [ProductName], [Price], [Quantity], [IsRemove], [CreateDate], [ProductId]) VALUES (23, 1, 1, N'Foldable Stool', 1500, 1, 1, CAST(N'2021-05-08T00:00:00.000' AS DateTime), 1)
INSERT [dbo].[tbl_Cart] ([CartId], [ProvId], [UserId], [ProductName], [Price], [Quantity], [IsRemove], [CreateDate], [ProductId]) VALUES (24, 4, 1, N'Solimo 12-inch Wall clock', 599, 1, 1, CAST(N'2021-05-08T00:00:00.000' AS DateTime), 3)
INSERT [dbo].[tbl_Cart] ([CartId], [ProvId], [UserId], [ProductName], [Price], [Quantity], [IsRemove], [CreateDate], [ProductId]) VALUES (25, 4, 1, N'Solimo 12-inch Wall clock', 599, 1, 1, CAST(N'2021-05-08T00:00:00.000' AS DateTime), 3)
INSERT [dbo].[tbl_Cart] ([CartId], [ProvId], [UserId], [ProductName], [Price], [Quantity], [IsRemove], [CreateDate], [ProductId]) VALUES (27, 1, 1, N'Table', 5000, 1, 0, CAST(N'2021-05-20T00:00:00.000' AS DateTime), 2)
INSERT [dbo].[tbl_Cart] ([CartId], [ProvId], [UserId], [ProductName], [Price], [Quantity], [IsRemove], [CreateDate], [ProductId]) VALUES (28, 1, 1, N'Foldable Stool', 1000, 1, 0, CAST(N'2021-06-06T00:00:00.000' AS DateTime), 1)
INSERT [dbo].[tbl_Cart] ([CartId], [ProvId], [UserId], [ProductName], [Price], [Quantity], [IsRemove], [CreateDate], [ProductId]) VALUES (31, 1, 6, N'Foldable Stool', 1000, 1, 0, CAST(N'2021-06-08T00:00:00.000' AS DateTime), 1)
INSERT [dbo].[tbl_Cart] ([CartId], [ProvId], [UserId], [ProductName], [Price], [Quantity], [IsRemove], [CreateDate], [ProductId]) VALUES (32, 1, 6, N'Foldable Stool', 1000, 1, 0, CAST(N'2021-06-08T00:00:00.000' AS DateTime), 1)
INSERT [dbo].[tbl_Cart] ([CartId], [ProvId], [UserId], [ProductName], [Price], [Quantity], [IsRemove], [CreateDate], [ProductId]) VALUES (33, 1, 7, N'Table', 5000, 1, 0, CAST(N'2021-06-08T00:00:00.000' AS DateTime), 2)
SET IDENTITY_INSERT [dbo].[tbl_Cart] OFF
GO
SET IDENTITY_INSERT [dbo].[tbl_Category] ON 

INSERT [dbo].[tbl_Category] ([CategoryId], [Name], [Description]) VALUES (1, N'Handmade', N'made by hand, not by machine, and typically therefore of superior quality.')
INSERT [dbo].[tbl_Category] ([CategoryId], [Name], [Description]) VALUES (3, N'Antique', N' a piece of furniture or work of art that has a high value because of its age and quality.')
INSERT [dbo].[tbl_Category] ([CategoryId], [Name], [Description]) VALUES (4, N'Bedroom Decors', N'Bedroom Decors')
INSERT [dbo].[tbl_Category] ([CategoryId], [Name], [Description]) VALUES (5, N'Uni Decor Specials', NULL)
SET IDENTITY_INSERT [dbo].[tbl_Category] OFF
GO
SET IDENTITY_INSERT [dbo].[tbl_IdProof] ON 

INSERT [dbo].[tbl_IdProof] ([Id], [IdType]) VALUES (1, N'ADHAAR')
INSERT [dbo].[tbl_IdProof] ([Id], [IdType]) VALUES (2, N'LICENSE')
INSERT [dbo].[tbl_IdProof] ([Id], [IdType]) VALUES (3, N'PASSPORT')
INSERT [dbo].[tbl_IdProof] ([Id], [IdType]) VALUES (4, N'VOTERS ID')
SET IDENTITY_INSERT [dbo].[tbl_IdProof] OFF
GO
SET IDENTITY_INSERT [dbo].[tbl_Login] ON 

INSERT [dbo].[tbl_Login] ([LogId], [Username], [Password], [IsApprove], [Isdelete], [CreateDate], [role]) VALUES (1, N'Anu123', N'anu123', 1, 0, CAST(N'2021-04-27T00:00:00.000' AS DateTime), 3)
INSERT [dbo].[tbl_Login] ([LogId], [Username], [Password], [IsApprove], [Isdelete], [CreateDate], [role]) VALUES (2, N'manu', N'MANU123', 1, 0, CAST(N'2021-04-28T00:00:00.000' AS DateTime), 2)
INSERT [dbo].[tbl_Login] ([LogId], [Username], [Password], [IsApprove], [Isdelete], [CreateDate], [role]) VALUES (3, N'Admin', N'Admin', 1, 0, CAST(N'2021-04-28T00:00:00.000' AS DateTime), 1)
INSERT [dbo].[tbl_Login] ([LogId], [Username], [Password], [IsApprove], [Isdelete], [CreateDate], [role]) VALUES (4, N'yedhu', N'yedhu', 1, 0, CAST(N'2021-04-29T00:00:00.000' AS DateTime), 2)
INSERT [dbo].[tbl_Login] ([LogId], [Username], [Password], [IsApprove], [Isdelete], [CreateDate], [role]) VALUES (5, N'anu', N'qwerty', 1, 0, CAST(N'2021-04-29T00:00:00.000' AS DateTime), 2)
INSERT [dbo].[tbl_Login] ([LogId], [Username], [Password], [IsApprove], [Isdelete], [CreateDate], [role]) VALUES (6, N'Yedhu', N'Yedhu123', 1, 0, CAST(N'2021-05-08T00:00:00.000' AS DateTime), 2)
INSERT [dbo].[tbl_Login] ([LogId], [Username], [Password], [IsApprove], [Isdelete], [CreateDate], [role]) VALUES (7, N'Harikrishnan', N'1234', 1, 0, CAST(N'2021-05-08T00:00:00.000' AS DateTime), 3)
INSERT [dbo].[tbl_Login] ([LogId], [Username], [Password], [IsApprove], [Isdelete], [CreateDate], [role]) VALUES (8, N'harikrish', N'1234', 1, 0, CAST(N'2021-05-08T00:00:00.000' AS DateTime), 3)
INSERT [dbo].[tbl_Login] ([LogId], [Username], [Password], [IsApprove], [Isdelete], [CreateDate], [role]) VALUES (9, N'Ananthu', N'12345', 1, 0, CAST(N'2021-05-08T00:00:00.000' AS DateTime), 3)
INSERT [dbo].[tbl_Login] ([LogId], [Username], [Password], [IsApprove], [Isdelete], [CreateDate], [role]) VALUES (10, N'Archana', N'Archana', 1, 0, CAST(N'2021-05-20T00:00:00.000' AS DateTime), 3)
INSERT [dbo].[tbl_Login] ([LogId], [Username], [Password], [IsApprove], [Isdelete], [CreateDate], [role]) VALUES (11, N'aiswarya', N'ais', 1, 0, CAST(N'2021-06-06T00:00:00.000' AS DateTime), 3)
INSERT [dbo].[tbl_Login] ([LogId], [Username], [Password], [IsApprove], [Isdelete], [CreateDate], [role]) VALUES (12, N'arunima', N'aru', 1, 0, CAST(N'2021-06-08T00:00:00.000' AS DateTime), 3)
SET IDENTITY_INSERT [dbo].[tbl_Login] OFF
GO
SET IDENTITY_INSERT [dbo].[tbl_Orderstatus] ON 

INSERT [dbo].[tbl_Orderstatus] ([Id], [Status], [SaleId], [updatedate]) VALUES (1, N'Order Placed', NULL, CAST(N'2021-05-07T00:00:00.000' AS DateTime))
INSERT [dbo].[tbl_Orderstatus] ([Id], [Status], [SaleId], [updatedate]) VALUES (2, N'Order Placed', NULL, CAST(N'2021-05-07T00:00:00.000' AS DateTime))
INSERT [dbo].[tbl_Orderstatus] ([Id], [Status], [SaleId], [updatedate]) VALUES (3, N'Order Placed', NULL, CAST(N'2021-05-07T00:00:00.000' AS DateTime))
INSERT [dbo].[tbl_Orderstatus] ([Id], [Status], [SaleId], [updatedate]) VALUES (4, N'Order Placed', NULL, CAST(N'2021-05-07T00:00:00.000' AS DateTime))
INSERT [dbo].[tbl_Orderstatus] ([Id], [Status], [SaleId], [updatedate]) VALUES (5, N'Order Placed', NULL, CAST(N'2021-05-08T00:00:00.000' AS DateTime))
INSERT [dbo].[tbl_Orderstatus] ([Id], [Status], [SaleId], [updatedate]) VALUES (6, N'Order Placed', NULL, CAST(N'2021-05-08T00:00:00.000' AS DateTime))
INSERT [dbo].[tbl_Orderstatus] ([Id], [Status], [SaleId], [updatedate]) VALUES (7, N'Order Placed', NULL, CAST(N'2021-05-08T00:00:00.000' AS DateTime))
INSERT [dbo].[tbl_Orderstatus] ([Id], [Status], [SaleId], [updatedate]) VALUES (8, N'Order Placed', NULL, CAST(N'2021-05-08T00:00:00.000' AS DateTime))
INSERT [dbo].[tbl_Orderstatus] ([Id], [Status], [SaleId], [updatedate]) VALUES (9, N'Order Placed', NULL, CAST(N'2021-05-08T00:00:00.000' AS DateTime))
INSERT [dbo].[tbl_Orderstatus] ([Id], [Status], [SaleId], [updatedate]) VALUES (10, N'Order Placed', NULL, CAST(N'2021-06-06T00:00:00.000' AS DateTime))
SET IDENTITY_INSERT [dbo].[tbl_Orderstatus] OFF
GO
SET IDENTITY_INSERT [dbo].[tbl_Products] ON 

INSERT [dbo].[tbl_Products] ([ProductId], [ProductName], [Description], [Image], [ProviderID], [Price], [Createdate], [Isdelete], [Quantity], [CategoryId]) VALUES (1, N'Foldable Stool', N' a piece of furniture or work of art that has a high value because of its age and quality.', N'/Content/Products/Foldable Stools.jpg', 1, 1000, CAST(N'2021-05-01T00:00:00.000' AS DateTime), 0, 10, 1)
INSERT [dbo].[tbl_Products] ([ProductId], [ProductName], [Description], [Image], [ProviderID], [Price], [Createdate], [Isdelete], [Quantity], [CategoryId]) VALUES (2, N'Table', N'made by hand, not by machine, and typically therefore of superior quality.', N'/Content/Products/Decor.jpg', 1, 5000, CAST(N'2021-05-01T00:00:00.000' AS DateTime), 0, 8, 1)
INSERT [dbo].[tbl_Products] ([ProductId], [ProductName], [Description], [Image], [ProviderID], [Price], [Createdate], [Isdelete], [Quantity], [CategoryId]) VALUES (3, N'Solimo 12-inch Wall clock', N'Bedroom Decors', N'/Content/Products/clock.jpg', 4, 599, CAST(N'2021-05-08T00:00:00.000' AS DateTime), 0, 9, 4)
INSERT [dbo].[tbl_Products] ([ProductId], [ProductName], [Description], [Image], [ProviderID], [Price], [Createdate], [Isdelete], [Quantity], [CategoryId]) VALUES (4, N'Solimo 12-inch Wall clock', N'Bedroom Decors', N'/Content/Products/clock.jpg', 4, 599, CAST(N'2021-05-08T00:00:00.000' AS DateTime), 1, 2, 4)
INSERT [dbo].[tbl_Products] ([ProductId], [ProductName], [Description], [Image], [ProviderID], [Price], [Createdate], [Isdelete], [Quantity], [CategoryId]) VALUES (5, N'Solimo 12-inch Wall clock', N'Bedroom Decors', N'/Content/Products/clock.jpg', 4, 599, CAST(N'2021-05-08T00:00:00.000' AS DateTime), 1, 2, 4)
INSERT [dbo].[tbl_Products] ([ProductId], [ProductName], [Description], [Image], [ProviderID], [Price], [Createdate], [Isdelete], [Quantity], [CategoryId]) VALUES (6, N'Solimo 12-inch Wall clock', N'Bedroom Decors', N'/Content/Products/clock.jpg', 4, 599, CAST(N'2021-05-08T00:00:00.000' AS DateTime), 1, 2, 4)
SET IDENTITY_INSERT [dbo].[tbl_Products] OFF
GO
SET IDENTITY_INSERT [dbo].[tbl_Providers] ON 

INSERT [dbo].[tbl_Providers] ([ProvId], [Name], [Address], [Phone], [Email], [IdProof], [IdNo], [CreateDate], [IsDelete], [LogId], [IsApprove]) VALUES (1, N'Manu', N'Bharti Axa , Madeena Arcade ,Baker Junction', N'9874563210', N'shilpa@gmail.com', N'ADHAAR', N'1234002139874', CAST(N'2021-04-28T00:00:00.000' AS DateTime), 0, 2, 1)
INSERT [dbo].[tbl_Providers] ([ProvId], [Name], [Address], [Phone], [Email], [IdProof], [IdNo], [CreateDate], [IsDelete], [LogId], [IsApprove]) VALUES (2, N'yedhu', N'MRA - 17 , MRA NAGAR', N'9447363996', N'info@colorlinebuilders.com', N'ADHAAR', N'1234002139874', CAST(N'2021-04-29T00:00:00.000' AS DateTime), 0, 4, 1)
INSERT [dbo].[tbl_Providers] ([ProvId], [Name], [Address], [Phone], [Email], [IdProof], [IdNo], [CreateDate], [IsDelete], [LogId], [IsApprove]) VALUES (3, N'anu', N'MRA - 17 , MRA NAGAR', N'9447363996', N'arun@gmail.com', N'LICENSE', N'1234002139874', CAST(N'2021-04-29T00:00:00.000' AS DateTime), 0, 5, 1)
INSERT [dbo].[tbl_Providers] ([ProvId], [Name], [Address], [Phone], [Email], [IdProof], [IdNo], [CreateDate], [IsDelete], [LogId], [IsApprove]) VALUES (4, N'Yedhukrishnan', N'Krishna Bhavan, Nattassery, S.H Mount P.O Kottayam', N'9746396553', N'yedhukrishnanbk553@gmail.com', N'ADHAAR', N'280245761234', CAST(N'2021-05-08T00:00:00.000' AS DateTime), 0, 6, 1)
SET IDENTITY_INSERT [dbo].[tbl_Providers] OFF
GO
SET IDENTITY_INSERT [dbo].[tbl_Sales] ON 

INSERT [dbo].[tbl_Sales] ([SalesId], [ProvId], [UserId], [ProductId], [Quantity], [Price], [PayStatus], [CreateDate], [Orderstatus], [TotalAmount]) VALUES (1, 1, 1, 1, 1, 1500, 0, NULL, 0, 1500)
INSERT [dbo].[tbl_Sales] ([SalesId], [ProvId], [UserId], [ProductId], [Quantity], [Price], [PayStatus], [CreateDate], [Orderstatus], [TotalAmount]) VALUES (2, 1, 1, 1, 2, 3000, 1, CAST(N'2021-05-07T00:00:00.000' AS DateTime), 1, 3000)
INSERT [dbo].[tbl_Sales] ([SalesId], [ProvId], [UserId], [ProductId], [Quantity], [Price], [PayStatus], [CreateDate], [Orderstatus], [TotalAmount]) VALUES (3, 1, 1, 1, 2, 3000, 1, CAST(N'2021-05-07T00:00:00.000' AS DateTime), 1, 3000)
INSERT [dbo].[tbl_Sales] ([SalesId], [ProvId], [UserId], [ProductId], [Quantity], [Price], [PayStatus], [CreateDate], [Orderstatus], [TotalAmount]) VALUES (4, 1, 1, 1, 4, 6000, 1, CAST(N'2021-05-07T00:00:00.000' AS DateTime), 1, 6000)
INSERT [dbo].[tbl_Sales] ([SalesId], [ProvId], [UserId], [ProductId], [Quantity], [Price], [PayStatus], [CreateDate], [Orderstatus], [TotalAmount]) VALUES (5, 1, 1, 1, 4, 6000, 1, CAST(N'2021-05-08T00:00:00.000' AS DateTime), 1, 6000)
INSERT [dbo].[tbl_Sales] ([SalesId], [ProvId], [UserId], [ProductId], [Quantity], [Price], [PayStatus], [CreateDate], [Orderstatus], [TotalAmount]) VALUES (6, 1, 1, 1, 1, 1500, 1, CAST(N'2021-05-08T00:00:00.000' AS DateTime), 1, 1500)
INSERT [dbo].[tbl_Sales] ([SalesId], [ProvId], [UserId], [ProductId], [Quantity], [Price], [PayStatus], [CreateDate], [Orderstatus], [TotalAmount]) VALUES (7, 4, 1, 3, 1, 599, 1, CAST(N'2021-05-08T00:00:00.000' AS DateTime), 1, 599)
INSERT [dbo].[tbl_Sales] ([SalesId], [ProvId], [UserId], [ProductId], [Quantity], [Price], [PayStatus], [CreateDate], [Orderstatus], [TotalAmount]) VALUES (8, 4, 1, 3, 1, 599, 1, CAST(N'2021-05-08T00:00:00.000' AS DateTime), 1, 599)
INSERT [dbo].[tbl_Sales] ([SalesId], [ProvId], [UserId], [ProductId], [Quantity], [Price], [PayStatus], [CreateDate], [Orderstatus], [TotalAmount]) VALUES (9, 4, 1, 3, 1, 599, 1, CAST(N'2021-05-08T00:00:00.000' AS DateTime), 1, 599)
INSERT [dbo].[tbl_Sales] ([SalesId], [ProvId], [UserId], [ProductId], [Quantity], [Price], [PayStatus], [CreateDate], [Orderstatus], [TotalAmount]) VALUES (10, 1, 1, 1, 1, 1000, 1, CAST(N'2021-06-06T00:00:00.000' AS DateTime), 1, 1000)
SET IDENTITY_INSERT [dbo].[tbl_Sales] OFF
GO
SET IDENTITY_INSERT [dbo].[tbl_User] ON 

INSERT [dbo].[tbl_User] ([UserId], [Name], [Address], [Mobile], [Email], [LogId], [CreateDate], [IsDelete]) VALUES (1, N'anu', N'MRA - 17 , MRA NAGAR', N'9447363996', N'shilpa@gmail.com', 1, CAST(N'2021-04-27T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[tbl_User] ([UserId], [Name], [Address], [Mobile], [Email], [LogId], [CreateDate], [IsDelete]) VALUES (2, N'Hari Krishnan', N'Krishna Bhavan, Nattassery, S.H Mount P.O Kottayam', N'9947377392', N'harikrishnanbk@gmail.com', 7, CAST(N'2021-05-08T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[tbl_User] ([UserId], [Name], [Address], [Mobile], [Email], [LogId], [CreateDate], [IsDelete]) VALUES (3, N'Hari Krishnan', N'Krishna Bhavan, Nattassery, S.H Mount P.O Kottayam', N'9947377392', N'harikrishnanbk@gmail.com', 8, CAST(N'2021-05-08T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[tbl_User] ([UserId], [Name], [Address], [Mobile], [Email], [LogId], [CreateDate], [IsDelete]) VALUES (4, N'Ananthu', N'Krishna Bhavan, Nattassery, S.H Mount P.O Kottayam', N'1234567890', N'ananthu@gmail.com', 9, CAST(N'2021-05-08T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[tbl_User] ([UserId], [Name], [Address], [Mobile], [Email], [LogId], [CreateDate], [IsDelete]) VALUES (5, N'Archana', N'Arch Villa, Fifth Lane Ernakulam', N'9876543456', N'archana@gmail.com', 10, CAST(N'2021-05-20T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[tbl_User] ([UserId], [Name], [Address], [Mobile], [Email], [LogId], [CreateDate], [IsDelete]) VALUES (6, N'Aiswarya S', N'Aiswarya Villa(H), Banglore', N'8527419632', N'aiswarya@gmail.com', 11, CAST(N'2021-06-06T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[tbl_User] ([UserId], [Name], [Address], [Mobile], [Email], [LogId], [CreateDate], [IsDelete]) VALUES (7, N'Arunima', N'Arunima Bhavan, Kottayam.', N'7894126358', N'arunima@gmail.com', 12, CAST(N'2021-06-08T00:00:00.000' AS DateTime), 0)
SET IDENTITY_INSERT [dbo].[tbl_User] OFF
GO
ALTER TABLE [dbo].[tbl_Cart] ADD  CONSTRAINT [DF_tbl_Cart_IsRemove]  DEFAULT ((0)) FOR [IsRemove]
GO
ALTER TABLE [dbo].[tbl_Login] ADD  CONSTRAINT [DF_tbl_Login_IsApprove]  DEFAULT ((0)) FOR [IsApprove]
GO
ALTER TABLE [dbo].[tbl_Login] ADD  CONSTRAINT [DF_tbl_Login_Isdelete]  DEFAULT ((0)) FOR [Isdelete]
GO
ALTER TABLE [dbo].[tbl_Products] ADD  CONSTRAINT [DF_tbl_Products_Isdelete]  DEFAULT ((0)) FOR [Isdelete]
GO
ALTER TABLE [dbo].[tbl_Providers] ADD  CONSTRAINT [DF_tbl_Providers_IsApprove]  DEFAULT ((0)) FOR [IsApprove]
GO
ALTER TABLE [dbo].[tbl_Sales] ADD  CONSTRAINT [DF_tbl_Sales_PayStatus]  DEFAULT ((0)) FOR [PayStatus]
GO
ALTER TABLE [dbo].[tbl_Sales] ADD  CONSTRAINT [DF_tbl_Sales_Orderstatus]  DEFAULT ((0)) FOR [Orderstatus]
GO
ALTER TABLE [dbo].[tbl_User] ADD  CONSTRAINT [DF_tbl_User_IsDelete]  DEFAULT ((0)) FOR [IsDelete]
GO
ALTER TABLE [dbo].[tbl_Cart]  WITH CHECK ADD  CONSTRAINT [FK_tbl_Cart_tbl_Providers] FOREIGN KEY([ProductId])
REFERENCES [dbo].[tbl_Products] ([ProductId])
GO
ALTER TABLE [dbo].[tbl_Cart] CHECK CONSTRAINT [FK_tbl_Cart_tbl_Providers]
GO
ALTER TABLE [dbo].[tbl_Cart]  WITH CHECK ADD  CONSTRAINT [FK_tbl_Cart_tbl_User] FOREIGN KEY([UserId])
REFERENCES [dbo].[tbl_User] ([UserId])
GO
ALTER TABLE [dbo].[tbl_Cart] CHECK CONSTRAINT [FK_tbl_Cart_tbl_User]
GO
ALTER TABLE [dbo].[tbl_Orderstatus]  WITH CHECK ADD  CONSTRAINT [FK_tbl_Orderstatus_tbl_Sales] FOREIGN KEY([SaleId])
REFERENCES [dbo].[tbl_Sales] ([SalesId])
GO
ALTER TABLE [dbo].[tbl_Orderstatus] CHECK CONSTRAINT [FK_tbl_Orderstatus_tbl_Sales]
GO
ALTER TABLE [dbo].[tbl_Products]  WITH CHECK ADD  CONSTRAINT [FK_tbl_Products_tbl_Category] FOREIGN KEY([CategoryId])
REFERENCES [dbo].[tbl_Category] ([CategoryId])
GO
ALTER TABLE [dbo].[tbl_Products] CHECK CONSTRAINT [FK_tbl_Products_tbl_Category]
GO
ALTER TABLE [dbo].[tbl_Products]  WITH CHECK ADD  CONSTRAINT [FK_tbl_Products_tbl_Providers] FOREIGN KEY([ProviderID])
REFERENCES [dbo].[tbl_Providers] ([ProvId])
GO
ALTER TABLE [dbo].[tbl_Products] CHECK CONSTRAINT [FK_tbl_Products_tbl_Providers]
GO
ALTER TABLE [dbo].[tbl_Providers]  WITH CHECK ADD  CONSTRAINT [FK_tbl_Providers_tbl_Login] FOREIGN KEY([LogId])
REFERENCES [dbo].[tbl_Login] ([LogId])
GO
ALTER TABLE [dbo].[tbl_Providers] CHECK CONSTRAINT [FK_tbl_Providers_tbl_Login]
GO
ALTER TABLE [dbo].[tbl_Sales]  WITH CHECK ADD  CONSTRAINT [FK_tbl_Sales_tbl_Products] FOREIGN KEY([ProductId])
REFERENCES [dbo].[tbl_Products] ([ProductId])
GO
ALTER TABLE [dbo].[tbl_Sales] CHECK CONSTRAINT [FK_tbl_Sales_tbl_Products]
GO
ALTER TABLE [dbo].[tbl_Sales]  WITH CHECK ADD  CONSTRAINT [FK_tbl_Sales_tbl_Providers] FOREIGN KEY([ProvId])
REFERENCES [dbo].[tbl_Providers] ([ProvId])
GO
ALTER TABLE [dbo].[tbl_Sales] CHECK CONSTRAINT [FK_tbl_Sales_tbl_Providers]
GO
ALTER TABLE [dbo].[tbl_Sales]  WITH CHECK ADD  CONSTRAINT [FK_tbl_Sales_tbl_User] FOREIGN KEY([UserId])
REFERENCES [dbo].[tbl_User] ([UserId])
GO
ALTER TABLE [dbo].[tbl_Sales] CHECK CONSTRAINT [FK_tbl_Sales_tbl_User]
GO
ALTER TABLE [dbo].[tbl_User]  WITH CHECK ADD  CONSTRAINT [FK_tbl_User_tbl_Login] FOREIGN KEY([LogId])
REFERENCES [dbo].[tbl_Login] ([LogId])
GO
ALTER TABLE [dbo].[tbl_User] CHECK CONSTRAINT [FK_tbl_User_tbl_Login]
GO
USE [master]
GO
ALTER DATABASE [db_unidecor] SET  READ_WRITE 
GO
