USE [Laptop]
GO
/****** Object:  Table [dbo].[Admin]    Script Date: 15/03/2021 10:37:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Admin](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Email] [varchar](50) NULL,
	[Password] [varchar](16) NULL,
	[created_at] [datetime] NULL,
	[updated_at] [datetime] NULL,
	[Name] [nvarchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Bill_Detail]    Script Date: 15/03/2021 10:37:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Bill_Detail](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[ID_Bill] [int] NULL,
	[ID_Product_Color] [int] NULL,
	[Quantity] [int] NULL,
	[created_at] [datetime] NULL,
	[updated_at] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Bills]    Script Date: 15/03/2021 10:37:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Bills](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[ID_Customer] [int] NULL,
	[Date_order] [datetime] NULL,
	[Address] [nvarchar](200) NULL,
	[created_at] [datetime] NULL,
	[updated_at] [datetime] NULL,
	[Phone_Number] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Brand]    Script Date: 15/03/2021 10:37:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Brand](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](30) NULL,
	[Description] [nvarchar](200) NULL,
	[Image] [nvarchar](200) NULL,
	[created_at] [datetime] NULL,
	[updated_at] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Cart]    Script Date: 15/03/2021 10:37:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Cart](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[ID_Product_Color] [int] NULL,
	[ID_Customer] [int] NULL,
	[Quantity_Purchased] [int] NULL,
	[created_at] [datetime] NULL,
	[updated_at] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Colorr]    Script Date: 15/03/2021 10:37:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Colorr](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Color] [nvarchar](20) NULL,
	[Image] [nvarchar](200) NULL,
	[created_at] [datetime] NULL,
	[updated_at] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Customer]    Script Date: 15/03/2021 10:37:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Customer](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Email] [varchar](50) NOT NULL,
	[Password] [varchar](16) NOT NULL,
	[Name] [nvarchar](100) NULL,
	[Gender] [nvarchar](4) NULL,
	[Address] [nvarchar](100) NULL,
	[Phone_Number] [int] NULL,
	[Note] [nvarchar](200) NULL,
	[Status] [varchar](6) NULL,
	[created_at] [datetime] NULL,
	[updated_at] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Favorites_list]    Script Date: 15/03/2021 10:37:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Favorites_list](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[ID_Product] [int] NULL,
	[ID_Customer] [int] NULL,
	[created_at] [datetime] NULL,
	[updated_at] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[New_Image]    Script Date: 15/03/2021 10:37:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[New_Image](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[ID_New] [int] NULL,
	[Image] [nvarchar](200) NULL,
	[created_at] [datetime] NULL,
	[updated_at] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[News]    Script Date: 15/03/2021 10:37:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[News](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Title] [nvarchar](300) NULL,
	[Content] [ntext] NULL,
	[Image] [nvarchar](200) NULL,
	[created_at] [datetime] NULL,
	[updated_at] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Product]    Script Date: 15/03/2021 10:37:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Product](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NULL,
	[ID_Brand] [int] NULL,
	[Group_Pro] [nvarchar](50) NULL,
	[Description] [nvarchar](200) NULL,
	[Price] [money] NULL,
	[Promotion_Price] [money] NULL,
	[Image] [nvarchar](200) NULL,
	[CPU] [nvarchar](25) NULL,
	[GPU] [nvarchar](25) NULL,
	[RAM] [nvarchar](25) NULL,
	[ROM] [nvarchar](25) NULL,
	[Monitor] [nvarchar](25) NULL,
	[Operating] [varchar](15) NULL,
	[Warranty] [nvarchar](10) NULL,
	[created_at] [datetime] NULL,
	[updated_at] [datetime] NULL,
	[Pin] [nvarchar](50) NULL,
	[Size] [nvarchar](50) NULL,
	[Weight] [nchar](10) NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Product_Color]    Script Date: 15/03/2021 10:37:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Product_Color](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[ID_Color] [int] NULL,
	[ID_Product] [int] NULL,
	[Quantity] [int] NULL,
	[created_at] [datetime] NULL,
	[updated_at] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Product_Image]    Script Date: 15/03/2021 10:37:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Product_Image](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[ID_Product] [int] NULL,
	[Image] [nvarchar](200) NULL,
	[created_at] [datetime] NULL,
	[updated_at] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Slide]    Script Date: 15/03/2021 10:37:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Slide](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Image] [nvarchar](200) NULL,
	[Title] [nvarchar](100) NULL,
	[Content] [nvarchar](500) NULL,
	[Action] [nvarchar](50) NULL,
	[Discount] [int] NULL,
	[created_at] [datetime] NULL,
	[updated_at] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Admin] ON 

INSERT [dbo].[Admin] ([ID], [Email], [Password], [created_at], [updated_at], [Name]) VALUES (1, N'dotheky1999@gmail.com', N'123456', NULL, NULL, N'Đỗ Thế Kỷ')
INSERT [dbo].[Admin] ([ID], [Email], [Password], [created_at], [updated_at], [Name]) VALUES (2, N'dotheky@gmail.com', N'123456', NULL, NULL, N'Abc')
SET IDENTITY_INSERT [dbo].[Admin] OFF
GO
SET IDENTITY_INSERT [dbo].[Bill_Detail] ON 

INSERT [dbo].[Bill_Detail] ([ID], [ID_Bill], [ID_Product_Color], [Quantity], [created_at], [updated_at]) VALUES (1, 1, 3, 2, NULL, NULL)
INSERT [dbo].[Bill_Detail] ([ID], [ID_Bill], [ID_Product_Color], [Quantity], [created_at], [updated_at]) VALUES (2, 1, 5, 1, NULL, NULL)
INSERT [dbo].[Bill_Detail] ([ID], [ID_Bill], [ID_Product_Color], [Quantity], [created_at], [updated_at]) VALUES (3, 2, 28, 3, NULL, NULL)
INSERT [dbo].[Bill_Detail] ([ID], [ID_Bill], [ID_Product_Color], [Quantity], [created_at], [updated_at]) VALUES (4, 3, 14, 2, NULL, NULL)
INSERT [dbo].[Bill_Detail] ([ID], [ID_Bill], [ID_Product_Color], [Quantity], [created_at], [updated_at]) VALUES (5, 4, 14, 2, NULL, NULL)
INSERT [dbo].[Bill_Detail] ([ID], [ID_Bill], [ID_Product_Color], [Quantity], [created_at], [updated_at]) VALUES (6, 5, 27, 1, NULL, NULL)
INSERT [dbo].[Bill_Detail] ([ID], [ID_Bill], [ID_Product_Color], [Quantity], [created_at], [updated_at]) VALUES (7, 6, 27, 1, NULL, NULL)
INSERT [dbo].[Bill_Detail] ([ID], [ID_Bill], [ID_Product_Color], [Quantity], [created_at], [updated_at]) VALUES (8, 7, 16, 1, NULL, NULL)
INSERT [dbo].[Bill_Detail] ([ID], [ID_Bill], [ID_Product_Color], [Quantity], [created_at], [updated_at]) VALUES (9, 8, 16, 1, NULL, NULL)
INSERT [dbo].[Bill_Detail] ([ID], [ID_Bill], [ID_Product_Color], [Quantity], [created_at], [updated_at]) VALUES (10, 9, 15, 2, NULL, NULL)
INSERT [dbo].[Bill_Detail] ([ID], [ID_Bill], [ID_Product_Color], [Quantity], [created_at], [updated_at]) VALUES (11, 10, 15, 2, NULL, NULL)
INSERT [dbo].[Bill_Detail] ([ID], [ID_Bill], [ID_Product_Color], [Quantity], [created_at], [updated_at]) VALUES (12, 11, 18, 1, NULL, NULL)
INSERT [dbo].[Bill_Detail] ([ID], [ID_Bill], [ID_Product_Color], [Quantity], [created_at], [updated_at]) VALUES (13, 12, 18, 1, NULL, NULL)
INSERT [dbo].[Bill_Detail] ([ID], [ID_Bill], [ID_Product_Color], [Quantity], [created_at], [updated_at]) VALUES (14, 13, 27, 1, NULL, NULL)
INSERT [dbo].[Bill_Detail] ([ID], [ID_Bill], [ID_Product_Color], [Quantity], [created_at], [updated_at]) VALUES (15, 14, 29, 1, NULL, NULL)
INSERT [dbo].[Bill_Detail] ([ID], [ID_Bill], [ID_Product_Color], [Quantity], [created_at], [updated_at]) VALUES (16, 15, 7, 3, NULL, NULL)
INSERT [dbo].[Bill_Detail] ([ID], [ID_Bill], [ID_Product_Color], [Quantity], [created_at], [updated_at]) VALUES (17, 16, 26, 3, NULL, NULL)
INSERT [dbo].[Bill_Detail] ([ID], [ID_Bill], [ID_Product_Color], [Quantity], [created_at], [updated_at]) VALUES (18, 17, 27, 1, NULL, NULL)
INSERT [dbo].[Bill_Detail] ([ID], [ID_Bill], [ID_Product_Color], [Quantity], [created_at], [updated_at]) VALUES (19, 18, 27, 1, NULL, NULL)
INSERT [dbo].[Bill_Detail] ([ID], [ID_Bill], [ID_Product_Color], [Quantity], [created_at], [updated_at]) VALUES (20, 19, 26, 1, NULL, NULL)
INSERT [dbo].[Bill_Detail] ([ID], [ID_Bill], [ID_Product_Color], [Quantity], [created_at], [updated_at]) VALUES (21, 20, 26, 1, NULL, NULL)
INSERT [dbo].[Bill_Detail] ([ID], [ID_Bill], [ID_Product_Color], [Quantity], [created_at], [updated_at]) VALUES (22, 21, 27, 1, NULL, NULL)
INSERT [dbo].[Bill_Detail] ([ID], [ID_Bill], [ID_Product_Color], [Quantity], [created_at], [updated_at]) VALUES (23, 22, 29, 1, NULL, NULL)
INSERT [dbo].[Bill_Detail] ([ID], [ID_Bill], [ID_Product_Color], [Quantity], [created_at], [updated_at]) VALUES (24, 23, 29, 1, NULL, NULL)
INSERT [dbo].[Bill_Detail] ([ID], [ID_Bill], [ID_Product_Color], [Quantity], [created_at], [updated_at]) VALUES (25, 24, 27, 1, NULL, NULL)
INSERT [dbo].[Bill_Detail] ([ID], [ID_Bill], [ID_Product_Color], [Quantity], [created_at], [updated_at]) VALUES (26, 25, 27, 1, NULL, NULL)
INSERT [dbo].[Bill_Detail] ([ID], [ID_Bill], [ID_Product_Color], [Quantity], [created_at], [updated_at]) VALUES (27, 26, 18, 1, NULL, NULL)
INSERT [dbo].[Bill_Detail] ([ID], [ID_Bill], [ID_Product_Color], [Quantity], [created_at], [updated_at]) VALUES (28, 27, 29, 1, NULL, NULL)
INSERT [dbo].[Bill_Detail] ([ID], [ID_Bill], [ID_Product_Color], [Quantity], [created_at], [updated_at]) VALUES (29, 28, 9, 2, NULL, NULL)
INSERT [dbo].[Bill_Detail] ([ID], [ID_Bill], [ID_Product_Color], [Quantity], [created_at], [updated_at]) VALUES (30, 29, 26, 2, NULL, NULL)
SET IDENTITY_INSERT [dbo].[Bill_Detail] OFF
GO
SET IDENTITY_INSERT [dbo].[Bills] ON 

INSERT [dbo].[Bills] ([ID], [ID_Customer], [Date_order], [Address], [created_at], [updated_at], [Phone_Number]) VALUES (1, 1, CAST(N'2021-02-01T00:00:00.000' AS DateTime), N'Nam Định', NULL, NULL, 965149500)
INSERT [dbo].[Bills] ([ID], [ID_Customer], [Date_order], [Address], [created_at], [updated_at], [Phone_Number]) VALUES (2, 1, CAST(N'2021-03-01T08:48:20.343' AS DateTime), N'Giao Thủy-Nam Định', NULL, NULL, 965149500)
INSERT [dbo].[Bills] ([ID], [ID_Customer], [Date_order], [Address], [created_at], [updated_at], [Phone_Number]) VALUES (3, 1, CAST(N'2021-03-01T08:48:36.443' AS DateTime), N'Giao Thủy-Nam Định', NULL, NULL, 965149500)
INSERT [dbo].[Bills] ([ID], [ID_Customer], [Date_order], [Address], [created_at], [updated_at], [Phone_Number]) VALUES (4, 1, CAST(N'2021-03-01T08:50:52.313' AS DateTime), N'Giao Thủy-Nam Định', NULL, NULL, 965149500)
INSERT [dbo].[Bills] ([ID], [ID_Customer], [Date_order], [Address], [created_at], [updated_at], [Phone_Number]) VALUES (5, 1, CAST(N'2021-03-01T08:51:16.550' AS DateTime), N'Giao Thủy-Nam Định', NULL, NULL, 965149500)
INSERT [dbo].[Bills] ([ID], [ID_Customer], [Date_order], [Address], [created_at], [updated_at], [Phone_Number]) VALUES (6, 1, CAST(N'2021-03-01T08:51:52.270' AS DateTime), N'Giao Thủy-Nam Định', NULL, NULL, 965149500)
INSERT [dbo].[Bills] ([ID], [ID_Customer], [Date_order], [Address], [created_at], [updated_at], [Phone_Number]) VALUES (7, 1, CAST(N'2021-03-01T08:55:40.753' AS DateTime), N'Giao Thủy-Nam Định', NULL, NULL, 965149500)
INSERT [dbo].[Bills] ([ID], [ID_Customer], [Date_order], [Address], [created_at], [updated_at], [Phone_Number]) VALUES (8, 1, CAST(N'2021-03-01T08:55:45.580' AS DateTime), N'Giao Thủy-Nam Định', NULL, NULL, 965149500)
INSERT [dbo].[Bills] ([ID], [ID_Customer], [Date_order], [Address], [created_at], [updated_at], [Phone_Number]) VALUES (9, 1, CAST(N'2021-03-01T08:56:51.733' AS DateTime), N'Giao An-Giao Thủy-Nam Định', NULL, NULL, 965149500)
INSERT [dbo].[Bills] ([ID], [ID_Customer], [Date_order], [Address], [created_at], [updated_at], [Phone_Number]) VALUES (10, 1, CAST(N'2021-03-01T08:56:55.240' AS DateTime), N'Giao An-Giao Thủy-Nam Định', NULL, NULL, 965149500)
INSERT [dbo].[Bills] ([ID], [ID_Customer], [Date_order], [Address], [created_at], [updated_at], [Phone_Number]) VALUES (11, 1, CAST(N'2021-03-01T08:58:22.050' AS DateTime), N'Giao Thủy-Nam Định', NULL, NULL, 965149500)
INSERT [dbo].[Bills] ([ID], [ID_Customer], [Date_order], [Address], [created_at], [updated_at], [Phone_Number]) VALUES (12, 1, CAST(N'2021-03-01T08:58:25.963' AS DateTime), N'Giao Thủy-Nam Định', NULL, NULL, 965149500)
INSERT [dbo].[Bills] ([ID], [ID_Customer], [Date_order], [Address], [created_at], [updated_at], [Phone_Number]) VALUES (13, 1, CAST(N'2021-03-01T08:59:52.557' AS DateTime), N'GA-Giao Thủy-Nam Định', NULL, NULL, 965149500)
INSERT [dbo].[Bills] ([ID], [ID_Customer], [Date_order], [Address], [created_at], [updated_at], [Phone_Number]) VALUES (14, 1, CAST(N'2021-03-01T09:01:26.227' AS DateTime), N'Giao Thủy-Nam Định', NULL, NULL, 965149500)
INSERT [dbo].[Bills] ([ID], [ID_Customer], [Date_order], [Address], [created_at], [updated_at], [Phone_Number]) VALUES (15, 1, CAST(N'2021-03-01T09:06:20.703' AS DateTime), N'Giao An-Giao Thủy-Nam Định', NULL, NULL, 965149500)
INSERT [dbo].[Bills] ([ID], [ID_Customer], [Date_order], [Address], [created_at], [updated_at], [Phone_Number]) VALUES (16, 1, CAST(N'2021-03-01T09:09:15.327' AS DateTime), N'Giao An-Giao Thủy-Nam Định', NULL, NULL, 965149500)
INSERT [dbo].[Bills] ([ID], [ID_Customer], [Date_order], [Address], [created_at], [updated_at], [Phone_Number]) VALUES (17, 1, CAST(N'2021-03-01T09:10:22.673' AS DateTime), N'Giao Thủy-Nam Định', NULL, NULL, 965149500)
INSERT [dbo].[Bills] ([ID], [ID_Customer], [Date_order], [Address], [created_at], [updated_at], [Phone_Number]) VALUES (18, 1, CAST(N'2021-03-01T09:11:06.070' AS DateTime), N'Giao Thủy-Nam Định', NULL, NULL, 965149500)
INSERT [dbo].[Bills] ([ID], [ID_Customer], [Date_order], [Address], [created_at], [updated_at], [Phone_Number]) VALUES (19, 1, CAST(N'2021-03-01T09:12:07.960' AS DateTime), N'Giao Thủy-Nam Định', NULL, NULL, 965149500)
INSERT [dbo].[Bills] ([ID], [ID_Customer], [Date_order], [Address], [created_at], [updated_at], [Phone_Number]) VALUES (20, 1, CAST(N'2021-03-01T09:13:26.400' AS DateTime), N'Giao Thủy-Nam Định', NULL, NULL, 965149500)
INSERT [dbo].[Bills] ([ID], [ID_Customer], [Date_order], [Address], [created_at], [updated_at], [Phone_Number]) VALUES (21, 1, CAST(N'2021-03-01T09:24:54.023' AS DateTime), N'Giao Thủy-Nam Định', NULL, NULL, 965149500)
INSERT [dbo].[Bills] ([ID], [ID_Customer], [Date_order], [Address], [created_at], [updated_at], [Phone_Number]) VALUES (22, 1, CAST(N'2021-03-02T08:35:06.483' AS DateTime), N'Giao Thủy-Nam Định', NULL, NULL, 965149500)
INSERT [dbo].[Bills] ([ID], [ID_Customer], [Date_order], [Address], [created_at], [updated_at], [Phone_Number]) VALUES (23, 1, CAST(N'2021-03-02T08:51:01.360' AS DateTime), N'Giao Thủy-Nam Định', NULL, NULL, 965149500)
INSERT [dbo].[Bills] ([ID], [ID_Customer], [Date_order], [Address], [created_at], [updated_at], [Phone_Number]) VALUES (24, 1, CAST(N'2021-03-02T09:19:43.803' AS DateTime), N'Giao Thủy-Nam Định', NULL, NULL, 965149500)
INSERT [dbo].[Bills] ([ID], [ID_Customer], [Date_order], [Address], [created_at], [updated_at], [Phone_Number]) VALUES (25, 1, CAST(N'2021-03-02T09:36:48.500' AS DateTime), N'Giao Thủy-Nam Định', NULL, NULL, 965149500)
INSERT [dbo].[Bills] ([ID], [ID_Customer], [Date_order], [Address], [created_at], [updated_at], [Phone_Number]) VALUES (26, 1, CAST(N'2021-03-02T09:37:00.460' AS DateTime), N'Giao Thủy-Nam Định', NULL, NULL, 965149500)
INSERT [dbo].[Bills] ([ID], [ID_Customer], [Date_order], [Address], [created_at], [updated_at], [Phone_Number]) VALUES (27, 1, CAST(N'2021-03-09T10:41:03.953' AS DateTime), N'Giao Thủy-Nam Định', NULL, NULL, 965149500)
INSERT [dbo].[Bills] ([ID], [ID_Customer], [Date_order], [Address], [created_at], [updated_at], [Phone_Number]) VALUES (28, 1, CAST(N'2021-03-10T09:58:14.303' AS DateTime), N'Xóm 12-Giao An-Giao Thủy-Nam Định', NULL, NULL, 965149500)
INSERT [dbo].[Bills] ([ID], [ID_Customer], [Date_order], [Address], [created_at], [updated_at], [Phone_Number]) VALUES (29, 1, CAST(N'2021-03-10T14:02:28.013' AS DateTime), N'Giao An-Giao Thủy-Nam Định', NULL, NULL, 965149500)
SET IDENTITY_INSERT [dbo].[Bills] OFF
GO
SET IDENTITY_INSERT [dbo].[Brand] ON 

INSERT [dbo].[Brand] ([ID], [Name], [Description], [Image], [created_at], [updated_at]) VALUES (1, N'Acer', N'Hãng máy tính Acer', N'/Content/Brand/Image/acer.png', CAST(N'2021-01-28T10:07:41.267' AS DateTime), NULL)
INSERT [dbo].[Brand] ([ID], [Name], [Description], [Image], [created_at], [updated_at]) VALUES (2, N'Dell', N'Hãng máy tính Dell', N'/Content/Brand/Image/Dell.png', CAST(N'2021-01-28T10:07:51.647' AS DateTime), NULL)
INSERT [dbo].[Brand] ([ID], [Name], [Description], [Image], [created_at], [updated_at]) VALUES (3, N'MSI', N'Hãng máy tính MSI', N'/Content/Brand/Image/msi.png', CAST(N'2021-01-28T10:08:01.807' AS DateTime), NULL)
INSERT [dbo].[Brand] ([ID], [Name], [Description], [Image], [created_at], [updated_at]) VALUES (4, N'Asus', N'Hãng máy tính Asus', N'/Content/Brand/Image/asus.jpg', CAST(N'2021-01-28T10:08:19.217' AS DateTime), NULL)
INSERT [dbo].[Brand] ([ID], [Name], [Description], [Image], [created_at], [updated_at]) VALUES (5, N'Lenovo', N'Hãng máy tính Lenovo', N'/Content/Brand/Image/lenovo.jpg', CAST(N'2021-01-28T10:08:38.017' AS DateTime), NULL)
INSERT [dbo].[Brand] ([ID], [Name], [Description], [Image], [created_at], [updated_at]) VALUES (6, N'HP', N'Hãng máy tính HP', N'/Content/Brand/Image/HP.png', CAST(N'2021-01-28T10:23:10.123' AS DateTime), NULL)
INSERT [dbo].[Brand] ([ID], [Name], [Description], [Image], [created_at], [updated_at]) VALUES (7, N'Macbook', N'Hãng máy tính của Apple', N'/Content/Brand/Image/mac.png', CAST(N'2021-01-29T09:24:50.520' AS DateTime), NULL)
SET IDENTITY_INSERT [dbo].[Brand] OFF
GO
SET IDENTITY_INSERT [dbo].[Cart] ON 

INSERT [dbo].[Cart] ([ID], [ID_Product_Color], [ID_Customer], [Quantity_Purchased], [created_at], [updated_at]) VALUES (2, 27, 1, 1, CAST(N'2021-02-23T13:47:27.143' AS DateTime), NULL)
INSERT [dbo].[Cart] ([ID], [ID_Product_Color], [ID_Customer], [Quantity_Purchased], [created_at], [updated_at]) VALUES (6, 26, 1, 4, CAST(N'2021-03-09T11:16:32.600' AS DateTime), NULL)
INSERT [dbo].[Cart] ([ID], [ID_Product_Color], [ID_Customer], [Quantity_Purchased], [created_at], [updated_at]) VALUES (7, 22, 1, 1, CAST(N'2021-02-23T13:47:24.160' AS DateTime), NULL)
INSERT [dbo].[Cart] ([ID], [ID_Product_Color], [ID_Customer], [Quantity_Purchased], [created_at], [updated_at]) VALUES (8, 7, 1, 3, CAST(N'2021-03-09T11:05:23.007' AS DateTime), NULL)
SET IDENTITY_INSERT [dbo].[Cart] OFF
GO
SET IDENTITY_INSERT [dbo].[Colorr] ON 

INSERT [dbo].[Colorr] ([ID], [Color], [Image], [created_at], [updated_at]) VALUES (1, N'Xanh biển', N'', CAST(N'2021-01-31T17:03:56.177' AS DateTime), CAST(N'2021-01-31T17:05:10.900' AS DateTime))
INSERT [dbo].[Colorr] ([ID], [Color], [Image], [created_at], [updated_at]) VALUES (2, N'Đỏ', N'', CAST(N'2021-01-31T17:04:06.430' AS DateTime), NULL)
INSERT [dbo].[Colorr] ([ID], [Color], [Image], [created_at], [updated_at]) VALUES (3, N'Gold', N'', CAST(N'2021-01-31T17:04:15.203' AS DateTime), NULL)
INSERT [dbo].[Colorr] ([ID], [Color], [Image], [created_at], [updated_at]) VALUES (4, N'Bạc', N'', CAST(N'2021-01-31T17:04:21.637' AS DateTime), NULL)
INSERT [dbo].[Colorr] ([ID], [Color], [Image], [created_at], [updated_at]) VALUES (5, N'Trắng', N'', CAST(N'2021-01-31T17:04:26.507' AS DateTime), NULL)
INSERT [dbo].[Colorr] ([ID], [Color], [Image], [created_at], [updated_at]) VALUES (6, N'Vàng', N'', CAST(N'2021-01-31T17:04:34.403' AS DateTime), NULL)
INSERT [dbo].[Colorr] ([ID], [Color], [Image], [created_at], [updated_at]) VALUES (7, N'Hồng', N'', CAST(N'2021-01-31T17:04:39.000' AS DateTime), NULL)
INSERT [dbo].[Colorr] ([ID], [Color], [Image], [created_at], [updated_at]) VALUES (8, N'Đen', N'', CAST(N'2021-01-31T17:04:42.723' AS DateTime), NULL)
INSERT [dbo].[Colorr] ([ID], [Color], [Image], [created_at], [updated_at]) VALUES (9, N'Xanh lá', N'', CAST(N'2021-01-31T17:05:15.580' AS DateTime), NULL)
INSERT [dbo].[Colorr] ([ID], [Color], [Image], [created_at], [updated_at]) VALUES (10, N'Đỏ đen', N'', CAST(N'2021-01-31T17:06:21.920' AS DateTime), NULL)
INSERT [dbo].[Colorr] ([ID], [Color], [Image], [created_at], [updated_at]) VALUES (11, N'Xanh đen', N'', CAST(N'2021-01-31T17:08:05.217' AS DateTime), NULL)
SET IDENTITY_INSERT [dbo].[Colorr] OFF
GO
SET IDENTITY_INSERT [dbo].[Customer] ON 

INSERT [dbo].[Customer] ([ID], [Email], [Password], [Name], [Gender], [Address], [Phone_Number], [Note], [Status], [created_at], [updated_at]) VALUES (1, N'dotheky1999@gmail.com', N'123456', N'Đỗ Thế Kỷ', N'Nam', N'Giao An-Giao Thủy-Nam Định', 965149500, NULL, N'Active', NULL, CAST(N'2021-03-10T13:54:25.007' AS DateTime))
INSERT [dbo].[Customer] ([ID], [Email], [Password], [Name], [Gender], [Address], [Phone_Number], [Note], [Status], [created_at], [updated_at]) VALUES (2, N'dotheky@gmail.com', N'123456', N'Đỗ Thế Kỷ', N'Nam', N'Nam Định', 965149500, NULL, N'Lock', NULL, CAST(N'2021-01-31T22:48:55.807' AS DateTime))
INSERT [dbo].[Customer] ([ID], [Email], [Password], [Name], [Gender], [Address], [Phone_Number], [Note], [Status], [created_at], [updated_at]) VALUES (6, N'dotheky99@gmail.com', N'123456', N'Đỗ Thế Kỷ', N'Nam', N'Nam Từ Liêm - Hà Nội', 965149500, NULL, N'Active', CAST(N'2021-02-01T16:02:44.263' AS DateTime), CAST(N'2021-02-01T17:06:12.870' AS DateTime))
INSERT [dbo].[Customer] ([ID], [Email], [Password], [Name], [Gender], [Address], [Phone_Number], [Note], [Status], [created_at], [updated_at]) VALUES (13, N'dotheky9@gmail.com', N'123456', N'Đỗ Thế Kỷ', N'Nam', N' Hà Nội', 965149500, NULL, N'Active', CAST(N'2021-02-01T22:12:55.373' AS DateTime), CAST(N'2021-02-01T22:13:24.380' AS DateTime))
INSERT [dbo].[Customer] ([ID], [Email], [Password], [Name], [Gender], [Address], [Phone_Number], [Note], [Status], [created_at], [updated_at]) VALUES (14, N'dotheky999@gmail.com', N'1234567', N'Đỗ Thế Kỷ', N'Nam', N'Nam Định', 965149500, NULL, N'Active', CAST(N'2021-02-02T16:03:18.780' AS DateTime), CAST(N'2021-02-02T16:07:03.927' AS DateTime))
SET IDENTITY_INSERT [dbo].[Customer] OFF
GO
SET IDENTITY_INSERT [dbo].[Favorites_list] ON 

INSERT [dbo].[Favorites_list] ([ID], [ID_Product], [ID_Customer], [created_at], [updated_at]) VALUES (2, 23, 1, CAST(N'2021-02-23T13:46:39.450' AS DateTime), NULL)
INSERT [dbo].[Favorites_list] ([ID], [ID_Product], [ID_Customer], [created_at], [updated_at]) VALUES (3, 22, 1, CAST(N'2021-02-23T13:16:19.420' AS DateTime), NULL)
INSERT [dbo].[Favorites_list] ([ID], [ID_Product], [ID_Customer], [created_at], [updated_at]) VALUES (5, 17, 1, CAST(N'2021-02-23T13:17:00.443' AS DateTime), NULL)
INSERT [dbo].[Favorites_list] ([ID], [ID_Product], [ID_Customer], [created_at], [updated_at]) VALUES (6, 21, 1, CAST(N'2021-02-23T14:08:19.343' AS DateTime), NULL)
SET IDENTITY_INSERT [dbo].[Favorites_list] OFF
GO
SET IDENTITY_INSERT [dbo].[News] ON 

INSERT [dbo].[News] ([ID], [Title], [Content], [Image], [created_at], [updated_at]) VALUES (1, N'Những món đồ công nghệ không thể thiếu cho chuyến đi du lịch xa mà bạn nên biết', N'<h2>Tết là những thời điểm bạn sẽ có những chuyến đi du lịch nhiều ngày với bạn bè của mình. Vậy khi đi du lịch ngoài chuẩn bị nhu yếu phẩm bạn cũng cần có những món đồ công nghệ này để việc đi du lịch của bạn không còn bị gián đoạn và có những món quà đăng lên Facebook bằng chiếc <a href="https://www.thegioididong.com/dtdd" target="_blank" title="điện thoại" type="điện thoại">điện thoại</a> của mình nhé.</h2>
<h3><strong>1. Điện thoại</strong></h3><p>Nghe có vẻ hơi khó hiểu khi điện thoại đang là vật bất ly thân với nhiều người tuy nhiên nếu tốt hơn bạn nên có một chiếc điện thoại dự phòng để có thẻ chia công việc nhau sử dụng để tiết kiệm pin hơn cho điện thoại chính. Bạn có thể thêm pin để quay phim, check-in, chụp ảnh và rất nhiều thứ khác.</p><div class=''imgwrap'' style="text-align:center"><img alt="món đồ công nghệ không thể thiếu" src="https://cdn.tgdd.vn/Files/2021/01/28/1323700/mondocongnghekhongthethieu1_1200x675-800-resize.jpg" title="món đồ công nghệ không thể thiếu" class="lazy"></div>
<h3><strong>2. Camera hành trình</strong></h3><p>Đây là món đồ không nhất thiết phải có nhưng có thì sẽ giúp bạn ghi lại được cả một hành trình đi vè quê hay đi du lịch thật đẹp  Và nếu có thể bạn có thể đầu tư một chiếc để quay video lại mọi cảnh vật mà bạn đi qua để sau này xem lại cũng rất vui.</p><div class=''imgwrap'' style="text-align:center" ><img alt="món đồ công nghệ không thể thiếu" src="https://cdn.tgdd.vn/Files/2021/01/28/1323700/mondocongnghekhongthethieu6_1024x576-800-resize.jpg" title="món đồ công nghệ không thể thiếu" class="lazy"></div>
<h3><strong>3. Bộ phát Wifi từ Sim 4G</strong></h3><p>Nếu bạn đi du lịch xa với bạn bè thì bộ phát Wifi là rất thiết để có thể truy cập mạng nhanh chóng và ổn định không phụ thuộc vào Wifi dọc đường đi nhé. Ngoài ra nếu có bộ phát Wifi bạn sẽ đỡ tốn pin và đỡ nóng hơn rất nhiều cho chiếc điện thoại của mình đấy.</p><div class=''imgwrap'' style="text-align:center"><img alt="món đồ công nghệ không thể thiếu" src="https://cdn.tgdd.vn/Files/2021/01/28/1323700/mondocongnghekhongthethieu3_1080x607-800-resize.jpg" title="món đồ công nghệ không thể thiếu" class="lazy"></div>
<h3><strong>4. Sạc dự phòng</strong></h3><p>Đây chắc hẳn là vật dụng không thể thiếu mà rất nhiều bạn quên trong việc này. Bạn hãy mang theo sạc dự phong và bộ sạc pin để có thể ứng cứu điện thoại nhanh chóng khi thiết bị hết pin trong tình huống nguy cấp và không bị gián đoạn chuyến du lịch của mình. Đặc biệt là nếu có bộ sạc nhiều cổng là một lợi thế lớn.</p><div class=''imgwrap'' style="text-align:center"><img alt="món đồ công nghệ không thể thiếu" src="https://cdn.tgdd.vn/Files/2021/01/28/1323700/mondocongnghekhongthethieu5_1000x563-800-resize.jpg" title="món đồ công nghệ không thể thiếu" class="lazy"></div>
<h3><strong>5. Bộ Tripod hoặc Gimbal quay video</strong></h3><p>Đây sẽ là trợ thủ đắc lực cho những thước phim đẹp để khoe với bạn bè hoặc là chụm ảnh nhóm. Khi đó bạn có thể dựng Tripod và có thể rảnh tay để chụp chung với bạn bè.</p><div class=''imgwrap'' style="text-align:center"><img alt="món đồ công nghệ không thể thiếu" src="https://cdn.tgdd.vn/Files/2021/01/28/1323700/mondocongnghekhongthethieu4_1200x675-800-resize.jpg" title="món đồ công nghệ không thể thiếu" class="lazy"></div>
<h3><strong>6. Quạt cầm tay </strong></h3><p>Nếu bạn đi du lịch trên đường quá nóng hoặc đang cắm trại trong rừng hay đi núi thì quạt cầm tay sẽ là cứu cánh tuyệt vời cho bạn giả nóng nhanh chóng, mát mẻ luôn có trải nghiệm tuyệt vời nhất phải không nào.</p><div class=''imgwrap'' style="text-align:center"><img alt="món đồ công nghệ không thể thiếu" src="https://cdn.tgdd.vn/Files/2021/01/28/1323700/mondocongnghekhongthethieu2_1080x607-800-resize.jpg" title="món đồ công nghệ không thể thiếu" class="lazy"></div>
<h3><strong>7. Tai nghe</strong></h3><p>Chuyến đi dài luôn có lúc chúng ta mệt mỏi cần nghĩ ngơi ngay lập tức thì chiếc tai nghe có thể giúp bạn thử giản cực kì tốt và quay lại chuyến đi chơi nhanh chóng không bị gián đoạn.</p><div class=''imgwrap'' style="text-align:center"><img alt="món đồ công nghệ không thể thiếu" src="https://cdn.tgdd.vn/Files/2021/01/28/1323700/mondocongnghekhongthethieu7-_3863x2173-800-resize.jpg" title="món đồ công nghệ không thể thiếu" class="lazy"></div><p>Như vậy mình đã đem đến bạn những món đồ công nghệ tuyệt vời để đi du lịch không bị gián đoạn. Nếu thấy bài viết hữu ích cho mình xin một like và một share nhé. Rất cảm ơn các bạn đã xem bài viết.</p><p><strong>Xem thêm:</strong></p>
<ul><li><a href="https://www.thegioididong.com/tin-tuc/8-tinh-nang-moi-tren-ios-14-4-chinh-thuc-giup-ban-xai-iphone-cuc-me-ly-1323164" target="_blank" title="iOS 14.4" type="iOS 14.4">8 tính năng mới trên iOS 14.4 chính thức giúp bạn xài iPhone cực mê ly</a></li><li><a href="https://www.thegioididong.com/tin-tuc/mua-dien-thoai-cu-de-choi-tet-ban-nen-co-ung-dung-nay-de-test-may-1322920" target="_blank" title="Điện thoại cũ" type="Điện thoại cũ">Mua điện thoại cũ để chơi Tết, bạn nên có ứng dụng này để test máy</a></li></ul>
', N'/Content/News/Image/mondocongnghekhongthethieu8_1200x675-300x200.jpg', NULL, NULL)
INSERT [dbo].[News] ([ID], [Title], [Content], [Image], [created_at], [updated_at]) VALUES (2, N'COVID-19 khiến làm việc và giải trí tại nhà tăng mạnh! Microsoft đạt doanh thu khủng nhờ xBox, Microsoft 365 và Teams', N'<h2>Đại dịch COVID-19 dường như đã mở ra rất nhiều cơ hội để các ông lớn công nghệ như <a href="https://www.thegioididong.com/phan-mem" target="_blank" title="Microsoft" type="Microsoft">Microsoft</a> có thể thúc đẩy doanh thu của mình. Khi nhu cầu làm việc và học tập tại nhà tăng mạnh thì đây là cơ hội để các sản phẩm của Microsoft như Xbox, Surface và dịch vụ điện toán đám mây dễ dàng đến tay người dùng.</h2><p>Dưới đây là những tổng hợp về báo cáo doanh thu trong những quý gần đây của Microsoft mà chúng tôi đã thu thập được.</p>
<h3><strong>Doanh thu trong quý 2 năm 2021 của Microsoft tăng mạnh</strong></h3><p>Microsoft đã công bố kết quả tài chính của quý 2 năm 2021, báo cáo doanh thu đạt 43.1 tỷ USD và thu nhập ròng 15.5 tỷ USD. Doanh thu tăng 17% và thu nhập ròng đã tăng 33%.</p><p>Chúng tôi đã thấy một số tăng trưởng ấn tượng cho Surface, Xbox và các dịch vụ liên quan đến điện toán đám mây trong quý trước của Microsoft và lần này cũng vậy.</p><div class=''imgwrap'' style="text-align:center"><img alt="Doanh thu trong quý 2 của Microsoft tăng mạnh" src="https://cdn.tgdd.vn/Files/2021/01/27/1323288/doanh-thu-quy-2-microsoft-hinh2_800x450.jpg" title="Doanh thu trong quý 2 của Microsoft tăng mạnh" class="lazy"></div><div class="captionnews"><em>Nhu cầu sử dụng PC và laptop tăng mạnh. Nguồn: techpost.it</em></div><p>Thị trường <a href="https://www.thegioididong.com/may-tinh-de-ban" target="_blank" title="PC" type="PC">PC</a> vừa có đợt tăng trưởng lớn đầu tiên sau 10 năm, với khoảng 300 triệu thiết bị được xuất xưởng trong năm 2020.</p><p>Đại dịch đã ảnh hưởng đến cách làm việc hoặc học tập của rất nhiều người, và nhiều người đã chuyển sang sử dụng <a href="https://www.thegioididong.com/laptop" target="_blank" title="Laptop" type="Laptop">laptop</a> để tiếp có thể làm việc và học tập từ xa tại nhà.</p><p>Mặc dù đã được ra mắt vào 11/2019 nhưng đây mới là quý đầu tiên doanh thu của máy chơi game Xbox Series X và Series S được ghi nhận. Những dịch vụ đi kèm của Xbox cũng tăng 40% so với cùng quý năm ngoái.</p><p>Trò chơi điện tử đã trở nên cực kỳ phổ biến trong suốt năm 2020 và nhiều người rõ ràng đã chuyển sang Xbox Game Pass và các dịch vụ như xCloud trong thời gian đại dịch. Điều đó đã thúc đẩy doanh thu trò chơi tổng thể của Microsoft tăng 51% và đạt 5 tỷ đô la cho quý đầu tiên.</p><div class=''imgwrap'' style="text-align:center"><img alt="Doanh thu trong quý 2 của Microsoft tăng mạnh" src="https://cdn.tgdd.vn/Files/2021/01/27/1323288/doanh-thu-quy-2-microsoft-hinh3_800x450.jpg" title="Doanh thu trong quý 2 của Microsoft tăng mạnh" class="lazy"></div><div class="captionnews"><em>Xbox trở nên phổ biến trong bối cảnh đại dịch COVID-19. Nguồn: escapistmagazine.com</em></div><p>Trong một cuộc thảo luận với các nhà đầu tư, giám đốc tài chính của Microsoft - Amy Hood cho biết công ty dự kiến ​​sẽ đẩy mạnh sản xuất đối với máy chơi game Xbox Series X và S trong quý tới, nhưng nguồn cung vẫn sẽ bị hạn chế.</p><p>Về Surface, Surface Pro X và Surface Laptop Go của Microsoft cũng đã ra mắt trong quý này. Doanh thu tăng 3%, nhưng quan trọng là lần đầu tiên mảng kinh doanh này của Microsoft được trị giá 2 tỷ đô la.</p><p>Điều đó có ý nghĩa quan trọng đối với khả năng kinh doanh lâu dài của Surface. Và sự phát triển này bắt nguồn khi nhu cầu về laptop và PC của người dùng ngày càng tăng.</p><p>Microsoft cũng vừa công bố thiết bị Surface Pro 7 Plus được cập nhật, chỉ dành cho doanh nghiệp và trường học. Thiết bị mới bao gồm pin lớn hơn, bộ vi xử lý thế hệ thứ 11 của Intel, ổ SSD có thể tháo rời và LTE.</p>
<h3><strong>Nhu cầu sử dụng các phần mềm dịch vụ gia tăng đáng kể</strong></h3><p>Người đăng ký Microsoft 365 Consumer cũng đã tăng lên 47.5 triệu, tăng 28%. Microsoft đã tập trung vào các dịch vụ Teams và Microsoft 365 dành cho người tiêu dùng, khởi động một nỗ lực mới để thu hút nhiều người đăng ký hơn vào năm ngoái.</p><div class=''imgwrap'' style="text-align:center"><img alt="Doanh thu trong quý 2 của Microsoft tăng mạnh" src="https://cdn.tgdd.vn/Files/2021/01/27/1323288/doanh-thu-quy-2-microsoft-hinh4_800x450.jpg" title="Doanh thu trong quý 2 của Microsoft tăng mạnh" class="lazy"></div><div class="captionnews"><em>Các phần mềm dịch vụ chiếm tỷ trọng cao trong doanh số của Microsoft. Nguồn: deskmodder.de</em></div><p>Dịch vụ đám mây tiếp tục là một trong những thành phần chính đối với doanh thu của Microsoft, nhờ vào sự thay trong cách làm việc và học tập của người dùng trong bối cảnh đại dịch COVID-19 vẫn chưa có dấu hiệu dừng lại. Office phiên bản thương mại và phiên bản dành cho người dùng cá nhân đều tăng, với doanh thu Office 365 Thương mại tăng 21%. Doanh thu từ các sản phẩm máy chủ và dịch vụ đám mây cũng tăng 26% khi ngày càng nhiều doanh nghiệp ưa chuộng dịch vụ đám mây. Bản thân doanh thu Azure đã tăng 50%.</p>
<h3><strong>Tổng kết</strong></h3><p>Sự thay đổi hành vi làm việc và học tập của người tiêu dùng trong bối cảnh đại dịch COVID-19 là một trong những nguyên nhân giúp Microsoft có thể thúc đẩy doanh số.</p><p>Với những dấu hiệu tích cực của 2 quý đầu năm, thì 2021 hứa hẹn sẽ là một năm thuận lợi và đem đến nhiều cơ hội cho Microsoft. Các bạn đánh giá như thế nào về sự phát tăng trưởng này của Microsoft?</p><p>Hãy để lại ý kiến của các bạn ở phần bình luận bên dưới nhé!</p><p>Nguồn: <a rel="nofollow" href="https://www.theverge.com/2021/1/26/22250826/microsoft-q2-2021-earnings-revenue-xbox-cloud-services-surface-gaming" rel="nofollow" target="_blank" title="Nguồn" type="Nguồn">TheVerge</a></p><p>Xem thêm: <a href="https://www.thegioididong.com/tin-tuc/doanh-thu-quy-4-cua-ga-khong-lo-intel-1322281" target="_blank" title="Xem thêm" type="Xem thêm">Doanh thu quý 4 của gã khổng lồ Intel: Lợi nhuận bay xa so với kỳ vọng, triển vọng thậm chí còn có thể tiếp tục tăng mạnh</a></p>
', N'/Content/News/Image/doanh-thu-quy-2-microsoft-hinh1_800x450-300x200.jpg', NULL, NULL)
INSERT [dbo].[News] ([ID], [Title], [Content], [Image], [created_at], [updated_at]) VALUES (3, N'Đánh giá chi tiết ASUS ROG Strix Scar 15: Laptop gaming với cấu hình mạnh mẽ và ngoại hình đậm chất game thủ', N'<h2>Nếu bạn đang tìm kiếm một cỗ máy chiến game với cấu hình khủng nhất thì một chiếc <a href="https://www.thegioididong.com/laptop" target="_blank" title="laptop" type="laptop">laptop</a> như ASUS ROG Strix Scar 15 chắc chắn... không phải là sự lựa chọn của bạn, bạn nên mua một bộ <a href="https://www.thegioididong.com/may-tinh-de-ban" target="_blank" title="máy tính để bàn" type="máy tính để bàn">PC</a> gaming thì hơn. Tuy nhiên, chiếc Strix Scar 15 sẽ là một phương án tốt nếu bạn muốn sở hữu một chiếc <a href="https://www.thegioididong.com/laptop?g=laptop-gaming" target="_blank" title="laptop gaming" type="laptop gaming">laptop gaming</a> không chỉ mạnh mà còn giúp bạn thể hiện cá tính của mình thông qua vẻ ngoài chất lừ. Hãy cùng mình tìm hiểu về chiếc ROG Strix Scar 15 trong bài viết này nhé.</h2><p>Xem thêm: <a href="https://www.thegioididong.com/tin-tuc/3-chiec-laptop-co-muc-gia-tot-voi-cau-hinh-trau-bo-1322362" target="_blank" title="Dưới đây chính là 3 chiếc laptop có mức giá tốt với cấu hình trâu bò có thể cân được các game PC thông dụng lẫn công việc đồ họa" type="Dưới đây chính là 3 chiếc laptop có mức giá tốt với cấu hình trâu bò có thể cân được các game PC thông dụng lẫn công việc đồ họa">Dưới đây chính là 3 chiếc laptop có mức giá tốt với cấu hình trâu bò có thể cân được các game PC thông dụng lẫn công việc đồ họa</a></p><p>Nguồn bài viết: <a rel="nofollow" href="https://www.theverge.com/22195676/asus-rog-strix-scar-15-review-gaming-laptop-specs-features-price" rel="nofollow" target="_blank" title="The Verge" type="The Verge">The Verge</a></p><h3><strong>Thiết kế nổi bật của ASUS ROG Strix Scar 15 tỏa ra khí chất gaming đích thực</strong></h3><p>Khác với dòng máy gaming anh em là ROG Zephyrus - vốn có vẻ ngoài cắt giảm sự hầm hố, hay nói cách khác là khá hiền nhằm vừa phục vụ mục đích giải trí lẫn làm việc, dòng ROG Strix lại không hề ngần ngại thể hiện một ngôn ngữ thiết kế mạnh bạo, tự tin và đậm chất game thủ. Ngoại hình của chiếc Strix Scar 15 như muốn dõng dạc khẳng định rằng đây là một chiếc laptop dành trọn cho việc chiến game.</p><div class=''imgwrap''><img alt="Thiết kế phần bản lề và viền dưới dày với dòng chữ ROG STRIX nổi bật" src="https://cdn.tgdd.vn/Files/2021/01/27/1323320/wwe122_800x450.jpg" title="Thiết kế phần bản lề và viền dưới dày với dòng chữ ROG STRIX nổi bật" class="lazy"></div><div class="captionnews">Thiết kế phần bản lề và viền dưới dày với dòng chữ ROG STRIX nổi bật. Nguồn: The Verge.</div><p>Vẻ ngoài của chiếc Strix Scar 15 được thể hiện mạnh mẽ ở những chi tiết cắt vát hầm hố, bất đối xứng, bất tuân theo những sự gò ép trong ngôn ngữ thiết kế. Hệ thống đèn RGB từng phím, dải đèn LED trải dài 3 cạnh trước, trái và phải của thân máy và logo ROG phát sáng đặc trưng trên mặt nắp máy.</p><div class=''imgwrap''><img alt="Thiết kế mạnh mẽ, đậm chất game của Strix Scar 15" src="https://cdn.tgdd.vn/Files/2021/01/27/1323320/wwe6_800x450.jpg" title="Thiết kế mạnh mẽ, đậm chất game của Strix Scar 15" class="lazy"></div><div class="captionnews">Thiết kế mạnh mẽ, đậm chất game của Strix Scar 15. Nguồn: The Verge.</div><p>Bạn có thể tùy chỉnh màu cho cả 3 thành phần theo ý thích, biến máy mỗi khi chơi game là một sân khấu ánh sáng đầy màu sắc. Tuy sặc sỡ nhưng ánh sáng trên chiếc Strix Scar 15 lại không quá chói mắt khó chịu mà thiên về phong cách hơi ''chill'', nhẹ nhàng như ánh đèn club về đêm hơn.</p><h3><strong>Bàn phím là một yếu tố làm ASUS hoàn thiện rất tốt trên ROG Strix Scar 15</strong></h3><p>Ngoài hệ thống đèn RGB, phần bàn phím cũng có những điểm nhấn riêng. Ví dụ như phông chữ trên bàn phím là ''Cybertext'' - một kiểu phông hiện đại, gợi chút cảm giác sci-fi nhưng cũng không quá khó nhìn và đánh lạc hướng khi bạn làm việc. Phần kê tay được phủ một lớp sơn ''soft-touch'', cho cảm giác sờ mịn, thoải mái dù cho chất liệu bằng nhựa. Bạn có thể cảm nhận được sự sung sướng này khi so sánh cảm giác chạm giữa phần kê tay với những bề mặt khác trên toàn bộ máy.</p><p>Bản thân cơ chế phím nhấn cũng được ASUS làm rất tốt. Bàn phím trên ROG Strix Scar 15 có cảm giác bấm nhẹ và nhạy, mỗi lần nhấn phím tạo ra một cảm giác click khá ''phê''. Ngoài ra bàn phím còn có dãy phím tắt tiện lợi ở phía trên, giúp bạn truy cập những tính năng như chỉnh âm lượng, tắt microphone, đổi chế độ hoạt động của máy và mở phần mềm Armoury Crate cho phép bạn nghịch ngợm với những tính năng xịn sò của máy.</p><div class=''imgwrap''><img alt="Bàn phím trên ROG Strix Scar 15 có nhiều điểm cộng" src="https://cdn.tgdd.vn/Files/2021/01/27/1323320/wwe7_800x450.jpg" title="Bàn phím trên ROG Strix Scar 15 có nhiều điểm cộng" class="lazy"></div><div class="captionnews">Bàn phím trên ROG Strix Scar 15 có nhiều điểm cộng. Nguồn: The Verge.</div><h3><strong>ROG Strix Scar 15 sở hữu nhiều cổng kết nối tiện dụng cùng với một tính năng vô cùng đặc biệt</strong></h3><p>Nếu bạn thường xuyên sử dụng những thiết bị ngoại vi như chuột, bàn phím rời, tai nghe hay màn hình rời,... thì chiếc Strix Scar 15 sẽ không khiến bạn thất vọng. Máy sở hữu các cổng kết nối bao gồm 3 cổng USB - A, một cổng tai nghe 3.5 mm bên trái, phía sau máy có một cổng USB - C (hỗ trợ DisplayPort nhưng không sạc được), một cổng sạc, một cổng mạng LAN và một cổng HDMI. Hơi đáng tiếc là máy không hỗ trợ giao thức Thunderbolt.</p><div class=''imgwrap''><img alt="Mặt bên trái của máy" src="https://cdn.tgdd.vn/Files/2021/01/27/1323320/wwe3_800x450.jpg" title="Mặt bên trái của máy" class="lazy"></div><div class="captionnews">Mặt bên trái của máy. Nguồn: The Verge.</div><div class=''imgwrap''><img alt="Mặt sau của máy" src="https://cdn.tgdd.vn/Files/2021/01/27/1323320/wwe4_800x450.jpg" title="Mặt sau của máy" class="lazy"></div><div class="captionnews">Mặt sau của máy. Nguồn: The Verge.</div><p>Cạnh bên phải không có cổng kết nối nào nhằm tạo khoảng trống cho tay cầm chuột của bạn di chuyển thoải mái. Tuy nhiên, một điểm đặt biệt nằm bên cạnh phải chính là đầu đọc Keystone II, đây là một bộ nhớ vật lý mà bạn có thể lưu trữ những thiết lập cá nhân, ngoài ra nó còn đóng vai trò như một chìa khóa giúp bạn bảo vệ bộ nhớ riêng tư của mình.</p><div class=''imgwrap''><img alt="Khóa vật lý Keystone II nằm bên cạnh phải của máy" src="https://cdn.tgdd.vn/Files/2021/01/27/1323320/wwe11_798x449.jpg" title="Khóa vật lý Keystone II nằm bên cạnh phải của máy" class="lazy"></div><div class="captionnews">Khóa vật lý Keystone II nằm bên cạnh phải của máy. Nguồn: TminsComputer. </div><h3><strong>ROG Strix Scar 15 có hệ thống loa tốt hơn nhiều laptop gaming khác</strong></h3><p>Hệ thống loa trên Strix Scar 15 có thể phát nhạc với chất lượng âm thanh khá tốt. Dĩ nhiên loa tích hợp trên máy không thể thay thế một dàn loa ngoài. Tuy nhiên âm thanh của loa trên máy vẫn khá rõ. Kể cả khi bạn mở âm lượng tối đa, tiếng phát ra vẫn không bị nhiễu và vỡ. Âm lượng đủ để át đi tiếng quạt tản nhiệt khi chơi game, nhưng bạn vẫn nên sử dụng tai nghe hoặc giảm tốc độ quạt để có trải nghiệm âm thanh tốt hơn.</p><h3><strong>Hiệu năng chơi game không phải là vấn đề nhưng hãy chú ý một chút tới nhiệt độ</strong></h3><p>Vốn được sinh ra với sứ mệnh chiến game, không có lý do gì để chiếc Strix Scar 15 không thể cân được những tựa game hiện hành cả. Ở mức cấu hình cao cấp nhất (CPU Intel Core i9-10980HK, GPU là RTX 2070 Super, 32 GB RAM, 2 TB bộ nhớ, màn hình 15,6 inch, Full HD, 300 Hz, 3 ms), máy có thể ''xử đẹp'' nhiều tựa game phổ biến.</p><p>Quá trình chơi thử cho thấy máy có thể cân được game CS:GO ở mức khung hình ấn tượng là 248 fps, chỉ giảm xuống 100 fps khi xuất hiện khói bụi trong game. Với những tựa game ngốn cấu hình khác, bạn vẫn có thể chơi một cách mượt mà. Kết quả của hai tựa game Shadow of the Tomb Raider (Đồ họa mức Ultra, bật Ray Tracing) và Red Dead Redemption (Ultra) lần lượt là 67 và 54 fps, thậm chí không hề có hiện tượng giật lag khung hình.</p><div class=''imgwrap''><img alt="Cấu hình trên chiếc ROG Strix Scar 15 đủ mạnh để cân những tựa game nặng" src="https://cdn.tgdd.vn/Files/2021/01/27/1323320/wwes_800x450.jpg" title="Cấu hình trên chiếc ROG Strix Scar 15 đủ mạnh để cân những tựa game nặng" class="lazy"></div><div class="captionnews">Cấu hình trên chiếc ROG Strix Scar 15 đủ mạnh để cân những tựa game nặng. Nguồn: The Verge.</div><p>Điều cần lưu tâm ở đây là CPU i9 sẽ trở nên khá nóng khi chơi game, với nhiệt độ dao động quanh mức 95 độ C, thỉnh thoảng chạm mức 99 độ C ở chế độ Turbo (chế độ mạnh nhất). Tuy nhiên, khi hạ xuống một nấc về chế độ Performance, nhiệt độ CPU lúc này chỉ còn loanh quanh 80 độ C và bất ngờ thay, máy chỉ tụt đi khoảng 1 - 2 fps. Có lẽ chế độ Performance sẽ là lựa chọn lý tưởng nhất để chơi game, bạn sẽ không mất quá nhiều so với khi bật Turbo đâu.</p><h3><strong>ROG Strix Scar 15 vẫn tồn tại một số hạn chế đáng để ý</strong></h3><p>Thiếu sót đầu tiên nằm ở việc máy không có webcam. Có thể nhiều người sẽ không mấy bận tâm về vấn đề trên, tuy nhiên có lẽ ai trong chúng ta cũng từng ít nhiều cần đến webcam trên laptop đúng không nào? Điều này sẽ trở nên bất tiện nếu bạn cần tham dự một lớp học hay một cuộc họp online hay đơn giản là gọi video đến cho người thân hay bạn bè.</p><p>Hạn chế thứ hai nằm ở phần touchpad. Touchpad trên máy sẽ có hai phím chuột vật lý nên những ai đã quen sử dụng touchpad tích hợp phím chuột có thể sẽ cảm thấy không quen. Có một tính năng khá tiện là bạn có thể kích hoạt bàn phím số LED trên bề mặt touchpad, tuy nhiên bạn sẽ không thể di chuột nếu bật bàn phím số. Thỉnh thoảng khi đang gõ phím, lòng bàn tay bạn có thể vô tình kích hoạt bàn phím số, khiến bạn bị ngắt nhịp làm việc để tắt nó đi, một cảm giác không dễ chịu chút nào.</p><div class=''imgwrap''><img alt="Trải nghiệm touchpad trên máy chưa được tốt lắm" src="https://cdn.tgdd.vn/Files/2021/01/27/1323320/wwe12_800x450.jpg" title="Trải nghiệm touchpad trên máy chưa được tốt lắm" class="lazy"></div><div class="captionnews">Trải nghiệm touchpad trên máy chưa được tốt lắm. Nguồn: TechArena.</div><p>Điểm yếu lớn nhất có lẽ nằm ở thời lượng pin. Máy chỉ có thể sử dụng trong vòng 2 tiếng rưỡi đối với những tác vụ văn phòng hỗn hợp (đã bật Tiết kiệm pin, màn hình sáng 200 nit), thấp hơn nhiều đối thủ khác với thời gian sử dụng trung bình 4 tiếng.</p><p>Ngoài ra, việc chơi game bằng pin cũng gặp nhiều hạn chế. Bạn chỉ có thể chơi game như Red Dead Redemption trong khoảng 1 tiếng 15 phút kể từ khi pin đầy. Hơn nữa, máy sẽ giảm hiệu năng dần đều khi pin cạn và sẽ không chơi được khi lượng pin chỉ còn 10 %. Vì vậy nếu bạn muốn có trải nghiệm chơi game tốt nhất thì có lẽ bạn nên luôn đem theo ''viên gạch'' 280 W bên mình thôi.</p><div class=''imgwrap''><img alt="Thời lượng pin trên ROG Strix Scar 15 là khá thấp" src="https://cdn.tgdd.vn/Files/2021/01/27/1323320/wwe6_800x450.jpg" title="Thời lượng pin trên ROG Strix Scar 15 là khá thấp" class="lazy"></div><div class="captionnews">Thời lượng pin trên ROG Strix Scar 15 là khá thấp. Nguồn: The Verge.</div><h3><strong>ROG Strix Scar 15 đã làm tốt nhiệm vụ của một chiếc laptop chơi game </strong></h3><p>Mặc dù còn một số hạn chế, ROG Strix Scar 15 vẫn không phải là một chiếc laptop gaming tệ. Chiếc máy này được sinh ra không phải để theo chân bạn vào văn phòng làm việc mà là để chơi game. Và đối với nhiệm vụ chiến game thì ROG Strix Scar 15 sẽ hoàn thành xuất sắc, không có gì phải chê về trải nghiệm gaming trên chiếc máy này cả.</p><p>Bạn thấy chiếc laptop ASUS ROG Strix Scar 15 như thế nào? Hãy để lại phần bình luận bên dưới nhé.</p><p>Xem thêm: <a href="https://www.thegioididong.com/tin-tuc/3-chiec-laptop-co-muc-gia-tot-voi-cau-hinh-trau-bo-1322362" target="_blank" title="Dưới đây chính là 3 chiếc laptop có mức giá tốt với cấu hình trâu bò có thể cân được các game PC thông dụng lẫn công việc đồ họa " type="Dưới đây chính là 3 chiếc laptop có mức giá tốt với cấu hình trâu bò có thể cân được các game PC thông dụng lẫn công việc đồ họa ">Dưới đây chính là 3 chiếc laptop có mức giá tốt với cấu hình trâu bò có thể cân được các game PC thông dụng lẫn công việc đồ họa </a></p>', N'/Content/News/Image/ezgif.com-gif-maker8_800x450-300x200.jpg', NULL, NULL)
SET IDENTITY_INSERT [dbo].[News] OFF
GO
SET IDENTITY_INSERT [dbo].[Product] ON 

INSERT [dbo].[Product] ([ID], [Name], [ID_Brand], [Group_Pro], [Description], [Price], [Promotion_Price], [Image], [CPU], [GPU], [RAM], [ROM], [Monitor], [Operating], [Warranty], [created_at], [updated_at], [Pin], [Size], [Weight]) VALUES (1, N'Asus TUF A15 FA506II-AL016T', 4, N'Laptop Gaming', N'Chính hãng Asus, cấu hình mạnh mẽ Chip AMD Ryzen 7. Card rời GTX1650Ti 4GB. Màn hình 144Hz', 23990000.0000, 21990000.0000, N'/Content/Product/Image/asus_tuf_a15_fa506ii_al016t.png', N'AMD Ryzen 7', N'GTX1650Ti 4GB', N'8GB DDR4', N'SSD 512GB', N'15.6 inches Full HD 144Hz', N'Windows', N'2 năm', CAST(N'2021-01-28T10:12:20.247' AS DateTime), CAST(N'2021-03-15T10:24:54.973' AS DateTime), N'	3 Cell, 41WHr', N'37.6 x 24.6 x 2.25 cm', N'2.46 kg   ')
INSERT [dbo].[Product] ([ID], [Name], [ID_Brand], [Group_Pro], [Description], [Price], [Promotion_Price], [Image], [CPU], [GPU], [RAM], [ROM], [Monitor], [Operating], [Warranty], [created_at], [updated_at], [Pin], [Size], [Weight]) VALUES (2, N'Acer Nitro 5 2020 AN515-55-53AG', 1, N'Laptop Gaming', N'Laptop gaming Nitro 5 2020 cấu hình mạnh mẽ, phiên bản Refurbished Chip i5 đời 10, Card rời GTX 1650 4GB', 19990000.0000, 18990000.0000, N'/Content/Product/Image/nitro_5_2020__4_.png', N'I5 10300h', N'GTX 1650 4GB', N'8GB', N'SSD 256GB NVME', N'15.6 inches Full HD', N'Windows', N'12 tháng', CAST(N'2021-01-28T10:22:15.073' AS DateTime), CAST(N'2021-03-15T10:25:03.780' AS DateTime), N'	3 Cell, 41WHr', N'21.6x365.5x254 mm', N'2.46 kg   ')
INSERT [dbo].[Product] ([ID], [Name], [ID_Brand], [Group_Pro], [Description], [Price], [Promotion_Price], [Image], [CPU], [GPU], [RAM], [ROM], [Monitor], [Operating], [Warranty], [created_at], [updated_at], [Pin], [Size], [Weight]) VALUES (3, N'HP OMEN 15-en0013dx 2V926UA', 6, N'Laptop Gaming', N'Laptop gaming HP cao cấp, bàn phím LED RGB Màn hình 144Hz, 100% sRGB, card rời GTX 1660Ti 6GB', 28990000.0000, 27990000.0000, N'/Content/Product/Image/hp_omen_15.png', N'AMD Ryzen 7 4800H', N'GTX 1660Ti 6GB', N'8GB DDR4', N'SSD 512GB NVME', N'15.6 inches Full HD 144Hz', N'Windows', N'2 năm', CAST(N'2021-01-28T10:27:53.937' AS DateTime), CAST(N'2021-03-15T10:25:15.083' AS DateTime), N'4 Cell, 41WHr', N'35.79 x 23.97 x 2.25 cm', N'2.46 kg   ')
INSERT [dbo].[Product] ([ID], [Name], [ID_Brand], [Group_Pro], [Description], [Price], [Promotion_Price], [Image], [CPU], [GPU], [RAM], [ROM], [Monitor], [Operating], [Warranty], [created_at], [updated_at], [Pin], [Size], [Weight]) VALUES (4, N'Dell G3 15 3500 P89F002', 2, N'Laptop Gaming', N'Laptop gaming Dell. Card rời GTX 1650 4GB, màn hình 120Hz.', 20490000.0000, 19990000.0000, N'/Content/Product/Image/g3_15_3500.png', N'I5 10300h', N'GTX 1650 4GB', N'8GB DDR4', N'SSD 256GB NVME', N'15.6 inches Full HD 120Hz', N'Windows', N'2 năm', CAST(N'2021-01-28T10:29:59.317' AS DateTime), CAST(N'2021-03-15T10:25:21.927' AS DateTime), N'	3 Cell, 41WHr', N'37.6 x 24.6 x 2.25 cm', N'2.46 kg   ')
INSERT [dbo].[Product] ([ID], [Name], [ID_Brand], [Group_Pro], [Description], [Price], [Promotion_Price], [Image], [CPU], [GPU], [RAM], [ROM], [Monitor], [Operating], [Warranty], [created_at], [updated_at], [Pin], [Size], [Weight]) VALUES (5, N'MSI GF63 Thin 10SCSR 830VN', 3, N'Laptop Gaming', N'Laptop gaming mỏng nhẹ Card rời GTX 1650Ti Max-Q 4GB, màn hình 144Hz', 23990000.0000, 23490000.0000, N'/Content/Product/Image/msi_gf63.jpg', N'I7 10750h', N'GTX1650Ti 6GB', N'8GB DDR4', N'SSD 512GB NVME', N'15.6 inches Full HD 144Hz', N'Windows', N'2 năm', CAST(N'2021-01-28T10:32:54.850' AS DateTime), CAST(N'2021-03-15T10:25:30.297' AS DateTime), N'4 Cell, 41WHr', N'35.79 x 23.97 x 2.25 cm', N'2.46 kg   ')
INSERT [dbo].[Product] ([ID], [Name], [ID_Brand], [Group_Pro], [Description], [Price], [Promotion_Price], [Image], [CPU], [GPU], [RAM], [ROM], [Monitor], [Operating], [Warranty], [created_at], [updated_at], [Pin], [Size], [Weight]) VALUES (6, N'HP Pavilion Gaming 15-ec1054AX 1N1H6PA', 6, N'Laptop Gaming', N'Laptop gaming giá rẻ Màn hình Full HD 144Hz', 19490000.0000, 18990000.0000, N'/Content/Product/Image/pavilon_15.jpg', N'AMD Ryzen 5 4600H', N'GTX 1650 4GB', N'8GB DDR4', N'SSD 128GB NVME', N'15.6 inches Full HD 144Hz', N'Windows', N'2 năm', CAST(N'2021-01-28T10:34:54.937' AS DateTime), CAST(N'2021-03-15T10:25:39.153' AS DateTime), N'	3 Cell, 41WHr', N'21.6x365.5x254mm', N'2.46 kg   ')
INSERT [dbo].[Product] ([ID], [Name], [ID_Brand], [Group_Pro], [Description], [Price], [Promotion_Price], [Image], [CPU], [GPU], [RAM], [ROM], [Monitor], [Operating], [Warranty], [created_at], [updated_at], [Pin], [Size], [Weight]) VALUES (7, N'MSI Bravo 15 A4DCR 270VN', 3, N'Laptop Gaming', N'Laptop gaming AMD, cấu hình cao, giá rẻ. MÀN 144HZ quẩy game siêu đã chip Ryzen đời 4, card rời RX5300M 3GB', 18990000.0000, 18190000.0000, N'/Content/Product/Image/msi_bravo.jpg', N'AMD Ryzen 5 4600H', N'RX5300M GDDR6', N'8GB DDR4', N'SSD 256GB NVME', N'15.6 inches Full HD 144Hz', N'Windows', N'12 tháng', CAST(N'2021-01-28T10:36:34.860' AS DateTime), NULL, N'6 Cell, 41WHr', N'37.6 x 24.6 x 2.25 cm', N'2.46 kg   ')
INSERT [dbo].[Product] ([ID], [Name], [ID_Brand], [Group_Pro], [Description], [Price], [Promotion_Price], [Image], [CPU], [GPU], [RAM], [ROM], [Monitor], [Operating], [Warranty], [created_at], [updated_at], [Pin], [Size], [Weight]) VALUES (8, N'HP Envy 13 13-ba1030TU 2K0B6PA', 6, N'Học tập - Văn phòng', N'Laptop văn phòng mỏng nhẹ Chip i7 đời 11, màn hình Full HD', 27490000.0000, 27190000.0000, N'/Content/Product/Image/hp_envy_13_ba1028tu_2k0b2pa_3.jpg', N'i7 1165G7', N'Intel Iris Plus Graphics', N'8GB DDR4', N'SSD 512GB NVME', N'13.3 inches Full HD', N'Windows', N'2 năm', CAST(N'2021-01-29T08:56:29.220' AS DateTime), NULL, N'	3 Cell, 41WHr', N'35.79 x 23.97 x 2.25 cm', N'2.46 kg   ')
INSERT [dbo].[Product] ([ID], [Name], [ID_Brand], [Group_Pro], [Description], [Price], [Promotion_Price], [Image], [CPU], [GPU], [RAM], [ROM], [Monitor], [Operating], [Warranty], [created_at], [updated_at], [Pin], [Size], [Weight]) VALUES (9, N'MSI Modern 14 B11SB 074VN', 3, N'Học tập - Văn phòng', N'Laptop văn phòng mỏng nhẹ cho creator Chip i5 đời 11, Màn hình 100% sRGB', 22990000.0000, 22490000.0000, N'/Content/Product/Image/msi_modern_1.png', N'i5 1135G7', N'Geforce MX450 2GB', N'8GB DDR4', N'SSD 512GB NVME', N'14 inches Full HD', N'Windows', N'12 tháng', CAST(N'2021-01-29T09:00:04.043' AS DateTime), NULL, N'4 Cell, 41WHr', N'21.6x365.5x254mm', N'2.46 kg   ')
INSERT [dbo].[Product] ([ID], [Name], [ID_Brand], [Group_Pro], [Description], [Price], [Promotion_Price], [Image], [CPU], [GPU], [RAM], [ROM], [Monitor], [Operating], [Warranty], [created_at], [updated_at], [Pin], [Size], [Weight]) VALUES (10, N'DELL Vostro V5502A', 2, N'Học tập - Văn phòng', N'Laptop văn phòng cấu hình cao Chip i7 đời 11, Card rời Nvidia MX330 2GB', 25990000.0000, 25190000.0000, N'/Content/Product/Image/dell_vostro_v5502a_gray_4.jpg', N'i7-1165G7', N'Nvidia MX330 2GB GDDR5', N'16GB DDR4', N'SSD 512GB NVME', N'15.6 inches Full HD', N'Windows', N'12 tháng', CAST(N'2021-01-29T09:02:05.190' AS DateTime), NULL, N'	3 Cell, 41WHr', N'37.6 x 24.6 x 2.25 cm', N'2.46 kg   ')
INSERT [dbo].[Product] ([ID], [Name], [ID_Brand], [Group_Pro], [Description], [Price], [Promotion_Price], [Image], [CPU], [GPU], [RAM], [ROM], [Monitor], [Operating], [Warranty], [created_at], [updated_at], [Pin], [Size], [Weight]) VALUES (11, N'Dell Vostro V5402', 2, N'Học tập - Văn phòng', N'Laptop văn phòng Dell cấu hình cao Chip i7 đời 11, card rời Geforce MX330 2GB', 25190000.0000, 24890000.0000, N'/Content/Product/Image/dell_vostro_5402_gray.png', N'i7 1165G7', N'Geforce MX330 2GB', N'16GB DDR4', N'SSD 512GB NVME', N'14 inches Full HD', N'Windows', N'2 năm', CAST(N'2021-01-29T09:04:26.793' AS DateTime), NULL, N'	3 Cell, 41WHr', N'35.79 x 23.97 x 2.25 cm', N'2.46 kg   ')
INSERT [dbo].[Product] ([ID], [Name], [ID_Brand], [Group_Pro], [Description], [Price], [Promotion_Price], [Image], [CPU], [GPU], [RAM], [ROM], [Monitor], [Operating], [Warranty], [created_at], [updated_at], [Pin], [Size], [Weight]) VALUES (12, N'Dell Inspiron 5391 70197461', 2, N'Học tập - Văn phòng', N'Laptop mỏng nhẹ, có card rời', 24490000.0000, 23990000.0000, N'/Content/Product/Image/dell_inspiron_13_5391_70197461__3_.png', N'i7 10510U', N'NVidia MX250 2GB', N'8GB DDR4', N'SSD 512GB NVME', N'13.3 inches Full HD', N'Windows', N'12 tháng', CAST(N'2021-01-29T09:06:42.893' AS DateTime), NULL, N'4 Cell, 41WHr', N'21.6x365.5x254mm', N'2.46 kg   ')
INSERT [dbo].[Product] ([ID], [Name], [ID_Brand], [Group_Pro], [Description], [Price], [Promotion_Price], [Image], [CPU], [GPU], [RAM], [ROM], [Monitor], [Operating], [Warranty], [created_at], [updated_at], [Pin], [Size], [Weight]) VALUES (13, N'Workstation Dell Precision 5540', 2, N'Đồ họa - Kỹ thuật', N'Máy trạm mỏng nhẹ cao cấp Chip i7 đời 9, Card Quadro T1000', 59990000.0000, 58490000.0000, N'/Content/Product/Image/pro_poster_5325__1_.jpg', N'Intel Core i7 9850H', N'Nvidia Quadro T1000', N'32GB DDR4', N'SSD 512GB NVME', N'15.6 Inch 4K Cảm ứng', N'Windows', N'2 năm', CAST(N'2021-01-29T09:12:15.620' AS DateTime), NULL, N'	3 Cell, 41WHr', N'37.6 x 24.6 x 2.25 cm', N'2.46 kg   ')
INSERT [dbo].[Product] ([ID], [Name], [ID_Brand], [Group_Pro], [Description], [Price], [Promotion_Price], [Image], [CPU], [GPU], [RAM], [ROM], [Monitor], [Operating], [Warranty], [created_at], [updated_at], [Pin], [Size], [Weight]) VALUES (14, N'HP Zbook Firefly 14 G7 8VK70AV', 6, N'Đồ họa - Kỹ thuật', N'Máy trạm mỏng nhẹ', 37990000.0000, 37490000.0000, N'/Content/Product/Image/hp_zbook_firefly_14_g7_8vk70av_5.jpg', N'Intel Core i7-10510U', N'Quadro P520 4GB', N'16GB DDR4', N'SSD 512GB NVME', N'14 inches Full HD', N'Windows', N'2 năm', CAST(N'2021-01-29T09:14:47.477' AS DateTime), CAST(N'2021-01-29T09:16:09.167' AS DateTime), N'	3 Cell, 41WHr', N'35.79 x 23.97 x 2.25 cm', N'2.46 kg   ')
INSERT [dbo].[Product] ([ID], [Name], [ID_Brand], [Group_Pro], [Description], [Price], [Promotion_Price], [Image], [CPU], [GPU], [RAM], [ROM], [Monitor], [Operating], [Warranty], [created_at], [updated_at], [Pin], [Size], [Weight]) VALUES (15, N'HP ZBook 15 G6 6CJ09AV', 6, N'Đồ họa - Kỹ thuật', N'Máy trạm mỏng nhẹ, cấu hình cao Chip i7 đời 9, Card rời Quadro T2000', 50490000.0000, 49990000.0000, N'/Content/Product/Image/hp_zbook_15_g6_2.jpg', N'Intel Core i7 9850H', N'Nvidia Quadro T2000 4GB', N'8GB DDR4', N'SSD 256GB NVME', N'15.6 inches Full HD', N'Windows', N'2 năm', CAST(N'2021-01-29T09:17:58.420' AS DateTime), NULL, N'4 Cell, 41WHr', N'21.6x365.5x254mm', N'2.46 kg   ')
INSERT [dbo].[Product] ([ID], [Name], [ID_Brand], [Group_Pro], [Description], [Price], [Promotion_Price], [Image], [CPU], [GPU], [RAM], [ROM], [Monitor], [Operating], [Warranty], [created_at], [updated_at], [Pin], [Size], [Weight]) VALUES (17, N'Dell Precision 5750 (2020)', 2, N'Đồ họa - Kỹ thuật', N'Máy trạm mỏng nhẹ cao cấp, cấu hình khủng Card rời NVIDIA Quadro RTX 3000', 72490000.0000, 72000000.0000, N'/Content/Product/Image/dell_precision_5750.jpg', N'Intel Core i7 10750H', N'NVIDIA Quadro RTX 3000', N'32GB DDR4', N'SSD 512GB NVME', N'17.3 inches Full HD', N'Windows', N'3 năm', CAST(N'2021-01-29T09:19:59.620' AS DateTime), NULL, N'6 Cell, 41WHr', N'37.6 x 24.6 x 2.25 cm', N'2.46 kg   ')
INSERT [dbo].[Product] ([ID], [Name], [ID_Brand], [Group_Pro], [Description], [Price], [Promotion_Price], [Image], [CPU], [GPU], [RAM], [ROM], [Monitor], [Operating], [Warranty], [created_at], [updated_at], [Pin], [Size], [Weight]) VALUES (18, N'Dell Precision 5530', 2, N'Đồ họa - Kỹ thuật', N'Máy trạm đồ họa cao cấp thương hiệu Dell. Tản nhiệt cực tốt, card rời chuyên dụng P1000 mạnh mẽ', 35490000.0000, 35190000.0000, N'/Content/Product/Image/dell_precision_5530.png', N'Intel Core i7 8850H', N'Quadro P1000', N'8GB DDR4', N'SSD 256GB NVME', N'15.6 inches Full HD', N'Windows', N'2 năm', CAST(N'2021-01-29T09:22:10.160' AS DateTime), NULL, N'	3 Cell, 41WHr', N'35.79 x 23.97 x 2.25 cm', N'2.46 kg   ')
INSERT [dbo].[Product] ([ID], [Name], [ID_Brand], [Group_Pro], [Description], [Price], [Promotion_Price], [Image], [CPU], [GPU], [RAM], [ROM], [Monitor], [Operating], [Warranty], [created_at], [updated_at], [Pin], [Size], [Weight]) VALUES (19, N'Lenovo Thinkpad T14 G1 20S1SA0F00', 5, N'Cao cấp - Sang trọng', N'Laptop ThinkPad cao cấp Chip i5 đời 10, màn hình Full HD IPS', 23490000.0000, 22990000.0000, N'/Content/Product/Image/lenovo_thinkpad_t14_g1_20s1sa0f00.png', N'Intel Core i5 10210U', N'Intel HD 620', N'8GB DDR4', N'SSD 256GB NVME', N'14 inches Full HD', N'Windows', N'2 năm', CAST(N'2021-01-29T09:26:54.020' AS DateTime), CAST(N'2021-02-01T20:45:28.163' AS DateTime), N'	4 Cell, 41WHr', N'21.6x365.5x254 mm', N'2.46 kg   ')
INSERT [dbo].[Product] ([ID], [Name], [ID_Brand], [Group_Pro], [Description], [Price], [Promotion_Price], [Image], [CPU], [GPU], [RAM], [ROM], [Monitor], [Operating], [Warranty], [created_at], [updated_at], [Pin], [Size], [Weight]) VALUES (20, N'Asus Zenbook Q407IQ-BR5N4', 4, N'Cao cấp - Sang trọng', N'Laptop văn phòng cao cấp, sang trọng, mỏng nhẹ chỉ khoảng 1.15kg. Card rời Geforce MX350 2GB', 19490000.0000, 18990000.0000, N'/Content/Product/Image/zenbook____nh_n___i_b___t.png', N'AMD Ryzen 5 4500U', N'Geforce MX350 2GB', N'8GB LPDDR4', N'SSD 256GB NVME', N'14 inches Full HD', N'Windows', N'2 năm', CAST(N'2021-01-29T09:29:11.327' AS DateTime), CAST(N'2021-01-29T09:30:57.023' AS DateTime), N'6 Cell, 41WHr', N'37.6 x 24.6 x 2.25 cm', N'2.46 kg   ')
INSERT [dbo].[Product] ([ID], [Name], [ID_Brand], [Group_Pro], [Description], [Price], [Promotion_Price], [Image], [CPU], [GPU], [RAM], [ROM], [Monitor], [Operating], [Warranty], [created_at], [updated_at], [Pin], [Size], [Weight]) VALUES (21, N'Lenovo Thinkpad X1 Carbon Gen 7 20R10010US', 5, N'Cao cấp - Sang trọng', N'Laptop Thinkpad cao cấp Chip i5 đời 10, win 10 pro bản quyền theo máy', 35190000.0000, 34990000.0000, N'/Content/Product/Image/5437_lenovo_thinkpad_x1_carbon_gen_7_20r10010us.jpg', N'Intel Core i5 10210U', N'Intel UHD Graphics', N'8GB LDDR3', N'SSD 256GB NVME', N'14 inches Full HD', N'Windows', N'2 năm', CAST(N'2021-01-29T09:30:50.223' AS DateTime), CAST(N'2021-01-29T09:31:15.077' AS DateTime), N'6 Cell, 41WHr', N'35.79 x 23.97 x 2.25 cm', N'2.46 kg   ')
INSERT [dbo].[Product] ([ID], [Name], [ID_Brand], [Group_Pro], [Description], [Price], [Promotion_Price], [Image], [CPU], [GPU], [RAM], [ROM], [Monitor], [Operating], [Warranty], [created_at], [updated_at], [Pin], [Size], [Weight]) VALUES (22, N'Macbook Pro 13 Late 2020 - M1', 7, N'Cao cấp - Sang trọng', N'Macbook Pro 13 Late 2020 Chip M1 8 Core 13.3 Inch Retina, RAM 16GB, SSD 512GB', 47190000.0000, 46990000.0000, N'/Content/Product/Image/mbp_2020_m1_gray_2.png', N'M1 8 Core', N'Card 8-core GPU', N'16GB', N'SSD 512GB NVME', N'13.3 Inch Retina', N'macOS', N'3 năm', CAST(N'2021-01-29T09:33:24.460' AS DateTime), CAST(N'2021-02-01T20:45:42.850' AS DateTime), N'4 Cell, 41WHr', N'21.6x365.5x254 mm', N'2.46 kg   ')
INSERT [dbo].[Product] ([ID], [Name], [ID_Brand], [Group_Pro], [Description], [Price], [Promotion_Price], [Image], [CPU], [GPU], [RAM], [ROM], [Monitor], [Operating], [Warranty], [created_at], [updated_at], [Pin], [Size], [Weight]) VALUES (23, N'Macbook Air 13 Late 2020 - M1', 7, N'Cao cấp - Sang trọng', N'Macbook Air 13 Late 2020 Chip M1 8 Core 13.3 Inch Retina, RAM 16GB, SSD 512GB', 37290000.0000, 36990000.0000, N'/Content/Product/Image/macbook_air_13_inch_2020___space_grey_2.jpg', N'M1 8 Core', N'Card 8-core GPU', N'16GB', N'SSD 512GB NVME', N'13.3 Inch Retina', N'macOS', N'3 năm', CAST(N'2021-01-29T09:35:15.497' AS DateTime), CAST(N'2021-01-30T21:19:08.163' AS DateTime), N'6 Cell, 41WHr', N'37.6 x 24.6 x 2.25 cm', N'2.47 kg   ')
INSERT [dbo].[Product] ([ID], [Name], [ID_Brand], [Group_Pro], [Description], [Price], [Promotion_Price], [Image], [CPU], [GPU], [RAM], [ROM], [Monitor], [Operating], [Warranty], [created_at], [updated_at], [Pin], [Size], [Weight]) VALUES (25, N'HP 14-dk1025wm 1A491UA', 6, N'Học tập - Văn phòng', N'Laptop văn phòng mỏng nhẹ, giá rẻ, thiết kế đẹp. Chip AMD hiệu năng mạnh mẽ, chiến game, đồ họa nhẹ mượt mà.', 12990000.0000, 10990000.0000, N'/Content/Product/Image/hp_14.png', N'AMD Ryzen 3 3250U', N'AMD Vega 3 ', N'4GB DDR4', N'SSD 128GB NVME', N'14 inches HD', N'Windows', N'12 tháng', CAST(N'2021-02-21T11:37:18.817' AS DateTime), CAST(N'2021-02-21T11:38:27.713' AS DateTime), N'	3-cell, 41Wh', N'32.4 x 22.59 x 1.99 cm', N'1.5kg     ')
SET IDENTITY_INSERT [dbo].[Product] OFF
GO
SET IDENTITY_INSERT [dbo].[Product_Color] ON 

INSERT [dbo].[Product_Color] ([ID], [ID_Color], [ID_Product], [Quantity], [created_at], [updated_at]) VALUES (1, 8, 1, 5, CAST(N'2021-01-31T17:05:50.373' AS DateTime), NULL)
INSERT [dbo].[Product_Color] ([ID], [ID_Color], [ID_Product], [Quantity], [created_at], [updated_at]) VALUES (2, 4, 1, 5, CAST(N'2021-01-31T17:06:01.573' AS DateTime), NULL)
INSERT [dbo].[Product_Color] ([ID], [ID_Color], [ID_Product], [Quantity], [created_at], [updated_at]) VALUES (3, 10, 2, 5, CAST(N'2021-01-31T17:06:36.967' AS DateTime), NULL)
INSERT [dbo].[Product_Color] ([ID], [ID_Color], [ID_Product], [Quantity], [created_at], [updated_at]) VALUES (4, 8, 2, 5, CAST(N'2021-01-31T17:07:05.500' AS DateTime), NULL)
INSERT [dbo].[Product_Color] ([ID], [ID_Color], [ID_Product], [Quantity], [created_at], [updated_at]) VALUES (5, 8, 3, 5, CAST(N'2021-01-31T17:07:17.913' AS DateTime), NULL)
INSERT [dbo].[Product_Color] ([ID], [ID_Color], [ID_Product], [Quantity], [created_at], [updated_at]) VALUES (6, 5, 3, 5, CAST(N'2021-01-31T17:07:25.727' AS DateTime), NULL)
INSERT [dbo].[Product_Color] ([ID], [ID_Color], [ID_Product], [Quantity], [created_at], [updated_at]) VALUES (7, 11, 4, 5, CAST(N'2021-01-31T17:08:18.263' AS DateTime), NULL)
INSERT [dbo].[Product_Color] ([ID], [ID_Color], [ID_Product], [Quantity], [created_at], [updated_at]) VALUES (8, 10, 5, 5, CAST(N'2021-01-31T17:08:27.537' AS DateTime), NULL)
INSERT [dbo].[Product_Color] ([ID], [ID_Color], [ID_Product], [Quantity], [created_at], [updated_at]) VALUES (9, 4, 6, 5, CAST(N'2021-01-31T17:08:38.627' AS DateTime), NULL)
INSERT [dbo].[Product_Color] ([ID], [ID_Color], [ID_Product], [Quantity], [created_at], [updated_at]) VALUES (10, 10, 7, 5, CAST(N'2021-01-31T17:08:48.643' AS DateTime), NULL)
INSERT [dbo].[Product_Color] ([ID], [ID_Color], [ID_Product], [Quantity], [created_at], [updated_at]) VALUES (11, 11, 8, 5, CAST(N'2021-01-31T17:09:15.420' AS DateTime), NULL)
INSERT [dbo].[Product_Color] ([ID], [ID_Color], [ID_Product], [Quantity], [created_at], [updated_at]) VALUES (12, 10, 9, 5, CAST(N'2021-01-31T17:09:32.610' AS DateTime), NULL)
INSERT [dbo].[Product_Color] ([ID], [ID_Color], [ID_Product], [Quantity], [created_at], [updated_at]) VALUES (13, 8, 10, 5, CAST(N'2021-01-31T17:09:49.320' AS DateTime), NULL)
INSERT [dbo].[Product_Color] ([ID], [ID_Color], [ID_Product], [Quantity], [created_at], [updated_at]) VALUES (14, 5, 10, 5, CAST(N'2021-01-31T17:10:00.137' AS DateTime), NULL)
INSERT [dbo].[Product_Color] ([ID], [ID_Color], [ID_Product], [Quantity], [created_at], [updated_at]) VALUES (15, 8, 11, 5, CAST(N'2021-01-31T17:10:10.257' AS DateTime), NULL)
INSERT [dbo].[Product_Color] ([ID], [ID_Color], [ID_Product], [Quantity], [created_at], [updated_at]) VALUES (16, 11, 12, 5, CAST(N'2021-01-31T17:10:20.647' AS DateTime), NULL)
INSERT [dbo].[Product_Color] ([ID], [ID_Color], [ID_Product], [Quantity], [created_at], [updated_at]) VALUES (17, 8, 13, 5, CAST(N'2021-01-31T17:10:31.270' AS DateTime), NULL)
INSERT [dbo].[Product_Color] ([ID], [ID_Color], [ID_Product], [Quantity], [created_at], [updated_at]) VALUES (18, 5, 14, 5, CAST(N'2021-01-31T17:10:48.110' AS DateTime), NULL)
INSERT [dbo].[Product_Color] ([ID], [ID_Color], [ID_Product], [Quantity], [created_at], [updated_at]) VALUES (19, 8, 15, 5, CAST(N'2021-01-31T17:11:09.333' AS DateTime), NULL)
INSERT [dbo].[Product_Color] ([ID], [ID_Color], [ID_Product], [Quantity], [created_at], [updated_at]) VALUES (22, 10, 17, 5, CAST(N'2021-01-31T17:12:28.120' AS DateTime), NULL)
INSERT [dbo].[Product_Color] ([ID], [ID_Color], [ID_Product], [Quantity], [created_at], [updated_at]) VALUES (23, 8, 18, 5, CAST(N'2021-01-31T17:12:37.410' AS DateTime), NULL)
INSERT [dbo].[Product_Color] ([ID], [ID_Color], [ID_Product], [Quantity], [created_at], [updated_at]) VALUES (24, 10, 19, 5, CAST(N'2021-01-31T17:12:50.563' AS DateTime), NULL)
INSERT [dbo].[Product_Color] ([ID], [ID_Color], [ID_Product], [Quantity], [created_at], [updated_at]) VALUES (25, 11, 20, 5, CAST(N'2021-01-31T17:13:06.020' AS DateTime), NULL)
INSERT [dbo].[Product_Color] ([ID], [ID_Color], [ID_Product], [Quantity], [created_at], [updated_at]) VALUES (26, 10, 21, 5, CAST(N'2021-01-31T17:13:14.550' AS DateTime), NULL)
INSERT [dbo].[Product_Color] ([ID], [ID_Color], [ID_Product], [Quantity], [created_at], [updated_at]) VALUES (27, 3, 22, 5, CAST(N'2021-01-31T17:13:22.730' AS DateTime), NULL)
INSERT [dbo].[Product_Color] ([ID], [ID_Color], [ID_Product], [Quantity], [created_at], [updated_at]) VALUES (28, 4, 22, 5, CAST(N'2021-01-31T17:13:34.583' AS DateTime), NULL)
INSERT [dbo].[Product_Color] ([ID], [ID_Color], [ID_Product], [Quantity], [created_at], [updated_at]) VALUES (29, 4, 23, 1, CAST(N'2021-01-31T17:46:49.857' AS DateTime), NULL)
SET IDENTITY_INSERT [dbo].[Product_Color] OFF
GO
ALTER TABLE [dbo].[Bill_Detail]  WITH CHECK ADD  CONSTRAINT [fk_Bill_BD] FOREIGN KEY([ID_Bill])
REFERENCES [dbo].[Bills] ([ID])
GO
ALTER TABLE [dbo].[Bill_Detail] CHECK CONSTRAINT [fk_Bill_BD]
GO
ALTER TABLE [dbo].[Bill_Detail]  WITH CHECK ADD  CONSTRAINT [fk_Pro_BD] FOREIGN KEY([ID_Product_Color])
REFERENCES [dbo].[Product_Color] ([ID])
GO
ALTER TABLE [dbo].[Bill_Detail] CHECK CONSTRAINT [fk_Pro_BD]
GO
ALTER TABLE [dbo].[Bills]  WITH CHECK ADD  CONSTRAINT [fk_cus_bill] FOREIGN KEY([ID_Customer])
REFERENCES [dbo].[Customer] ([ID])
GO
ALTER TABLE [dbo].[Bills] CHECK CONSTRAINT [fk_cus_bill]
GO
ALTER TABLE [dbo].[Cart]  WITH CHECK ADD  CONSTRAINT [fk_Cus_c] FOREIGN KEY([ID_Customer])
REFERENCES [dbo].[Customer] ([ID])
GO
ALTER TABLE [dbo].[Cart] CHECK CONSTRAINT [fk_Cus_c]
GO
ALTER TABLE [dbo].[Cart]  WITH CHECK ADD  CONSTRAINT [fk_Pro_C] FOREIGN KEY([ID_Product_Color])
REFERENCES [dbo].[Product_Color] ([ID])
GO
ALTER TABLE [dbo].[Cart] CHECK CONSTRAINT [fk_Pro_C]
GO
ALTER TABLE [dbo].[Favorites_list]  WITH CHECK ADD  CONSTRAINT [fk_Cus_F] FOREIGN KEY([ID_Customer])
REFERENCES [dbo].[Customer] ([ID])
GO
ALTER TABLE [dbo].[Favorites_list] CHECK CONSTRAINT [fk_Cus_F]
GO
ALTER TABLE [dbo].[Favorites_list]  WITH CHECK ADD  CONSTRAINT [fk_Pro_F] FOREIGN KEY([ID_Product])
REFERENCES [dbo].[Product] ([ID])
GO
ALTER TABLE [dbo].[Favorites_list] CHECK CONSTRAINT [fk_Pro_F]
GO
ALTER TABLE [dbo].[New_Image]  WITH CHECK ADD  CONSTRAINT [fk_img_new] FOREIGN KEY([ID_New])
REFERENCES [dbo].[News] ([ID])
GO
ALTER TABLE [dbo].[New_Image] CHECK CONSTRAINT [fk_img_new]
GO
ALTER TABLE [dbo].[Product]  WITH CHECK ADD  CONSTRAINT [fk_br_pro] FOREIGN KEY([ID_Brand])
REFERENCES [dbo].[Brand] ([ID])
GO
ALTER TABLE [dbo].[Product] CHECK CONSTRAINT [fk_br_pro]
GO
ALTER TABLE [dbo].[Product_Color]  WITH CHECK ADD  CONSTRAINT [fk_Co_CoD] FOREIGN KEY([ID_Color])
REFERENCES [dbo].[Colorr] ([ID])
GO
ALTER TABLE [dbo].[Product_Color] CHECK CONSTRAINT [fk_Co_CoD]
GO
ALTER TABLE [dbo].[Product_Color]  WITH CHECK ADD  CONSTRAINT [fk_Pro_CoD] FOREIGN KEY([ID_Product])
REFERENCES [dbo].[Product] ([ID])
GO
ALTER TABLE [dbo].[Product_Color] CHECK CONSTRAINT [fk_Pro_CoD]
GO
ALTER TABLE [dbo].[Product_Image]  WITH CHECK ADD  CONSTRAINT [fk_Pro_Ima] FOREIGN KEY([ID_Product])
REFERENCES [dbo].[Product] ([ID])
GO
ALTER TABLE [dbo].[Product_Image] CHECK CONSTRAINT [fk_Pro_Ima]
GO
