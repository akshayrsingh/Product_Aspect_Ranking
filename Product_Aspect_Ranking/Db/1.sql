USE [master]
GO
/****** Object:  Database [Product_Aspect_Ranking]    Script Date: 08/21/2015 13:15:03 ******/
CREATE DATABASE [Product_Aspect_Ranking] ON  PRIMARY 
( NAME = N'Product_Aspect_Ranking', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL11.SQLEXPRESS\MSSQL\DATA\Product_Aspect_Ranking.mdf' , SIZE = 3072KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'Product_Aspect_Ranking_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL11.SQLEXPRESS\MSSQL\DATA\Product_Aspect_Ranking_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [Product_Aspect_Ranking] SET COMPATIBILITY_LEVEL = 100
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Product_Aspect_Ranking].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Product_Aspect_Ranking] SET ANSI_NULL_DEFAULT OFF
GO
ALTER DATABASE [Product_Aspect_Ranking] SET ANSI_NULLS OFF
GO
ALTER DATABASE [Product_Aspect_Ranking] SET ANSI_PADDING OFF
GO
ALTER DATABASE [Product_Aspect_Ranking] SET ANSI_WARNINGS OFF
GO
ALTER DATABASE [Product_Aspect_Ranking] SET ARITHABORT OFF
GO
ALTER DATABASE [Product_Aspect_Ranking] SET AUTO_CLOSE OFF
GO
ALTER DATABASE [Product_Aspect_Ranking] SET AUTO_CREATE_STATISTICS ON
GO
ALTER DATABASE [Product_Aspect_Ranking] SET AUTO_SHRINK OFF
GO
ALTER DATABASE [Product_Aspect_Ranking] SET AUTO_UPDATE_STATISTICS ON
GO
ALTER DATABASE [Product_Aspect_Ranking] SET CURSOR_CLOSE_ON_COMMIT OFF
GO
ALTER DATABASE [Product_Aspect_Ranking] SET CURSOR_DEFAULT  GLOBAL
GO
ALTER DATABASE [Product_Aspect_Ranking] SET CONCAT_NULL_YIELDS_NULL OFF
GO
ALTER DATABASE [Product_Aspect_Ranking] SET NUMERIC_ROUNDABORT OFF
GO
ALTER DATABASE [Product_Aspect_Ranking] SET QUOTED_IDENTIFIER OFF
GO
ALTER DATABASE [Product_Aspect_Ranking] SET RECURSIVE_TRIGGERS OFF
GO
ALTER DATABASE [Product_Aspect_Ranking] SET  DISABLE_BROKER
GO
ALTER DATABASE [Product_Aspect_Ranking] SET AUTO_UPDATE_STATISTICS_ASYNC OFF
GO
ALTER DATABASE [Product_Aspect_Ranking] SET DATE_CORRELATION_OPTIMIZATION OFF
GO
ALTER DATABASE [Product_Aspect_Ranking] SET TRUSTWORTHY OFF
GO
ALTER DATABASE [Product_Aspect_Ranking] SET ALLOW_SNAPSHOT_ISOLATION OFF
GO
ALTER DATABASE [Product_Aspect_Ranking] SET PARAMETERIZATION SIMPLE
GO
ALTER DATABASE [Product_Aspect_Ranking] SET READ_COMMITTED_SNAPSHOT OFF
GO
ALTER DATABASE [Product_Aspect_Ranking] SET HONOR_BROKER_PRIORITY OFF
GO
ALTER DATABASE [Product_Aspect_Ranking] SET  READ_WRITE
GO
ALTER DATABASE [Product_Aspect_Ranking] SET RECOVERY FULL
GO
ALTER DATABASE [Product_Aspect_Ranking] SET  MULTI_USER
GO
ALTER DATABASE [Product_Aspect_Ranking] SET PAGE_VERIFY CHECKSUM
GO
ALTER DATABASE [Product_Aspect_Ranking] SET DB_CHAINING OFF
GO
EXEC sys.sp_db_vardecimal_storage_format N'Product_Aspect_Ranking', N'ON'
GO
USE [Product_Aspect_Ranking]
GO
/****** Object:  Table [dbo].[BrandsMaster]    Script Date: 08/21/2015 13:15:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[BrandsMaster](
	[bId] [int] IDENTITY(1,1) NOT NULL,
	[bName] [varchar](50) NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[BrandsMaster] ON
INSERT [dbo].[BrandsMaster] ([bId], [bName]) VALUES (1, N'Acer')
INSERT [dbo].[BrandsMaster] ([bId], [bName]) VALUES (2, N'Alienware')
INSERT [dbo].[BrandsMaster] ([bId], [bName]) VALUES (3, N'Amazon')
INSERT [dbo].[BrandsMaster] ([bId], [bName]) VALUES (4, N'Apple')
INSERT [dbo].[BrandsMaster] ([bId], [bName]) VALUES (5, N'Asus')
INSERT [dbo].[BrandsMaster] ([bId], [bName]) VALUES (6, N'BlackBerry')
INSERT [dbo].[BrandsMaster] ([bId], [bName]) VALUES (7, N'Bose')
INSERT [dbo].[BrandsMaster] ([bId], [bName]) VALUES (8, N'Canon')
INSERT [dbo].[BrandsMaster] ([bId], [bName]) VALUES (9, N'Creative')
INSERT [dbo].[BrandsMaster] ([bId], [bName]) VALUES (10, N'Dell')
INSERT [dbo].[BrandsMaster] ([bId], [bName]) VALUES (11, N'Honor')
INSERT [dbo].[BrandsMaster] ([bId], [bName]) VALUES (12, N'HP')
INSERT [dbo].[BrandsMaster] ([bId], [bName]) VALUES (13, N'HTC')
INSERT [dbo].[BrandsMaster] ([bId], [bName]) VALUES (14, N'Huawei')
INSERT [dbo].[BrandsMaster] ([bId], [bName]) VALUES (15, N'Lenovo')
INSERT [dbo].[BrandsMaster] ([bId], [bName]) VALUES (16, N'LG')
INSERT [dbo].[BrandsMaster] ([bId], [bName]) VALUES (17, N'Motorola')
INSERT [dbo].[BrandsMaster] ([bId], [bName]) VALUES (18, N'Nokia')
INSERT [dbo].[BrandsMaster] ([bId], [bName]) VALUES (19, N'OnePlus')
INSERT [dbo].[BrandsMaster] ([bId], [bName]) VALUES (20, N'Oppo')
INSERT [dbo].[BrandsMaster] ([bId], [bName]) VALUES (21, N'Samsung')
INSERT [dbo].[BrandsMaster] ([bId], [bName]) VALUES (22, N'Sony')
INSERT [dbo].[BrandsMaster] ([bId], [bName]) VALUES (23, N'Toshiba')
INSERT [dbo].[BrandsMaster] ([bId], [bName]) VALUES (24, N'Vodafone')
INSERT [dbo].[BrandsMaster] ([bId], [bName]) VALUES (25, N'Xiaomi')
SET IDENTITY_INSERT [dbo].[BrandsMaster] OFF
/****** Object:  Table [dbo].[Users]    Script Date: 08/21/2015 13:15:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Users](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Username] [nvarchar](50) NULL,
	[Password] [nvarchar](50) NULL,
	[FName] [nvarchar](50) NULL,
	[Mname] [nvarchar](50) NULL,
	[Lname] [nvarchar](50) NULL,
	[Address] [nvarchar](500) NULL,
	[Email] [nvarchar](50) NULL,
	[Phone] [nchar](10) NULL
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Users] ON
INSERT [dbo].[Users] ([id], [Username], [Password], [FName], [Mname], [Lname], [Address], [Email], [Phone]) VALUES (1, N'shailesh', N'shailesh', N'shailesh', N's', N'bhor', N'kllkjkl', N'shailesh@gmail.com', N'9892265895')
SET IDENTITY_INSERT [dbo].[Users] OFF
/****** Object:  Table [dbo].[ProductMaster]    Script Date: 08/21/2015 13:15:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ProductMaster](
	[pId] [int] IDENTITY(1,1) NOT NULL,
	[bId] [int] NULL,
	[pName] [varchar](500) NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[ProductMaster] ON
INSERT [dbo].[ProductMaster] ([pId], [bId], [pName]) VALUES (1, 1, N'Acer B326hul ')
INSERT [dbo].[ProductMaster] ([pId], [bId], [pName]) VALUES (2, 1, N'Acer Revo One Rl85')
INSERT [dbo].[ProductMaster] ([pId], [bId], [pName]) VALUES (3, 1, N'Acer Aspire M5')
INSERT [dbo].[ProductMaster] ([pId], [bId], [pName]) VALUES (4, 1, N'Acer Aspire S7-392-6411	')
INSERT [dbo].[ProductMaster] ([pId], [bId], [pName]) VALUES (5, 1, N'Acer Aspire S7')
INSERT [dbo].[ProductMaster] ([pId], [bId], [pName]) VALUES (6, 1, N'Acer Iconia W4')
INSERT [dbo].[ProductMaster] ([pId], [bId], [pName]) VALUES (7, 1, N'Acer C720')
INSERT [dbo].[ProductMaster] ([pId], [bId], [pName]) VALUES (8, 1, N'Acer Aspire U5')
INSERT [dbo].[ProductMaster] ([pId], [bId], [pName]) VALUES (9, 1, N'Acer Aspire S5')
INSERT [dbo].[ProductMaster] ([pId], [bId], [pName]) VALUES (10, 1, N'Acer Aspire Switch 11')
INSERT [dbo].[ProductMaster] ([pId], [bId], [pName]) VALUES (11, 1, N'Acer Aspire R 11')
INSERT [dbo].[ProductMaster] ([pId], [bId], [pName]) VALUES (12, 1, N'Acer Aspire 7600u')
INSERT [dbo].[ProductMaster] ([pId], [bId], [pName]) VALUES (13, 1, N'Acer Iconia W510')
INSERT [dbo].[ProductMaster] ([pId], [bId], [pName]) VALUES (14, 1, N'Acer Aspire E1')
INSERT [dbo].[ProductMaster] ([pId], [bId], [pName]) VALUES (15, 1, N'Acer Timelineultra M5')
INSERT [dbo].[ProductMaster] ([pId], [bId], [pName]) VALUES (16, 1, N'Acer Aspire E5-551')
INSERT [dbo].[ProductMaster] ([pId], [bId], [pName]) VALUES (17, 1, N'Acer Travelmate B115')
INSERT [dbo].[ProductMaster] ([pId], [bId], [pName]) VALUES (18, 1, N'Acer Aspire S3')
INSERT [dbo].[ProductMaster] ([pId], [bId], [pName]) VALUES (19, 1, N'Acer Iconia A1')
INSERT [dbo].[ProductMaster] ([pId], [bId], [pName]) VALUES (20, 1, N'Acer Aspire M Touch')
INSERT [dbo].[ProductMaster] ([pId], [bId], [pName]) VALUES (21, 2, N'Alienware 17')
INSERT [dbo].[ProductMaster] ([pId], [bId], [pName]) VALUES (22, 2, N'Alienware 18')
INSERT [dbo].[ProductMaster] ([pId], [bId], [pName]) VALUES (23, 2, N'Alienware Alpha')
INSERT [dbo].[ProductMaster] ([pId], [bId], [pName]) VALUES (24, 2, N'Alienware X51')
INSERT [dbo].[ProductMaster] ([pId], [bId], [pName]) VALUES (25, 2, N'Alienware 13')
INSERT [dbo].[ProductMaster] ([pId], [bId], [pName]) VALUES (26, 2, N'Alienware Steam Machine')
INSERT [dbo].[ProductMaster] ([pId], [bId], [pName]) VALUES (27, 2, N'Alienware Area 51')
INSERT [dbo].[ProductMaster] ([pId], [bId], [pName]) VALUES (28, 3, N'Amazon Kindle Paperwhite')
INSERT [dbo].[ProductMaster] ([pId], [bId], [pName]) VALUES (29, 3, N'Kindle Voyage')
INSERT [dbo].[ProductMaster] ([pId], [bId], [pName]) VALUES (30, 3, N'Amazon Kindle Fire Hdx 7')
INSERT [dbo].[ProductMaster] ([pId], [bId], [pName]) VALUES (31, 3, N'Amazon Kindle Hdx 8.9')
INSERT [dbo].[ProductMaster] ([pId], [bId], [pName]) VALUES (32, 3, N'Amazon Kindle Fire Hd')
INSERT [dbo].[ProductMaster] ([pId], [bId], [pName]) VALUES (33, 3, N'Amazon Fire Hdx 8.9')
INSERT [dbo].[ProductMaster] ([pId], [bId], [pName]) VALUES (34, 3, N'Amazon Kindle')
INSERT [dbo].[ProductMaster] ([pId], [bId], [pName]) VALUES (35, 3, N'Amazon Fire Hd 7')
INSERT [dbo].[ProductMaster] ([pId], [bId], [pName]) VALUES (36, 3, N'Amazon Fire Hd 6')
INSERT [dbo].[ProductMaster] ([pId], [bId], [pName]) VALUES (37, 3, N'Amazon Prime Instant Video')
INSERT [dbo].[ProductMaster] ([pId], [bId], [pName]) VALUES (38, 4, N'Ipad Air')
INSERT [dbo].[ProductMaster] ([pId], [bId], [pName]) VALUES (39, 4, N'Ipad Mini')
INSERT [dbo].[ProductMaster] ([pId], [bId], [pName]) VALUES (40, 4, N'Apple Iphone 6')
INSERT [dbo].[ProductMaster] ([pId], [bId], [pName]) VALUES (41, 4, N'Iphone 6 Plus')
INSERT [dbo].[ProductMaster] ([pId], [bId], [pName]) VALUES (42, 4, N'Ipad Air 2')
INSERT [dbo].[ProductMaster] ([pId], [bId], [pName]) VALUES (43, 4, N'Ipad Mini 2')
INSERT [dbo].[ProductMaster] ([pId], [bId], [pName]) VALUES (44, 4, N'Ipad Mini Retina')
INSERT [dbo].[ProductMaster] ([pId], [bId], [pName]) VALUES (45, 4, N'Macbook Pro 13-inch With Retina Display')
INSERT [dbo].[ProductMaster] ([pId], [bId], [pName]) VALUES (46, 4, N'Iphone 6')
INSERT [dbo].[ProductMaster] ([pId], [bId], [pName]) VALUES (47, 4, N'Iphone 5s')
INSERT [dbo].[ProductMaster] ([pId], [bId], [pName]) VALUES (48, 4, N'Iphone 5')
INSERT [dbo].[ProductMaster] ([pId], [bId], [pName]) VALUES (49, 4, N'Apple Iphone 4s')
INSERT [dbo].[ProductMaster] ([pId], [bId], [pName]) VALUES (50, 4, N'Mac Book Air')
INSERT [dbo].[ProductMaster] ([pId], [bId], [pName]) VALUES (51, 4, N'Ios 7')
INSERT [dbo].[ProductMaster] ([pId], [bId], [pName]) VALUES (52, 4, N'13-inch Macbook Air')
INSERT [dbo].[ProductMaster] ([pId], [bId], [pName]) VALUES (53, 4, N'Imac')
INSERT [dbo].[ProductMaster] ([pId], [bId], [pName]) VALUES (54, 4, N'Apple Pay')
INSERT [dbo].[ProductMaster] ([pId], [bId], [pName]) VALUES (55, 5, N'Asus Vivobook X200ma')
INSERT [dbo].[ProductMaster] ([pId], [bId], [pName]) VALUES (56, 5, N'Asus G750jx')
INSERT [dbo].[ProductMaster] ([pId], [bId], [pName]) VALUES (57, 5, N'Asus Rog G750jz-xs72')
INSERT [dbo].[ProductMaster] ([pId], [bId], [pName]) VALUES (58, 5, N'Asus Rog G750jz')
INSERT [dbo].[ProductMaster] ([pId], [bId], [pName]) VALUES (59, 5, N'Asus Transformer Book T100')
INSERT [dbo].[ProductMaster] ([pId], [bId], [pName]) VALUES (60, 5, N'Asus Zenbook Prime Ux51vz-dh71')
INSERT [dbo].[ProductMaster] ([pId], [bId], [pName]) VALUES (61, 5, N'Asus N550jk')
INSERT [dbo].[ProductMaster] ([pId], [bId], [pName]) VALUES (62, 5, N'Asus Eee Pc 1215n')
INSERT [dbo].[ProductMaster] ([pId], [bId], [pName]) VALUES (63, 5, N'Asus Memopad 7 Me572c')
INSERT [dbo].[ProductMaster] ([pId], [bId], [pName]) VALUES (64, 5, N'Asus Transformer Book Tx300')
INSERT [dbo].[ProductMaster] ([pId], [bId], [pName]) VALUES (65, 5, N'Asus Eee Pc 4g')
INSERT [dbo].[ProductMaster] ([pId], [bId], [pName]) VALUES (66, 5, N'Asus Zenfone 5')
INSERT [dbo].[ProductMaster] ([pId], [bId], [pName]) VALUES (67, 5, N'Asus Vivobook S500ca Ds51t')
INSERT [dbo].[ProductMaster] ([pId], [bId], [pName]) VALUES (68, 5, N'Asus Chromebox')
INSERT [dbo].[ProductMaster] ([pId], [bId], [pName]) VALUES (69, 5, N'Asus Vivobook V551lb-db71t')
INSERT [dbo].[ProductMaster] ([pId], [bId], [pName]) VALUES (70, 5, N'Asus Transformer Pad Tf103')
INSERT [dbo].[ProductMaster] ([pId], [bId], [pName]) VALUES (71, 5, N'Asus V550ca')
INSERT [dbo].[ProductMaster] ([pId], [bId], [pName]) VALUES (72, 5, N'Asus Transformer Book Trio')
INSERT [dbo].[ProductMaster] ([pId], [bId], [pName]) VALUES (73, 5, N'Asus All-in-one Pc Et2700')
INSERT [dbo].[ProductMaster] ([pId], [bId], [pName]) VALUES (74, 5, N'Asus Gl551')
INSERT [dbo].[ProductMaster] ([pId], [bId], [pName]) VALUES (75, 5, N'Asus Transformer Book T200')
INSERT [dbo].[ProductMaster] ([pId], [bId], [pName]) VALUES (76, 5, N'Transformer Book T100 Chi')
INSERT [dbo].[ProductMaster] ([pId], [bId], [pName]) VALUES (77, 5, N'Asus Zenbook Ux301la')
INSERT [dbo].[ProductMaster] ([pId], [bId], [pName]) VALUES (78, 6, N'Blackberry Passport')
INSERT [dbo].[ProductMaster] ([pId], [bId], [pName]) VALUES (79, 6, N'Blackberry Classic')
INSERT [dbo].[ProductMaster] ([pId], [bId], [pName]) VALUES (80, 7, N'Bose Quietcomfort 25')
INSERT [dbo].[ProductMaster] ([pId], [bId], [pName]) VALUES (81, 7, N'Bose Soundlink Mini')
INSERT [dbo].[ProductMaster] ([pId], [bId], [pName]) VALUES (82, 7, N'Bose QuietComfort 20i')
INSERT [dbo].[ProductMaster] ([pId], [bId], [pName]) VALUES (83, 7, N'Bose Freestyle')
INSERT [dbo].[ProductMaster] ([pId], [bId], [pName]) VALUES (84, 7, N'Bose Soundtrue')
INSERT [dbo].[ProductMaster] ([pId], [bId], [pName]) VALUES (85, 8, N'Canon Ixus 230 Hs')
INSERT [dbo].[ProductMaster] ([pId], [bId], [pName]) VALUES (86, 8, N'Canon Ixus 220 Hs')
INSERT [dbo].[ProductMaster] ([pId], [bId], [pName]) VALUES (87, 8, N'Canon 550d')
INSERT [dbo].[ProductMaster] ([pId], [bId], [pName]) VALUES (88, 8, N'Canon 760d')
INSERT [dbo].[ProductMaster] ([pId], [bId], [pName]) VALUES (89, 8, N'Canon Powershot Sx700hs')
INSERT [dbo].[ProductMaster] ([pId], [bId], [pName]) VALUES (90, 8, N'Canon 5d Mark Iii')
INSERT [dbo].[ProductMaster] ([pId], [bId], [pName]) VALUES (91, 8, N'Canon 70d')
INSERT [dbo].[ProductMaster] ([pId], [bId], [pName]) VALUES (92, 8, N'Canon Powershot G7 X')
INSERT [dbo].[ProductMaster] ([pId], [bId], [pName]) VALUES (93, 9, N'Creative Sound Blaster Roar Sr20')
INSERT [dbo].[ProductMaster] ([pId], [bId], [pName]) VALUES (94, 9, N'Creative Sound Blasteraxx Axx 200')
INSERT [dbo].[ProductMaster] ([pId], [bId], [pName]) VALUES (95, 9, N'Creative Sound Blaster X7')
INSERT [dbo].[ProductMaster] ([pId], [bId], [pName]) VALUES (96, 9, N'Creative Aurvana Platinum')
INSERT [dbo].[ProductMaster] ([pId], [bId], [pName]) VALUES (97, 10, N'Dell Xps 15')
INSERT [dbo].[ProductMaster] ([pId], [bId], [pName]) VALUES (98, 10, N'Dell Chromebook 11')
INSERT [dbo].[ProductMaster] ([pId], [bId], [pName]) VALUES (99, 10, N'Dell Precision M4800')
INSERT [dbo].[ProductMaster] ([pId], [bId], [pName]) VALUES (100, 10, N'Dell Inspiron 15 7000')
GO
print 'Processed 100 total records'
INSERT [dbo].[ProductMaster] ([pId], [bId], [pName]) VALUES (101, 10, N'Dell Precision M6800')
INSERT [dbo].[ProductMaster] ([pId], [bId], [pName]) VALUES (102, 10, N'Dell Precision T7610')
INSERT [dbo].[ProductMaster] ([pId], [bId], [pName]) VALUES (103, 10, N'Dell Xps 13')
INSERT [dbo].[ProductMaster] ([pId], [bId], [pName]) VALUES (104, 10, N'Dell Venue 8')
INSERT [dbo].[ProductMaster] ([pId], [bId], [pName]) VALUES (105, 10, N'Dell Xps 11')
INSERT [dbo].[ProductMaster] ([pId], [bId], [pName]) VALUES (106, 11, N'Honor 4x')
INSERT [dbo].[ProductMaster] ([pId], [bId], [pName]) VALUES (107, 11, N'Honor Holly')
INSERT [dbo].[ProductMaster] ([pId], [bId], [pName]) VALUES (108, 11, N'Honor 6 Plus')
INSERT [dbo].[ProductMaster] ([pId], [bId], [pName]) VALUES (109, 12, N'Hp Spectre 13t-h200 X2')
INSERT [dbo].[ProductMaster] ([pId], [bId], [pName]) VALUES (110, 12, N'Hp Pavilion')
INSERT [dbo].[ProductMaster] ([pId], [bId], [pName]) VALUES (111, 12, N'Hp Zbook 17')
INSERT [dbo].[ProductMaster] ([pId], [bId], [pName]) VALUES (112, 12, N'Hp Pavilion X360')
INSERT [dbo].[ProductMaster] ([pId], [bId], [pName]) VALUES (113, 12, N'Hp Envy 15 X360')
INSERT [dbo].[ProductMaster] ([pId], [bId], [pName]) VALUES (114, 12, N'Hp Envy 15')
INSERT [dbo].[ProductMaster] ([pId], [bId], [pName]) VALUES (115, 12, N'Hp Envy Leap Motion')
INSERT [dbo].[ProductMaster] ([pId], [bId], [pName]) VALUES (116, 12, N'Hp Envy X2 2014')
INSERT [dbo].[ProductMaster] ([pId], [bId], [pName]) VALUES (117, 12, N'Hp Spectre X360')
INSERT [dbo].[ProductMaster] ([pId], [bId], [pName]) VALUES (118, 13, N'Htc One 2')
INSERT [dbo].[ProductMaster] ([pId], [bId], [pName]) VALUES (119, 13, N'Htc Desire Eye')
INSERT [dbo].[ProductMaster] ([pId], [bId], [pName]) VALUES (120, 13, N'Htc One M8')
INSERT [dbo].[ProductMaster] ([pId], [bId], [pName]) VALUES (121, 13, N'Htc One')
INSERT [dbo].[ProductMaster] ([pId], [bId], [pName]) VALUES (122, 13, N'Htc One E8')
INSERT [dbo].[ProductMaster] ([pId], [bId], [pName]) VALUES (123, 13, N'Htc One Mini')
INSERT [dbo].[ProductMaster] ([pId], [bId], [pName]) VALUES (124, 13, N'Htc Desire 500')
INSERT [dbo].[ProductMaster] ([pId], [bId], [pName]) VALUES (125, 13, N'Htc One Mini 2')
INSERT [dbo].[ProductMaster] ([pId], [bId], [pName]) VALUES (126, 13, N'Htc Desire 816')
INSERT [dbo].[ProductMaster] ([pId], [bId], [pName]) VALUES (127, 13, N'Htc Desire 610')
INSERT [dbo].[ProductMaster] ([pId], [bId], [pName]) VALUES (128, 13, N'Htc Desire 601')
INSERT [dbo].[ProductMaster] ([pId], [bId], [pName]) VALUES (129, 13, N'Htc One M9')
INSERT [dbo].[ProductMaster] ([pId], [bId], [pName]) VALUES (130, 13, N'Htc Desire 820')
INSERT [dbo].[ProductMaster] ([pId], [bId], [pName]) VALUES (131, 13, N'Htc Desire 510')
INSERT [dbo].[ProductMaster] ([pId], [bId], [pName]) VALUES (132, 13, N'Htc One M8 For Windows Phone')
INSERT [dbo].[ProductMaster] ([pId], [bId], [pName]) VALUES (133, 13, N'Htc Desire 620')
INSERT [dbo].[ProductMaster] ([pId], [bId], [pName]) VALUES (134, 14, N'Huawei Ascend G7')
INSERT [dbo].[ProductMaster] ([pId], [bId], [pName]) VALUES (135, 14, N'Honor 6')
INSERT [dbo].[ProductMaster] ([pId], [bId], [pName]) VALUES (136, 14, N'Huawei Ascend G620s')
INSERT [dbo].[ProductMaster] ([pId], [bId], [pName]) VALUES (137, 14, N'Huawei Ascend Mate 7')
INSERT [dbo].[ProductMaster] ([pId], [bId], [pName]) VALUES (138, 14, N'Huawei Honor 3x')
INSERT [dbo].[ProductMaster] ([pId], [bId], [pName]) VALUES (139, 14, N'Huawei Ascend Y530')
INSERT [dbo].[ProductMaster] ([pId], [bId], [pName]) VALUES (140, 14, N'Huawei Ascend P7')
INSERT [dbo].[ProductMaster] ([pId], [bId], [pName]) VALUES (141, 14, N'Huawei Ascend G6')
INSERT [dbo].[ProductMaster] ([pId], [bId], [pName]) VALUES (142, 14, N'Huawei P8 Max')
INSERT [dbo].[ProductMaster] ([pId], [bId], [pName]) VALUES (143, 15, N'Lenovo Flex 2 14')
INSERT [dbo].[ProductMaster] ([pId], [bId], [pName]) VALUES (144, 15, N'Lenovo Thinkpad Yoga 14')
INSERT [dbo].[ProductMaster] ([pId], [bId], [pName]) VALUES (145, 15, N'Lenovo Y50')
INSERT [dbo].[ProductMaster] ([pId], [bId], [pName]) VALUES (146, 15, N'Lenovo Miix 2 10')
INSERT [dbo].[ProductMaster] ([pId], [bId], [pName]) VALUES (147, 15, N'Lenovo Ideapad Yoga 2')
INSERT [dbo].[ProductMaster] ([pId], [bId], [pName]) VALUES (148, 15, N'Lenovo Miix 2')
INSERT [dbo].[ProductMaster] ([pId], [bId], [pName]) VALUES (149, 15, N'Lenovo Yoga 2')
INSERT [dbo].[ProductMaster] ([pId], [bId], [pName]) VALUES (150, 15, N'Lenovo N20p Chromebook')
INSERT [dbo].[ProductMaster] ([pId], [bId], [pName]) VALUES (151, 15, N'Lenovo Yoga 2 Pro')
INSERT [dbo].[ProductMaster] ([pId], [bId], [pName]) VALUES (152, 15, N'Lenovo Thinkpad Yoga')
INSERT [dbo].[ProductMaster] ([pId], [bId], [pName]) VALUES (153, 15, N'Thinkpad X1 Carbon')
INSERT [dbo].[ProductMaster] ([pId], [bId], [pName]) VALUES (154, 15, N'Lenovo Thinkpad X1 Carbon')
INSERT [dbo].[ProductMaster] ([pId], [bId], [pName]) VALUES (155, 15, N'Lenovo Miix 2 10-inch')
INSERT [dbo].[ProductMaster] ([pId], [bId], [pName]) VALUES (156, 15, N'Lenovo Ideapad Yoga 2')
INSERT [dbo].[ProductMaster] ([pId], [bId], [pName]) VALUES (157, 15, N'Lenovo Y40')
INSERT [dbo].[ProductMaster] ([pId], [bId], [pName]) VALUES (158, 15, N'Lenovo Thinkpad W540')
INSERT [dbo].[ProductMaster] ([pId], [bId], [pName]) VALUES (159, 15, N'Lenovo Ideapad Yoga 2 11')
INSERT [dbo].[ProductMaster] ([pId], [bId], [pName]) VALUES (160, 15, N'Lenovo Horizon 2s')
INSERT [dbo].[ProductMaster] ([pId], [bId], [pName]) VALUES (161, 15, N'Lenovo Thinkpad X240')
INSERT [dbo].[ProductMaster] ([pId], [bId], [pName]) VALUES (162, 15, N'Lenovo Yoga 3 Pro')
INSERT [dbo].[ProductMaster] ([pId], [bId], [pName]) VALUES (163, 15, N'Lenovo B50-30')
INSERT [dbo].[ProductMaster] ([pId], [bId], [pName]) VALUES (164, 15, N'Lenovo Y70 Touch')
INSERT [dbo].[ProductMaster] ([pId], [bId], [pName]) VALUES (165, 16, N'Lg G3')
INSERT [dbo].[ProductMaster] ([pId], [bId], [pName]) VALUES (166, 16, N'Lg G2')
INSERT [dbo].[ProductMaster] ([pId], [bId], [pName]) VALUES (167, 16, N'Lg G Flex 2')
INSERT [dbo].[ProductMaster] ([pId], [bId], [pName]) VALUES (168, 16, N'Lg G Flex')
INSERT [dbo].[ProductMaster] ([pId], [bId], [pName]) VALUES (169, 16, N'Lg G Watch')
INSERT [dbo].[ProductMaster] ([pId], [bId], [pName]) VALUES (170, 16, N'Lg G2 Mini')
INSERT [dbo].[ProductMaster] ([pId], [bId], [pName]) VALUES (171, 16, N'Lg G Pro 2')
INSERT [dbo].[ProductMaster] ([pId], [bId], [pName]) VALUES (172, 16, N'Lg G3 S')
INSERT [dbo].[ProductMaster] ([pId], [bId], [pName]) VALUES (173, 16, N'Lg Leon')
INSERT [dbo].[ProductMaster] ([pId], [bId], [pName]) VALUES (174, 17, N'Droid Turbo')
INSERT [dbo].[ProductMaster] ([pId], [bId], [pName]) VALUES (175, 17, N'Motorola Moto G')
INSERT [dbo].[ProductMaster] ([pId], [bId], [pName]) VALUES (176, 17, N'Moto G')
INSERT [dbo].[ProductMaster] ([pId], [bId], [pName]) VALUES (177, 17, N'Motorola Moto X')
INSERT [dbo].[ProductMaster] ([pId], [bId], [pName]) VALUES (178, 17, N'Motorola Moto E')
INSERT [dbo].[ProductMaster] ([pId], [bId], [pName]) VALUES (179, 17, N'Motorola Droid Razr')
INSERT [dbo].[ProductMaster] ([pId], [bId], [pName]) VALUES (180, 17, N'Moto X')
INSERT [dbo].[ProductMaster] ([pId], [bId], [pName]) VALUES (181, 17, N'Motorola Droid X')
INSERT [dbo].[ProductMaster] ([pId], [bId], [pName]) VALUES (182, 17, N'Motorola Droid 4')
INSERT [dbo].[ProductMaster] ([pId], [bId], [pName]) VALUES (183, 17, N'Motorola Droid Maxx')
INSERT [dbo].[ProductMaster] ([pId], [bId], [pName]) VALUES (184, 17, N'Motorola G')
INSERT [dbo].[ProductMaster] ([pId], [bId], [pName]) VALUES (185, 17, N'Motorola E')
INSERT [dbo].[ProductMaster] ([pId], [bId], [pName]) VALUES (186, 18, N'Lumia 525')
INSERT [dbo].[ProductMaster] ([pId], [bId], [pName]) VALUES (187, 18, N'Nokia Lumia 930')
INSERT [dbo].[ProductMaster] ([pId], [bId], [pName]) VALUES (188, 18, N'Lumia 520')
INSERT [dbo].[ProductMaster] ([pId], [bId], [pName]) VALUES (189, 18, N'Nokia Lumia 520')
INSERT [dbo].[ProductMaster] ([pId], [bId], [pName]) VALUES (190, 18, N'Nokia Lumia 635')
INSERT [dbo].[ProductMaster] ([pId], [bId], [pName]) VALUES (191, 18, N'Lumia 1020')
INSERT [dbo].[ProductMaster] ([pId], [bId], [pName]) VALUES (192, 18, N'Nokia Lumia 1520')
INSERT [dbo].[ProductMaster] ([pId], [bId], [pName]) VALUES (193, 18, N'Nokia Lumia 735')
INSERT [dbo].[ProductMaster] ([pId], [bId], [pName]) VALUES (194, 18, N'Nokia Lumia 1020')
INSERT [dbo].[ProductMaster] ([pId], [bId], [pName]) VALUES (195, 18, N'Nokia Lumia 2520')
INSERT [dbo].[ProductMaster] ([pId], [bId], [pName]) VALUES (196, 18, N'Nokia Lumia 830')
INSERT [dbo].[ProductMaster] ([pId], [bId], [pName]) VALUES (197, 18, N'Nokia Lumia 630')
INSERT [dbo].[ProductMaster] ([pId], [bId], [pName]) VALUES (198, 18, N'Nokia Lumia 530')
INSERT [dbo].[ProductMaster] ([pId], [bId], [pName]) VALUES (199, 18, N'Nokia X')
INSERT [dbo].[ProductMaster] ([pId], [bId], [pName]) VALUES (200, 18, N'Nokia 225')
INSERT [dbo].[ProductMaster] ([pId], [bId], [pName]) VALUES (201, 19, N'Oneplus One')
GO
print 'Processed 200 total records'
INSERT [dbo].[ProductMaster] ([pId], [bId], [pName]) VALUES (202, 19, N'Oneplus 2')
INSERT [dbo].[ProductMaster] ([pId], [bId], [pName]) VALUES (203, 20, N'Oppo N1')
INSERT [dbo].[ProductMaster] ([pId], [bId], [pName]) VALUES (204, 20, N'Oppo R819')
INSERT [dbo].[ProductMaster] ([pId], [bId], [pName]) VALUES (205, 20, N'Oppo N3')
INSERT [dbo].[ProductMaster] ([pId], [bId], [pName]) VALUES (206, 20, N'Oppo R5')
INSERT [dbo].[ProductMaster] ([pId], [bId], [pName]) VALUES (207, 21, N'Samsung Galaxy Note 4')
INSERT [dbo].[ProductMaster] ([pId], [bId], [pName]) VALUES (208, 21, N'Galaxy Note 4')
INSERT [dbo].[ProductMaster] ([pId], [bId], [pName]) VALUES (209, 21, N'Samsung Galaxy S5')
INSERT [dbo].[ProductMaster] ([pId], [bId], [pName]) VALUES (210, 21, N'Samsung Galaxy Note Edge')
INSERT [dbo].[ProductMaster] ([pId], [bId], [pName]) VALUES (211, 21, N'Samsung Galaxy Alpha')
INSERT [dbo].[ProductMaster] ([pId], [bId], [pName]) VALUES (212, 21, N'Samsung Galaxy S5 Mini')
INSERT [dbo].[ProductMaster] ([pId], [bId], [pName]) VALUES (213, 21, N'Samsung Galaxy Tab Pro 8.4')
INSERT [dbo].[ProductMaster] ([pId], [bId], [pName]) VALUES (214, 21, N'Samsung Galaxy S3')
INSERT [dbo].[ProductMaster] ([pId], [bId], [pName]) VALUES (215, 21, N'Samsung Galaxy S4')
INSERT [dbo].[ProductMaster] ([pId], [bId], [pName]) VALUES (216, 21, N'Galaxy S4')
INSERT [dbo].[ProductMaster] ([pId], [bId], [pName]) VALUES (217, 21, N'Samsung Gear S')
INSERT [dbo].[ProductMaster] ([pId], [bId], [pName]) VALUES (218, 21, N'Samsung Galaxy S6')
INSERT [dbo].[ProductMaster] ([pId], [bId], [pName]) VALUES (219, 21, N'Samsung Galaxy S6 Edge')
INSERT [dbo].[ProductMaster] ([pId], [bId], [pName]) VALUES (220, 21, N'Samsung Galaxy Young')
INSERT [dbo].[ProductMaster] ([pId], [bId], [pName]) VALUES (221, 21, N'Samsung Galaxy A5')
INSERT [dbo].[ProductMaster] ([pId], [bId], [pName]) VALUES (222, 21, N'Samsung Galaxy A7')
INSERT [dbo].[ProductMaster] ([pId], [bId], [pName]) VALUES (223, 21, N'Galaxy Note 5')
INSERT [dbo].[ProductMaster] ([pId], [bId], [pName]) VALUES (224, 22, N'Sony Xperia Ray')
INSERT [dbo].[ProductMaster] ([pId], [bId], [pName]) VALUES (225, 22, N'Sony Xperia Z1 Compact')
INSERT [dbo].[ProductMaster] ([pId], [bId], [pName]) VALUES (226, 22, N'Sony Xperia Z2')
INSERT [dbo].[ProductMaster] ([pId], [bId], [pName]) VALUES (227, 22, N'Sony Xperia Z3')
INSERT [dbo].[ProductMaster] ([pId], [bId], [pName]) VALUES (228, 22, N'Sony Xperia Z1s')
INSERT [dbo].[ProductMaster] ([pId], [bId], [pName]) VALUES (229, 22, N'Sony Xperia Z3 Compact')
INSERT [dbo].[ProductMaster] ([pId], [bId], [pName]) VALUES (230, 22, N'Sony Xperia Sp')
INSERT [dbo].[ProductMaster] ([pId], [bId], [pName]) VALUES (231, 22, N'Sony Xperia Z Ultra')
INSERT [dbo].[ProductMaster] ([pId], [bId], [pName]) VALUES (232, 22, N'Sony Xperia T3')
INSERT [dbo].[ProductMaster] ([pId], [bId], [pName]) VALUES (233, 22, N'Sony Xperia M4 Aqua')
INSERT [dbo].[ProductMaster] ([pId], [bId], [pName]) VALUES (234, 22, N'Sony Vaio Flip 13')
INSERT [dbo].[ProductMaster] ([pId], [bId], [pName]) VALUES (235, 22, N'Sony Vaio Pro 13')
INSERT [dbo].[ProductMaster] ([pId], [bId], [pName]) VALUES (236, 22, N'Sony Vaio Pro')
INSERT [dbo].[ProductMaster] ([pId], [bId], [pName]) VALUES (237, 22, N'Sony Vaio Fit 11a Review')
INSERT [dbo].[ProductMaster] ([pId], [bId], [pName]) VALUES (238, 23, N'Toshiba Chromebook 2')
INSERT [dbo].[ProductMaster] ([pId], [bId], [pName]) VALUES (239, 23, N'Toshiba Satellite Nb15t Review')
INSERT [dbo].[ProductMaster] ([pId], [bId], [pName]) VALUES (240, 23, N'Toshiba Chromebook')
INSERT [dbo].[ProductMaster] ([pId], [bId], [pName]) VALUES (241, 23, N'Toshiba Satellite Radius')
INSERT [dbo].[ProductMaster] ([pId], [bId], [pName]) VALUES (242, 23, N'Toshiba Satellite M50-a-11c')
INSERT [dbo].[ProductMaster] ([pId], [bId], [pName]) VALUES (243, 23, N'Toshiba Satellite S50d-a-10g')
INSERT [dbo].[ProductMaster] ([pId], [bId], [pName]) VALUES (244, 23, N'Toshiba Satellite S50d')
INSERT [dbo].[ProductMaster] ([pId], [bId], [pName]) VALUES (245, 23, N'Toshiba Satellite L50-b-1dv')
INSERT [dbo].[ProductMaster] ([pId], [bId], [pName]) VALUES (246, 23, N'Toshiba Satellite L70-b-11c')
INSERT [dbo].[ProductMaster] ([pId], [bId], [pName]) VALUES (247, 23, N'Toshiba Satellite Pro R50-b-12u')
INSERT [dbo].[ProductMaster] ([pId], [bId], [pName]) VALUES (248, 23, N'Toshiba Kira')
INSERT [dbo].[ProductMaster] ([pId], [bId], [pName]) VALUES (249, 23, N'Toshiba Satellite')
INSERT [dbo].[ProductMaster] ([pId], [bId], [pName]) VALUES (250, 23, N'Toshiba Satellite Click 2')
INSERT [dbo].[ProductMaster] ([pId], [bId], [pName]) VALUES (251, 23, N'Toshiba Satellite P55t')
INSERT [dbo].[ProductMaster] ([pId], [bId], [pName]) VALUES (252, 23, N'Toshiba Satellite P55t 4k Ultra Hd Review')
INSERT [dbo].[ProductMaster] ([pId], [bId], [pName]) VALUES (253, 23, N'Toshiba Satellite P55t 4k Ultra Hd')
INSERT [dbo].[ProductMaster] ([pId], [bId], [pName]) VALUES (254, 23, N'Toshiba Satellite Click Mini')
INSERT [dbo].[ProductMaster] ([pId], [bId], [pName]) VALUES (255, 23, N'Toshiba Satellite C')
INSERT [dbo].[ProductMaster] ([pId], [bId], [pName]) VALUES (256, 23, N'Toshiba Satellite L')
INSERT [dbo].[ProductMaster] ([pId], [bId], [pName]) VALUES (257, 24, N'Vodafone Smart 4 Mini')
INSERT [dbo].[ProductMaster] ([pId], [bId], [pName]) VALUES (258, 24, N'Vodafone Smart 4 Power')
INSERT [dbo].[ProductMaster] ([pId], [bId], [pName]) VALUES (259, 25, N'Xiaomi Mi3')
INSERT [dbo].[ProductMaster] ([pId], [bId], [pName]) VALUES (260, 25, N'Xiaomi Mi 3')
INSERT [dbo].[ProductMaster] ([pId], [bId], [pName]) VALUES (261, 25, N'Xiaomi Redmi')
INSERT [dbo].[ProductMaster] ([pId], [bId], [pName]) VALUES (262, 25, N'Xiaomi Mi4')
SET IDENTITY_INSERT [dbo].[ProductMaster] OFF
/****** Object:  StoredProcedure [dbo].[InsertUser]    Script Date: 08/21/2015 13:15:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[InsertUser]
@id int=null,
@Username nvarchar(50),
@Password nvarchar(50),
@FName nvarchar(50),
@Mname nvarchar(50),
@Lname nvarchar(50),
@Address nvarchar(500),
@Email nvarchar(50),
@Phone nchar(10),
@output varchar(100) OUTPUT	
AS
if not exists(select id from dbo.Users where Username = @Username)
Begin
	insert into Users(Username,Password,FName,Mname,Lname,Address,Email,Phone)values(@Username,@Password,@FName,@Mname,@Lname,@Address,@Email,@Phone)
end
else if EXISTS (select id from dbo.Users where id = @id)
BEGIN
	update Users set FName=@FName,Mname=@Mname,Lname=@Lname,Address=@Address,Email=@Email,Phone=@Phone where id=@id
END
else
begin
set @output='User Already Exist'
end
GO
