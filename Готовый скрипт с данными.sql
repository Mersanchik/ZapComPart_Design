/****** Object:  Table [dbo].[Category]    Script Date: 19.03.2024 12:53:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Category](
	[idCategory] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_Category] PRIMARY KEY CLUSTERED 
(
	[idCategory] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ChiefDepartmant]    Script Date: 19.03.2024 12:53:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ChiefDepartmant](
	[idChiefDepartmant] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](max) NOT NULL,
	[Login] [nvarchar](max) NULL,
	[Password] [nvarchar](max) NULL,
 CONSTRAINT [PK_ChiefDepartmant] PRIMARY KEY CLUSTERED 
(
	[idChiefDepartmant] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ChiefWorkshop]    Script Date: 19.03.2024 12:53:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ChiefWorkshop](
	[idChiefWorkshop] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](max) NOT NULL,
	[Login] [nvarchar](max) NULL,
	[Password] [nvarchar](max) NULL,
 CONSTRAINT [PK_ChiefWorkshop] PRIMARY KEY CLUSTERED 
(
	[idChiefWorkshop] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Country]    Script Date: 19.03.2024 12:53:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Country](
	[idCountry] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](max) NOT NULL,
	[CarBrands] [nvarchar](max) NOT NULL,
	[CooperationOnDetails] [nvarchar](3) NOT NULL,
	[BusinessTripCooperation] [nvarchar](3) NOT NULL,
	[id_ChiefWorkshop] [int] NULL,
	[id_ChiefDepartmant] [int] NULL,
 CONSTRAINT [PK_Country] PRIMARY KEY CLUSTERED 
(
	[idCountry] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Departmant]    Script Date: 19.03.2024 12:53:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Departmant](
	[idDepartmant] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](max) NOT NULL,
	[id_Chief] [int] NOT NULL,
	[Responsibilities] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_Departmant] PRIMARY KEY CLUSTERED 
(
	[idDepartmant] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Details]    Script Date: 19.03.2024 12:53:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Details](
	[idDetails] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](max) NOT NULL,
	[Price] [money] NOT NULL,
	[CountInWarehouse] [int] NOT NULL,
	[id_Category] [int] NOT NULL,
 CONSTRAINT [PK_Details] PRIMARY KEY CLUSTERED 
(
	[idDetails] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[OfficeEmployee]    Script Date: 19.03.2024 12:53:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OfficeEmployee](
	[idOfficeEmployee] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](max) NOT NULL,
	[id_Chief] [int] NOT NULL,
	[id_Departmant] [int] NOT NULL,
	[Login] [nvarchar](max) NULL,
	[Password] [nvarchar](max) NULL,
 CONSTRAINT [PK_OfficeEmployee] PRIMARY KEY CLUSTERED 
(
	[idOfficeEmployee] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[OfficeSecondment]    Script Date: 19.03.2024 12:53:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OfficeSecondment](
	[idSecondmant] [int] IDENTITY(1,1) NOT NULL,
	[id_Employee] [int] NOT NULL,
	[id_Departmant] [int] NOT NULL,
	[DateStart] [date] NULL,
	[DateEnd] [date] NULL,
 CONSTRAINT [PK_OfficeSecondment] PRIMARY KEY CLUSTERED 
(
	[idSecondmant] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ProductionEmployee]    Script Date: 19.03.2024 12:53:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProductionEmployee](
	[idProductionEmployee] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](max) NOT NULL,
	[id_ChiefWorkshop] [int] NOT NULL,
	[id_Workshop] [int] NOT NULL,
 CONSTRAINT [PK_ProductionEmployee] PRIMARY KEY CLUSTERED 
(
	[idProductionEmployee] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ProductionSecondment]    Script Date: 19.03.2024 12:53:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProductionSecondment](
	[idSecondmant] [int] IDENTITY(1,1) NOT NULL,
	[id_Employee] [int] NOT NULL,
	[id_Workshop] [int] NOT NULL,
	[DateStart] [date] NULL,
	[DateEnd] [date] NULL,
 CONSTRAINT [PK_ProductionSecondment] PRIMARY KEY CLUSTERED 
(
	[idSecondmant] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Workshop]    Script Date: 19.03.2024 12:53:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Workshop](
	[idWorkshop] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](max) NOT NULL,
	[id_ChiefWorkshop] [int] NOT NULL,
	[Responsibilities] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_Workshop] PRIMARY KEY CLUSTERED 
(
	[idWorkshop] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Category] ON 

INSERT [dbo].[Category] ([idCategory], [Name]) VALUES (1, N'Двигатель')
INSERT [dbo].[Category] ([idCategory], [Name]) VALUES (2, N'Подвеска')
INSERT [dbo].[Category] ([idCategory], [Name]) VALUES (3, N'Трансмиссия')
SET IDENTITY_INSERT [dbo].[Category] OFF
GO
SET IDENTITY_INSERT [dbo].[ChiefDepartmant] ON 

INSERT [dbo].[ChiefDepartmant] ([idChiefDepartmant], [Name], [Login], [Password]) VALUES (1, N'Белоусов Мартын Федорович', N'belousov221133@sdd.ff', N'aSDGsdgdfg43')
INSERT [dbo].[ChiefDepartmant] ([idChiefDepartmant], [Name], [Login], [Password]) VALUES (2, N'Вишняков Герасим Кимович', N'vishnya@mail.ru', N'zdSDFg45')
INSERT [dbo].[ChiefDepartmant] ([idChiefDepartmant], [Name], [Login], [Password]) VALUES (3, N'Кириллов Нисон Мэлорович', N'kirillovkirillkirillovich55442233111@gg.sd', N'DFfhdf43')
INSERT [dbo].[ChiefDepartmant] ([idChiefDepartmant], [Name], [Login], [Password]) VALUES (4, N'Королёв Ростислав Онисимович', N'griva@gmail.com', N'GDFgdfgdf444')
SET IDENTITY_INSERT [dbo].[ChiefDepartmant] OFF
GO
SET IDENTITY_INSERT [dbo].[ChiefWorkshop] ON 

INSERT [dbo].[ChiefWorkshop] ([idChiefWorkshop], [Name], [Login], [Password]) VALUES (1, N'Аксёнов Лаврентий Германович', N'axe_now@outlook.com', N'<sdf.sdjsdsdf}w[ep[')
INSERT [dbo].[ChiefWorkshop] ([idChiefWorkshop], [Name], [Login], [Password]) VALUES (2, N'Мельников Ермак Федотович', N'melni@hh.ru', N'dfgDFs234')
INSERT [dbo].[ChiefWorkshop] ([idChiefWorkshop], [Name], [Login], [Password]) VALUES (3, N'Сафонов Эрнест Яковович', N'safonov@suvc.ru', N'gDFgdfgasdasdas656334')
SET IDENTITY_INSERT [dbo].[ChiefWorkshop] OFF
GO
SET IDENTITY_INSERT [dbo].[Country] ON 

INSERT [dbo].[Country] ([idCountry], [Name], [CarBrands], [CooperationOnDetails], [BusinessTripCooperation], [id_ChiefWorkshop], [id_ChiefDepartmant]) VALUES (1, N'Франция', N'Peugeot, Seat, Citroen, Renault', N'Да', N'Нет', 1, NULL)
INSERT [dbo].[Country] ([idCountry], [Name], [CarBrands], [CooperationOnDetails], [BusinessTripCooperation], [id_ChiefWorkshop], [id_ChiefDepartmant]) VALUES (2, N'Россия', N'Lada, UAZ, Ural, KamAZ', N'Нет', N'Да', 2, NULL)
INSERT [dbo].[Country] ([idCountry], [Name], [CarBrands], [CooperationOnDetails], [BusinessTripCooperation], [id_ChiefWorkshop], [id_ChiefDepartmant]) VALUES (3, N'Германия', N'Mercedes-Benz, BMW, Volkswagen, Audi, Porsche', N'Нет', N'Да', 3, NULL)
INSERT [dbo].[Country] ([idCountry], [Name], [CarBrands], [CooperationOnDetails], [BusinessTripCooperation], [id_ChiefWorkshop], [id_ChiefDepartmant]) VALUES (4, N'Япония', N'Toyota, Nissan, Honda, Isuzu, Suzuki, Daihatsu, Toyo', N'Нет', N'Да', NULL, 1)
INSERT [dbo].[Country] ([idCountry], [Name], [CarBrands], [CooperationOnDetails], [BusinessTripCooperation], [id_ChiefWorkshop], [id_ChiefDepartmant]) VALUES (5, N'Корея', N'Huyndai, KIA, SsangYung', N'Да', N'Да', NULL, 2)
INSERT [dbo].[Country] ([idCountry], [Name], [CarBrands], [CooperationOnDetails], [BusinessTripCooperation], [id_ChiefWorkshop], [id_ChiefDepartmant]) VALUES (6, N'Китай', N'Geely, Chery, BYD, Haval, Changan', N'Нет', N'Да', NULL, 3)
INSERT [dbo].[Country] ([idCountry], [Name], [CarBrands], [CooperationOnDetails], [BusinessTripCooperation], [id_ChiefWorkshop], [id_ChiefDepartmant]) VALUES (7, N'Америка', N'DMC, Chevrolet, Ford, Dodge, RAM', N'Нет', N'Да', NULL, 4)
INSERT [dbo].[Country] ([idCountry], [Name], [CarBrands], [CooperationOnDetails], [BusinessTripCooperation], [id_ChiefWorkshop], [id_ChiefDepartmant]) VALUES (8, N'Италия', N'Fiat, Ferrari, Lamborghini, Maserati', N'Нет', N'Да', NULL, NULL)
SET IDENTITY_INSERT [dbo].[Country] OFF
GO
SET IDENTITY_INSERT [dbo].[Departmant] ON 

INSERT [dbo].[Departmant] ([idDepartmant], [Name], [id_Chief], [Responsibilities]) VALUES (1, N'IT', 2, N'Установка ПО, обслуживание ПО, Обслуживание техники, Заправка картриджей, Консультирование пользователей, Системное администрирование, Сетевое администрирование')
INSERT [dbo].[Departmant] ([idDepartmant], [Name], [id_Chief], [Responsibilities]) VALUES (2, N'Администрация', 4, N'Управление персоналом, Прием сотрудников')
INSERT [dbo].[Departmant] ([idDepartmant], [Name], [id_Chief], [Responsibilities]) VALUES (3, N'Клиннинг', 3, N'Уборка помещений, Вынос мусора')
INSERT [dbo].[Departmant] ([idDepartmant], [Name], [id_Chief], [Responsibilities]) VALUES (4, N'Секретариат', 1, N'Канцелярия, заполнение отчетов, составление отчетов')
SET IDENTITY_INSERT [dbo].[Departmant] OFF
GO
SET IDENTITY_INSERT [dbo].[Details] ON 

INSERT [dbo].[Details] ([idDetails], [Name], [Price], [CountInWarehouse], [id_Category]) VALUES (1, N'Двигатель', 98000.0000, 34, 1)
INSERT [dbo].[Details] ([idDetails], [Name], [Price], [CountInWarehouse], [id_Category]) VALUES (2, N'Коробка передач', 54400.0000, 54, 3)
INSERT [dbo].[Details] ([idDetails], [Name], [Price], [CountInWarehouse], [id_Category]) VALUES (3, N'Распределительный вал', 5600.0000, 457, 1)
INSERT [dbo].[Details] ([idDetails], [Name], [Price], [CountInWarehouse], [id_Category]) VALUES (4, N'Коленчатый вал', 3800.0000, 555, 1)
INSERT [dbo].[Details] ([idDetails], [Name], [Price], [CountInWarehouse], [id_Category]) VALUES (5, N'Корзина сцепления', 3200.0000, 54, 3)
INSERT [dbo].[Details] ([idDetails], [Name], [Price], [CountInWarehouse], [id_Category]) VALUES (6, N'Диск сцепления', 1679.0000, 634, 3)
INSERT [dbo].[Details] ([idDetails], [Name], [Price], [CountInWarehouse], [id_Category]) VALUES (7, N'Амортизаторы', 5200.0000, 8990, 2)
INSERT [dbo].[Details] ([idDetails], [Name], [Price], [CountInWarehouse], [id_Category]) VALUES (8, N'Пружины', 3500.0000, 23, 2)
INSERT [dbo].[Details] ([idDetails], [Name], [Price], [CountInWarehouse], [id_Category]) VALUES (9, N'Опорные подшипники', 260.0000, 34, 2)
INSERT [dbo].[Details] ([idDetails], [Name], [Price], [CountInWarehouse], [id_Category]) VALUES (10, N'Подшипник сцепления', 600.0000, 456, 3)
INSERT [dbo].[Details] ([idDetails], [Name], [Price], [CountInWarehouse], [id_Category]) VALUES (11, N'Сайлентблок передних рычагов', 50.0000, 645, 2)
INSERT [dbo].[Details] ([idDetails], [Name], [Price], [CountInWarehouse], [id_Category]) VALUES (12, N'Сайлентблок задних рычагов', 50.0000, 623, 2)
INSERT [dbo].[Details] ([idDetails], [Name], [Price], [CountInWarehouse], [id_Category]) VALUES (13, N'Селектор КПП', 750.0000, 66, 3)
SET IDENTITY_INSERT [dbo].[Details] OFF
GO
SET IDENTITY_INSERT [dbo].[OfficeEmployee] ON 

INSERT [dbo].[OfficeEmployee] ([idOfficeEmployee], [Name], [id_Chief], [id_Departmant], [Login], [Password]) VALUES (1, N'Александров Аркадий Наумович', 2, 1, N'Anayakelv', N'r2O985')
INSERT [dbo].[OfficeEmployee] ([idOfficeEmployee], [Name], [id_Chief], [id_Departmant], [Login], [Password]) VALUES (2, N'Белозёров Велор Антонинович', 2, 1, N'Dozahn', N'kJ2458')
INSERT [dbo].[OfficeEmployee] ([idOfficeEmployee], [Name], [id_Chief], [id_Departmant], [Login], [Password]) VALUES (3, N'Бобылёв Герман Геннадьевич', 3, 3, N'Whiteshaper', N'gjWiBi')
INSERT [dbo].[OfficeEmployee] ([idOfficeEmployee], [Name], [id_Chief], [id_Departmant], [Login], [Password]) VALUES (4, N'Брагин Герасим Гордеевич', 1, 4, N'Ragesinger', N'3iErpP')
INSERT [dbo].[OfficeEmployee] ([idOfficeEmployee], [Name], [id_Chief], [id_Departmant], [Login], [Password]) VALUES (5, N'Виноградов Аристарх Семенович', 3, 3, N'Vudojas', N'RgKaqN')
INSERT [dbo].[OfficeEmployee] ([idOfficeEmployee], [Name], [id_Chief], [id_Departmant], [Login], [Password]) VALUES (6, N'Волков Альфред Рудольфович', 1, 4, N'Modindis', N'FLQsYD')
INSERT [dbo].[OfficeEmployee] ([idOfficeEmployee], [Name], [id_Chief], [id_Departmant], [Login], [Password]) VALUES (7, N'Воронов Станислав Адольфович', 4, 2, N'Ygglanim', N'xYDjfE')
INSERT [dbo].[OfficeEmployee] ([idOfficeEmployee], [Name], [id_Chief], [id_Departmant], [Login], [Password]) VALUES (8, N'Давыдов Гордей Яковович', 2, 1, N'Manos', N'rzmzdV')
INSERT [dbo].[OfficeEmployee] ([idOfficeEmployee], [Name], [id_Chief], [id_Departmant], [Login], [Password]) VALUES (9, N'Дементьев Мартын Яковович', 3, 3, N'Thomand', N'nMF2P7')
INSERT [dbo].[OfficeEmployee] ([idOfficeEmployee], [Name], [id_Chief], [id_Departmant], [Login], [Password]) VALUES (10, N'Зиновьев Гаянэ Михаилович', 2, 1, N'Mikarn', N'VtxiFL')
INSERT [dbo].[OfficeEmployee] ([idOfficeEmployee], [Name], [id_Chief], [id_Departmant], [Login], [Password]) VALUES (11, N'Зиновьев Карл Даниилович', 2, 1, N'Galrajas', N'lWOHPX')
INSERT [dbo].[OfficeEmployee] ([idOfficeEmployee], [Name], [id_Chief], [id_Departmant], [Login], [Password]) VALUES (12, N'Иванков Родион Филатович', 1, 4, N'Painwarden', N'o4EgF9')
INSERT [dbo].[OfficeEmployee] ([idOfficeEmployee], [Name], [id_Chief], [id_Departmant], [Login], [Password]) VALUES (13, N'Иванов Тихон Протасьевич', 4, 2, N'Saberfury', N'rsdS31')
INSERT [dbo].[OfficeEmployee] ([idOfficeEmployee], [Name], [id_Chief], [id_Departmant], [Login], [Password]) VALUES (14, N'Исаев Альфред Макарович', 2, 1, N'Kularn', N'W4nt9O')
INSERT [dbo].[OfficeEmployee] ([idOfficeEmployee], [Name], [id_Chief], [id_Departmant], [Login], [Password]) VALUES (15, N'Князев Владислав Денисович', 2, 1, N'Kulaath', N'Q4Hkdm')
INSERT [dbo].[OfficeEmployee] ([idOfficeEmployee], [Name], [id_Chief], [id_Departmant], [Login], [Password]) VALUES (16, N'Константинов Никифор Валентинович', 1, 4, N'Anayalen', N'XM8fQ8')
INSERT [dbo].[OfficeEmployee] ([idOfficeEmployee], [Name], [id_Chief], [id_Departmant], [Login], [Password]) VALUES (17, N'Корнилов Любовь Ярославович', 4, 2, N'Ariulen', N'FZmV9R')
INSERT [dbo].[OfficeEmployee] ([idOfficeEmployee], [Name], [id_Chief], [id_Departmant], [Login], [Password]) VALUES (18, N'Красильников Аввакуум Германнович', 3, 3, N'Keth', N'sazuLX')
INSERT [dbo].[OfficeEmployee] ([idOfficeEmployee], [Name], [id_Chief], [id_Departmant], [Login], [Password]) VALUES (19, N'Меркушев Геннадий Матвеевич', 3, 3, N'Kergas', N'ju81ol')
INSERT [dbo].[OfficeEmployee] ([idOfficeEmployee], [Name], [id_Chief], [id_Departmant], [Login], [Password]) VALUES (20, N'Михайлов Леонтий Германович', 2, 1, N'Sirantrius', N'2ycPqV')
INSERT [dbo].[OfficeEmployee] ([idOfficeEmployee], [Name], [id_Chief], [id_Departmant], [Login], [Password]) VALUES (21, N'Мышкин Витольд Максович', 2, 1, N'Vole', N'TniJgy')
INSERT [dbo].[OfficeEmployee] ([idOfficeEmployee], [Name], [id_Chief], [id_Departmant], [Login], [Password]) VALUES (22, N'Мясников Федор Лаврентьевич', 3, 3, N'Modal', N'mDEmj2')
INSERT [dbo].[OfficeEmployee] ([idOfficeEmployee], [Name], [id_Chief], [id_Departmant], [Login], [Password]) VALUES (23, N'Никитин Людвиг Донатович', 2, 1, N'Buzalar', N'QComEh')
INSERT [dbo].[OfficeEmployee] ([idOfficeEmployee], [Name], [id_Chief], [id_Departmant], [Login], [Password]) VALUES (24, N'Никифоров Авраам Аристархович', 3, 3, N'Tutilar', N'egzMJM')
INSERT [dbo].[OfficeEmployee] ([idOfficeEmployee], [Name], [id_Chief], [id_Departmant], [Login], [Password]) VALUES (25, N'Носов Пантелеймон Геннадиевич', 1, 4, N'Gataur', N'yjsvk8')
INSERT [dbo].[OfficeEmployee] ([idOfficeEmployee], [Name], [id_Chief], [id_Departmant], [Login], [Password]) VALUES (26, N'Орехов Родион Лукьянович', 2, 1, N'Malozius', N'KC6mPP')
INSERT [dbo].[OfficeEmployee] ([idOfficeEmployee], [Name], [id_Chief], [id_Departmant], [Login], [Password]) VALUES (27, N'Рогов Гаянэ Германнович', 2, 1, N'Aranaya', N'rxr5kp')
INSERT [dbo].[OfficeEmployee] ([idOfficeEmployee], [Name], [id_Chief], [id_Departmant], [Login], [Password]) VALUES (28, N'Романов Адриан Юрьевич', 4, 2, N'Kathriwyn', N'evVJ0O')
INSERT [dbo].[OfficeEmployee] ([idOfficeEmployee], [Name], [id_Chief], [id_Departmant], [Login], [Password]) VALUES (29, N'Рябов Владимир Вадимович', 4, 2, N'Anararon', N'28Nph8')
INSERT [dbo].[OfficeEmployee] ([idOfficeEmployee], [Name], [id_Chief], [id_Departmant], [Login], [Password]) VALUES (30, N'Суханов Корнелий Анатольевич', 2, 1, N'Dulrajas', N'lSEEuh')
INSERT [dbo].[OfficeEmployee] ([idOfficeEmployee], [Name], [id_Chief], [id_Departmant], [Login], [Password]) VALUES (31, N'Сысоев Лука Сергеевич', 3, 3, N'Tor', N'KJRnPE')
INSERT [dbo].[OfficeEmployee] ([idOfficeEmployee], [Name], [id_Chief], [id_Departmant], [Login], [Password]) VALUES (32, N'Терентьев Алексей Федотович', 2, 1, N'Shadowmaster', N'zqqPxE')
INSERT [dbo].[OfficeEmployee] ([idOfficeEmployee], [Name], [id_Chief], [id_Departmant], [Login], [Password]) VALUES (33, N'Тетерин Витольд Филиппович', 1, 4, N'Nualak', N'olWl1N')
INSERT [dbo].[OfficeEmployee] ([idOfficeEmployee], [Name], [id_Chief], [id_Departmant], [Login], [Password]) VALUES (34, N'Тихонов Андрей Платонович', 1, 4, N'Nilbine', N'lN5eyL')
INSERT [dbo].[OfficeEmployee] ([idOfficeEmployee], [Name], [id_Chief], [id_Departmant], [Login], [Password]) VALUES (35, N'Трофимов Аверкий Филиппович', 3, 3, N'Yogami', N'KNlqlR')
INSERT [dbo].[OfficeEmployee] ([idOfficeEmployee], [Name], [id_Chief], [id_Departmant], [Login], [Password]) VALUES (36, N'Фокин Кондрат Максович', 1, 4, N'Silvershade', N'9aq3Hq')
INSERT [dbo].[OfficeEmployee] ([idOfficeEmployee], [Name], [id_Chief], [id_Departmant], [Login], [Password]) VALUES (37, N'Шарапов Людвиг Еремеевич', 2, 1, N'Dagami', N'tQyd5j')
INSERT [dbo].[OfficeEmployee] ([idOfficeEmployee], [Name], [id_Chief], [id_Departmant], [Login], [Password]) VALUES (38, N'Шарапов Людвиг Иринеевич', 3, 3, N'Goltitilar', N'vWXgZX')
INSERT [dbo].[OfficeEmployee] ([idOfficeEmployee], [Name], [id_Chief], [id_Departmant], [Login], [Password]) VALUES (39, N'Шашков Федор Макарович', 3, 3, N'Fonaya', N'su9TsH')
INSERT [dbo].[OfficeEmployee] ([idOfficeEmployee], [Name], [id_Chief], [id_Departmant], [Login], [Password]) VALUES (40, N'Яковлев Гарри Святославович', 2, 1, N'Goltidal', N'r3W75u')
SET IDENTITY_INSERT [dbo].[OfficeEmployee] OFF
GO
SET IDENTITY_INSERT [dbo].[OfficeSecondment] ON 

INSERT [dbo].[OfficeSecondment] ([idSecondmant], [id_Employee], [id_Departmant], [DateStart], [DateEnd]) VALUES (1, 37, 1, CAST(N'2022-02-22' AS Date), CAST(N'2032-01-31' AS Date))
INSERT [dbo].[OfficeSecondment] ([idSecondmant], [id_Employee], [id_Departmant], [DateStart], [DateEnd]) VALUES (2, 25, 4, CAST(N'2022-02-22' AS Date), CAST(N'2032-01-31' AS Date))
INSERT [dbo].[OfficeSecondment] ([idSecondmant], [id_Employee], [id_Departmant], [DateStart], [DateEnd]) VALUES (3, 9, 3, CAST(N'2022-02-22' AS Date), CAST(N'2032-01-31' AS Date))
INSERT [dbo].[OfficeSecondment] ([idSecondmant], [id_Employee], [id_Departmant], [DateStart], [DateEnd]) VALUES (4, 23, 1, CAST(N'2022-02-22' AS Date), CAST(N'2032-01-31' AS Date))
INSERT [dbo].[OfficeSecondment] ([idSecondmant], [id_Employee], [id_Departmant], [DateStart], [DateEnd]) VALUES (5, 12, 4, CAST(N'2022-02-22' AS Date), CAST(N'2032-01-31' AS Date))
INSERT [dbo].[OfficeSecondment] ([idSecondmant], [id_Employee], [id_Departmant], [DateStart], [DateEnd]) VALUES (6, 5, 3, CAST(N'2022-02-22' AS Date), CAST(N'2032-01-31' AS Date))
INSERT [dbo].[OfficeSecondment] ([idSecondmant], [id_Employee], [id_Departmant], [DateStart], [DateEnd]) VALUES (7, 30, 1, CAST(N'2022-02-22' AS Date), CAST(N'2032-01-31' AS Date))
INSERT [dbo].[OfficeSecondment] ([idSecondmant], [id_Employee], [id_Departmant], [DateStart], [DateEnd]) VALUES (8, 13, 2, CAST(N'2022-02-22' AS Date), CAST(N'2032-01-31' AS Date))
SET IDENTITY_INSERT [dbo].[OfficeSecondment] OFF
GO
SET IDENTITY_INSERT [dbo].[ProductionEmployee] ON 

INSERT [dbo].[ProductionEmployee] ([idProductionEmployee], [Name], [id_ChiefWorkshop], [id_Workshop]) VALUES (1, N'Беляков Влас Эльдарович', 2, 2)
INSERT [dbo].[ProductionEmployee] ([idProductionEmployee], [Name], [id_ChiefWorkshop], [id_Workshop]) VALUES (2, N'Бобров Илья Мэлорович', 2, 2)
INSERT [dbo].[ProductionEmployee] ([idProductionEmployee], [Name], [id_ChiefWorkshop], [id_Workshop]) VALUES (3, N'Горбачёв Адриан Кимович', 2, 2)
INSERT [dbo].[ProductionEmployee] ([idProductionEmployee], [Name], [id_ChiefWorkshop], [id_Workshop]) VALUES (4, N'Горбунов Самуил Константинович', 2, 2)
INSERT [dbo].[ProductionEmployee] ([idProductionEmployee], [Name], [id_ChiefWorkshop], [id_Workshop]) VALUES (5, N'Дементьев Аким Всеволодович', 2, 2)
INSERT [dbo].[ProductionEmployee] ([idProductionEmployee], [Name], [id_ChiefWorkshop], [id_Workshop]) VALUES (6, N'Дмитриев Пантелей Михаилович', 1, 3)
INSERT [dbo].[ProductionEmployee] ([idProductionEmployee], [Name], [id_ChiefWorkshop], [id_Workshop]) VALUES (7, N'Егоров Всеволод Кимович', 3, 1)
INSERT [dbo].[ProductionEmployee] ([idProductionEmployee], [Name], [id_ChiefWorkshop], [id_Workshop]) VALUES (8, N'Зыков Мирон Никитевич', 3, 1)
INSERT [dbo].[ProductionEmployee] ([idProductionEmployee], [Name], [id_ChiefWorkshop], [id_Workshop]) VALUES (9, N'Коновалов Осип Геннадиевич', 2, 2)
INSERT [dbo].[ProductionEmployee] ([idProductionEmployee], [Name], [id_ChiefWorkshop], [id_Workshop]) VALUES (10, N'Корнилов Августин Викторович', 1, 3)
INSERT [dbo].[ProductionEmployee] ([idProductionEmployee], [Name], [id_ChiefWorkshop], [id_Workshop]) VALUES (11, N'Кулагин Вальтер Иринеевич', 2, 2)
INSERT [dbo].[ProductionEmployee] ([idProductionEmployee], [Name], [id_ChiefWorkshop], [id_Workshop]) VALUES (12, N'Михайлов Лазарь Григорьевич', 3, 1)
INSERT [dbo].[ProductionEmployee] ([idProductionEmployee], [Name], [id_ChiefWorkshop], [id_Workshop]) VALUES (13, N'Мишин Игнатий Феликсович', 2, 2)
INSERT [dbo].[ProductionEmployee] ([idProductionEmployee], [Name], [id_ChiefWorkshop], [id_Workshop]) VALUES (14, N'Мишин Овидий Геласьевич', 1, 3)
INSERT [dbo].[ProductionEmployee] ([idProductionEmployee], [Name], [id_ChiefWorkshop], [id_Workshop]) VALUES (15, N'Мухин Виссарион Куприянович', 2, 2)
INSERT [dbo].[ProductionEmployee] ([idProductionEmployee], [Name], [id_ChiefWorkshop], [id_Workshop]) VALUES (16, N'Наумов Ермолай Дамирович', 2, 2)
INSERT [dbo].[ProductionEmployee] ([idProductionEmployee], [Name], [id_ChiefWorkshop], [id_Workshop]) VALUES (17, N'Никифоров Илларион Аркадьевич', 1, 3)
INSERT [dbo].[ProductionEmployee] ([idProductionEmployee], [Name], [id_ChiefWorkshop], [id_Workshop]) VALUES (18, N'Никонов Варлам Федосеевич', 3, 1)
INSERT [dbo].[ProductionEmployee] ([idProductionEmployee], [Name], [id_ChiefWorkshop], [id_Workshop]) VALUES (19, N'Панов Тимофей Сергеевич', 3, 1)
INSERT [dbo].[ProductionEmployee] ([idProductionEmployee], [Name], [id_ChiefWorkshop], [id_Workshop]) VALUES (20, N'Пестов Бронислав Германович', 1, 3)
INSERT [dbo].[ProductionEmployee] ([idProductionEmployee], [Name], [id_ChiefWorkshop], [id_Workshop]) VALUES (21, N'Рыбаков Устин Максович', 1, 3)
INSERT [dbo].[ProductionEmployee] ([idProductionEmployee], [Name], [id_ChiefWorkshop], [id_Workshop]) VALUES (22, N'Симонов Корнелий Богданович', 1, 3)
INSERT [dbo].[ProductionEmployee] ([idProductionEmployee], [Name], [id_ChiefWorkshop], [id_Workshop]) VALUES (23, N'Соколов Фрол Мэлсович', 1, 3)
INSERT [dbo].[ProductionEmployee] ([idProductionEmployee], [Name], [id_ChiefWorkshop], [id_Workshop]) VALUES (24, N'Федосеев Власий Геннадиевич', 2, 2)
INSERT [dbo].[ProductionEmployee] ([idProductionEmployee], [Name], [id_ChiefWorkshop], [id_Workshop]) VALUES (25, N'Филатов Захар Антонинович', 1, 3)
INSERT [dbo].[ProductionEmployee] ([idProductionEmployee], [Name], [id_ChiefWorkshop], [id_Workshop]) VALUES (26, N'Филиппов Болеслав Дмитриевич', 1, 3)
INSERT [dbo].[ProductionEmployee] ([idProductionEmployee], [Name], [id_ChiefWorkshop], [id_Workshop]) VALUES (27, N'Харитонов Карл Всеволодович', 1, 3)
INSERT [dbo].[ProductionEmployee] ([idProductionEmployee], [Name], [id_ChiefWorkshop], [id_Workshop]) VALUES (28, N'Шилов Варлаам Святославович', 3, 1)
INSERT [dbo].[ProductionEmployee] ([idProductionEmployee], [Name], [id_ChiefWorkshop], [id_Workshop]) VALUES (29, N'Шубин Самуил Андреевич', 3, 1)
INSERT [dbo].[ProductionEmployee] ([idProductionEmployee], [Name], [id_ChiefWorkshop], [id_Workshop]) VALUES (30, N'Щербаков Мечеслав Витальевич', 2, 2)
SET IDENTITY_INSERT [dbo].[ProductionEmployee] OFF
GO
SET IDENTITY_INSERT [dbo].[ProductionSecondment] ON 

INSERT [dbo].[ProductionSecondment] ([idSecondmant], [id_Employee], [id_Workshop], [DateStart], [DateEnd]) VALUES (1, 16, 2, CAST(N'2022-02-22' AS Date), CAST(N'2032-01-31' AS Date))
INSERT [dbo].[ProductionSecondment] ([idSecondmant], [id_Employee], [id_Workshop], [DateStart], [DateEnd]) VALUES (2, 2, 2, CAST(N'2022-02-22' AS Date), CAST(N'2032-01-31' AS Date))
INSERT [dbo].[ProductionSecondment] ([idSecondmant], [id_Employee], [id_Workshop], [DateStart], [DateEnd]) VALUES (3, 8, 1, CAST(N'2022-02-22' AS Date), CAST(N'2032-01-31' AS Date))
INSERT [dbo].[ProductionSecondment] ([idSecondmant], [id_Employee], [id_Workshop], [DateStart], [DateEnd]) VALUES (4, 6, 3, CAST(N'2022-02-22' AS Date), CAST(N'2032-01-31' AS Date))
INSERT [dbo].[ProductionSecondment] ([idSecondmant], [id_Employee], [id_Workshop], [DateStart], [DateEnd]) VALUES (5, 15, 2, CAST(N'2022-02-22' AS Date), CAST(N'2032-01-31' AS Date))
INSERT [dbo].[ProductionSecondment] ([idSecondmant], [id_Employee], [id_Workshop], [DateStart], [DateEnd]) VALUES (6, 11, 2, CAST(N'2022-02-22' AS Date), CAST(N'2032-01-31' AS Date))
INSERT [dbo].[ProductionSecondment] ([idSecondmant], [id_Employee], [id_Workshop], [DateStart], [DateEnd]) VALUES (7, 5, 2, CAST(N'2022-02-22' AS Date), CAST(N'2032-01-31' AS Date))
INSERT [dbo].[ProductionSecondment] ([idSecondmant], [id_Employee], [id_Workshop], [DateStart], [DateEnd]) VALUES (8, 28, 1, CAST(N'2022-02-22' AS Date), CAST(N'2032-01-31' AS Date))
SET IDENTITY_INSERT [dbo].[ProductionSecondment] OFF
GO
SET IDENTITY_INSERT [dbo].[Workshop] ON 

INSERT [dbo].[Workshop] ([idWorkshop], [Name], [id_ChiefWorkshop], [Responsibilities]) VALUES (1, N'Разработки', 3, N'Разработка прототипа, разработка концепта, проектирование детали, создание документации, ввод в конвеерное производство деталей')
INSERT [dbo].[Workshop] ([idWorkshop], [Name], [id_ChiefWorkshop], [Responsibilities]) VALUES (2, N'Сборки', 2, N'Сборка деталей, выявление брака')
INSERT [dbo].[Workshop] ([idWorkshop], [Name], [id_ChiefWorkshop], [Responsibilities]) VALUES (3, N'Фасовки', 1, N'Распределние по коробкам деталей, упаковка деталей, сортировка деталей')
SET IDENTITY_INSERT [dbo].[Workshop] OFF
GO
ALTER TABLE [dbo].[Country]  WITH CHECK ADD  CONSTRAINT [FK_Country_ChiefDepartmant1] FOREIGN KEY([id_ChiefDepartmant])
REFERENCES [dbo].[ChiefDepartmant] ([idChiefDepartmant])
GO
ALTER TABLE [dbo].[Country] CHECK CONSTRAINT [FK_Country_ChiefDepartmant1]
GO
ALTER TABLE [dbo].[Country]  WITH CHECK ADD  CONSTRAINT [FK_Country_ChiefWorkshop1] FOREIGN KEY([id_ChiefWorkshop])
REFERENCES [dbo].[ChiefWorkshop] ([idChiefWorkshop])
GO
ALTER TABLE [dbo].[Country] CHECK CONSTRAINT [FK_Country_ChiefWorkshop1]
GO
ALTER TABLE [dbo].[Departmant]  WITH CHECK ADD  CONSTRAINT [FK_Departmant_ChiefDepartmant] FOREIGN KEY([id_Chief])
REFERENCES [dbo].[ChiefDepartmant] ([idChiefDepartmant])
GO
ALTER TABLE [dbo].[Departmant] CHECK CONSTRAINT [FK_Departmant_ChiefDepartmant]
GO
ALTER TABLE [dbo].[Details]  WITH CHECK ADD  CONSTRAINT [FK_Details_Category] FOREIGN KEY([id_Category])
REFERENCES [dbo].[Category] ([idCategory])
GO
ALTER TABLE [dbo].[Details] CHECK CONSTRAINT [FK_Details_Category]
GO
ALTER TABLE [dbo].[OfficeEmployee]  WITH CHECK ADD  CONSTRAINT [FK_OfficeEmployee_ChiefDepartmant] FOREIGN KEY([id_Chief])
REFERENCES [dbo].[ChiefDepartmant] ([idChiefDepartmant])
GO
ALTER TABLE [dbo].[OfficeEmployee] CHECK CONSTRAINT [FK_OfficeEmployee_ChiefDepartmant]
GO
ALTER TABLE [dbo].[OfficeEmployee]  WITH CHECK ADD  CONSTRAINT [FK_OfficeEmployee_Departmant] FOREIGN KEY([id_Departmant])
REFERENCES [dbo].[Departmant] ([idDepartmant])
GO
ALTER TABLE [dbo].[OfficeEmployee] CHECK CONSTRAINT [FK_OfficeEmployee_Departmant]
GO
ALTER TABLE [dbo].[OfficeSecondment]  WITH CHECK ADD  CONSTRAINT [FK_OfficeSecondment_Departmant] FOREIGN KEY([id_Departmant])
REFERENCES [dbo].[Departmant] ([idDepartmant])
GO
ALTER TABLE [dbo].[OfficeSecondment] CHECK CONSTRAINT [FK_OfficeSecondment_Departmant]
GO
ALTER TABLE [dbo].[OfficeSecondment]  WITH CHECK ADD  CONSTRAINT [FK_OfficeSecondment_OfficeEmployee] FOREIGN KEY([id_Employee])
REFERENCES [dbo].[OfficeEmployee] ([idOfficeEmployee])
GO
ALTER TABLE [dbo].[OfficeSecondment] CHECK CONSTRAINT [FK_OfficeSecondment_OfficeEmployee]
GO
ALTER TABLE [dbo].[ProductionEmployee]  WITH CHECK ADD  CONSTRAINT [FK_ProductionEmployee_ChiefWorkshop] FOREIGN KEY([id_ChiefWorkshop])
REFERENCES [dbo].[ChiefWorkshop] ([idChiefWorkshop])
GO
ALTER TABLE [dbo].[ProductionEmployee] CHECK CONSTRAINT [FK_ProductionEmployee_ChiefWorkshop]
GO
ALTER TABLE [dbo].[ProductionEmployee]  WITH CHECK ADD  CONSTRAINT [FK_ProductionEmployee_Workshop] FOREIGN KEY([id_Workshop])
REFERENCES [dbo].[Workshop] ([idWorkshop])
GO
ALTER TABLE [dbo].[ProductionEmployee] CHECK CONSTRAINT [FK_ProductionEmployee_Workshop]
GO
ALTER TABLE [dbo].[ProductionSecondment]  WITH CHECK ADD  CONSTRAINT [FK_ProductionSecondment_ProductionEmployee] FOREIGN KEY([id_Employee])
REFERENCES [dbo].[ProductionEmployee] ([idProductionEmployee])
GO
ALTER TABLE [dbo].[ProductionSecondment] CHECK CONSTRAINT [FK_ProductionSecondment_ProductionEmployee]
GO
ALTER TABLE [dbo].[ProductionSecondment]  WITH CHECK ADD  CONSTRAINT [FK_ProductionSecondment_Workshop] FOREIGN KEY([id_Workshop])
REFERENCES [dbo].[Workshop] ([idWorkshop])
GO
ALTER TABLE [dbo].[ProductionSecondment] CHECK CONSTRAINT [FK_ProductionSecondment_Workshop]
GO
ALTER TABLE [dbo].[Workshop]  WITH CHECK ADD  CONSTRAINT [FK_Workshop_ChiefWorkshop] FOREIGN KEY([id_ChiefWorkshop])
REFERENCES [dbo].[ChiefWorkshop] ([idChiefWorkshop])
GO
ALTER TABLE [dbo].[Workshop] CHECK CONSTRAINT [FK_Workshop_ChiefWorkshop]
GO
USE [master]
GO
ALTER DATABASE [ivanovava_ych] SET  READ_WRITE 
GO
