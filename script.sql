USE [ТканиХакасии]
GO
/****** Object:  Table [dbo].[ВидыТканей]    Script Date: 22.03.2022 22:54:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ВидыТканей](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[ВидТканей] [nvarchar](50) NULL,
 CONSTRAINT [PK_ВидыТканей] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ВидыФурнитур]    Script Date: 22.03.2022 22:54:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ВидыФурнитур](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[ВидФурнитуры] [nvarchar](50) NULL,
 CONSTRAINT [PK_ВидФурнитуры] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ЕдИзмерения]    Script Date: 22.03.2022 22:54:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ЕдИзмерения](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[ЕдИзм] [nvarchar](50) NULL,
 CONSTRAINT [PK_ЕдИзмерения] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Клиенты]    Script Date: 22.03.2022 22:54:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Клиенты](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Фамилия] [nvarchar](50) NULL,
	[Имя] [nvarchar](50) NULL,
	[Email] [nvarchar](50) NULL,
	[Телефон] [nvarchar](50) NULL,
	[Фото] [image] NULL,
 CONSTRAINT [PK_Клиенты] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Материалы]    Script Date: 22.03.2022 22:54:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Материалы](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Материал] [nvarchar](50) NULL,
 CONSTRAINT [PK_Материал] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Покупка]    Script Date: 22.03.2022 22:54:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Покупка](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Фурнитура] [int] NULL,
	[Ткань] [int] NULL,
	[Услуга] [int] NULL,
	[Клиент] [int] NULL,
	[Количество] [float] NULL,
	[Дата] [date] NULL,
 CONSTRAINT [PK_ПокупкаФурнитуры] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Производители]    Script Date: 22.03.2022 22:54:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Производители](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Производитель] [nvarchar](50) NULL,
 CONSTRAINT [PK_Производители] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Ткани]    Script Date: 22.03.2022 22:54:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Ткани](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Наименование] [nvarchar](50) NULL,
	[ВидТкани] [int] NULL,
	[Материал] [int] NULL,
	[Количество] [float] NULL,
	[ДлинаВРулоне] [float] NULL,
	[Ширина] [float] NULL,
	[Плотность] [float] NULL,
	[Производитель] [int] NULL,
	[Цена] [float] NULL,
	[Скидка] [float] NULL,
	[Фото] [image] NULL,
 CONSTRAINT [PK_Ткани] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Услуги]    Script Date: 22.03.2022 22:54:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Услуги](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Услуга] [nvarchar](50) NULL,
	[Цена] [float] NULL,
	[Скидка] [float] NULL,
 CONSTRAINT [PK_Услуги] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Фурнитура]    Script Date: 22.03.2022 22:54:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Фурнитура](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Наименование] [nvarchar](50) NULL,
	[ВидФурнитуры] [int] NULL,
	[ЕдИзмерения] [int] NULL,
	[Производитель] [int] NULL,
	[Цена] [float] NULL,
	[Количество] [float] NULL,
	[Скидка] [float] NULL,
	[Фото] [image] NULL,
 CONSTRAINT [PK_Фурнитура] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[ВидыТканей] ON 

INSERT [dbo].[ВидыТканей] ([ID], [ВидТканей]) VALUES (1, N'Одёжная')
INSERT [dbo].[ВидыТканей] ([ID], [ВидТканей]) VALUES (2, N'Мебельная')
INSERT [dbo].[ВидыТканей] ([ID], [ВидТканей]) VALUES (3, N'Автомобильная')
INSERT [dbo].[ВидыТканей] ([ID], [ВидТканей]) VALUES (4, N'Натуральная кожа')
INSERT [dbo].[ВидыТканей] ([ID], [ВидТканей]) VALUES (5, N'Постельная')
SET IDENTITY_INSERT [dbo].[ВидыТканей] OFF
GO
SET IDENTITY_INSERT [dbo].[ВидыФурнитур] ON 

INSERT [dbo].[ВидыФурнитур] ([ID], [ВидФурнитуры]) VALUES (1, N'Молния')
INSERT [dbo].[ВидыФурнитур] ([ID], [ВидФурнитуры]) VALUES (2, N'Нитка')
INSERT [dbo].[ВидыФурнитур] ([ID], [ВидФурнитуры]) VALUES (3, N'Бегунок')
INSERT [dbo].[ВидыФурнитур] ([ID], [ВидФурнитуры]) VALUES (4, N'Кружева')
INSERT [dbo].[ВидыФурнитур] ([ID], [ВидФурнитуры]) VALUES (5, N'Пряжка')
INSERT [dbo].[ВидыФурнитур] ([ID], [ВидФурнитуры]) VALUES (6, N'Шнур')
SET IDENTITY_INSERT [dbo].[ВидыФурнитур] OFF
GO
SET IDENTITY_INSERT [dbo].[ЕдИзмерения] ON 

INSERT [dbo].[ЕдИзмерения] ([ID], [ЕдИзм]) VALUES (1, N'Штука')
INSERT [dbo].[ЕдИзмерения] ([ID], [ЕдИзм]) VALUES (2, N'Метр')
SET IDENTITY_INSERT [dbo].[ЕдИзмерения] OFF
GO
SET IDENTITY_INSERT [dbo].[Клиенты] ON 

INSERT [dbo].[Клиенты] ([ID], [Фамилия], [Имя], [Email], [Телефон], [Фото]) VALUES (1, N'Абрамов
', N'Станислав
', N'solomon@att.net
', N'7(6545)478-87-79 
', NULL)
INSERT [dbo].[Клиенты] ([ID], [Фамилия], [Имя], [Email], [Телефон], [Фото]) VALUES (2, N'Александров', N'Станислав', N'bigmauler@aol.com', N'7(18)164-05-12 ', NULL)
INSERT [dbo].[Клиенты] ([ID], [Фамилия], [Имя], [Email], [Телефон], [Фото]) VALUES (3, N'Андреев', N'Станислав', N'budinger@mac.com', N'7(02)993-91-28 ', NULL)
INSERT [dbo].[Клиенты] ([ID], [Фамилия], [Имя], [Email], [Телефон], [Фото]) VALUES (4, N'Андреева', N'Патрисия', N'jigsaw@aol.com', N'7(9648)953-81-26 ', NULL)
INSERT [dbo].[Клиенты] ([ID], [Фамилия], [Имя], [Email], [Телефон], [Фото]) VALUES (5, N'Анисимова', N'Тамара', N'schwaang@mac.com', N'7(66)128-04-10 ', NULL)
INSERT [dbo].[Клиенты] ([ID], [Фамилия], [Имя], [Email], [Телефон], [Фото]) VALUES (6, N'Архипова', N'Прасковья', N'cgcra@live.com', N'7(86)540-10-21 ', NULL)
INSERT [dbo].[Клиенты] ([ID], [Фамилия], [Имя], [Email], [Телефон], [Фото]) VALUES (7, N'Белозёрова', N'Диана', N'dialworld@aol.com', N'7(9900)174-59-87 ', NULL)
INSERT [dbo].[Клиенты] ([ID], [Фамилия], [Имя], [Email], [Телефон], [Фото]) VALUES (8, N'Беляева', N'Сабрина', N'agapow@gmail.com', N'7(6580)534-32-58 ', NULL)
INSERT [dbo].[Клиенты] ([ID], [Фамилия], [Имя], [Email], [Телефон], [Фото]) VALUES (9, N'Бирюкова', N'Инара', N'smpeters@hotmail.com', N'7(098)346-50-58 ', NULL)
INSERT [dbo].[Клиенты] ([ID], [Фамилия], [Имя], [Email], [Телефон], [Фото]) VALUES (10, N'Блинов', N'Евгений', N'moxfulder@outlook.com', N'7(0852)321-82-64 ', NULL)
INSERT [dbo].[Клиенты] ([ID], [Фамилия], [Имя], [Email], [Телефон], [Фото]) VALUES (11, N'Блохин', N'Пантелеймон', N'balchen@comcast.net', N'7(9524)556-48-98 ', NULL)
INSERT [dbo].[Клиенты] ([ID], [Фамилия], [Имя], [Email], [Телефон], [Фото]) VALUES (12, N'Большаков', N'Вадим', N'uncle@gmail.com', N'7(386)641-13-37 ', NULL)
INSERT [dbo].[Клиенты] ([ID], [Фамилия], [Имя], [Email], [Телефон], [Фото]) VALUES (13, N'Быкова', N'Тала', N'ganter@optonline.net', N'7(13)915-53-53 ', NULL)
INSERT [dbo].[Клиенты] ([ID], [Фамилия], [Имя], [Email], [Телефон], [Фото]) VALUES (14, N'Васильев', N'Оскар', N'miturria@verizon.net', N'7(585)801-94-29 ', NULL)
INSERT [dbo].[Клиенты] ([ID], [Фамилия], [Имя], [Email], [Телефон], [Фото]) VALUES (15, N'Волков', N'Людвиг', N'jrkorson@msn.com', N'7(8459)592-05-58 ', NULL)
INSERT [dbo].[Клиенты] ([ID], [Фамилия], [Имя], [Email], [Телефон], [Фото]) VALUES (16, N'Воронова', N'Изабелла', N'kildjean@sbcglobal.net', N'7(17)433-44-98 ', NULL)
INSERT [dbo].[Клиенты] ([ID], [Фамилия], [Имя], [Email], [Телефон], [Фото]) VALUES (17, N'Галкин', N'Эрик', N'snunez@verizon.net', N'7(759)873-77-39 ', NULL)
INSERT [dbo].[Клиенты] ([ID], [Фамилия], [Имя], [Email], [Телефон], [Фото]) VALUES (18, N'Голубев', N'Иосиф', N'smcnabb@att.net', N'7(78)972-73-11 ', NULL)
INSERT [dbo].[Клиенты] ([ID], [Фамилия], [Имя], [Email], [Телефон], [Фото]) VALUES (19, N'Горбачёва', N'Никки', N'chinthaka@att.net', N'7(94)789-69-20 ', NULL)
INSERT [dbo].[Клиенты] ([ID], [Фамилия], [Имя], [Email], [Телефон], [Фото]) VALUES (20, N'Горшкова', N'Марта', N'gbacon@mac.com', N'7(544)650-59-03', NULL)
SET IDENTITY_INSERT [dbo].[Клиенты] OFF
GO
SET IDENTITY_INSERT [dbo].[Материалы] ON 

INSERT [dbo].[Материалы] ([ID], [Материал]) VALUES (1, N'Велюр')
INSERT [dbo].[Материалы] ([ID], [Материал]) VALUES (2, N'Рогожка')
INSERT [dbo].[Материалы] ([ID], [Материал]) VALUES (3, N'Кожзаменитель')
INSERT [dbo].[Материалы] ([ID], [Материал]) VALUES (4, N'Паралон')
INSERT [dbo].[Материалы] ([ID], [Материал]) VALUES (5, N'Станбонд')
INSERT [dbo].[Материалы] ([ID], [Материал]) VALUES (6, N'Экокожа')
INSERT [dbo].[Материалы] ([ID], [Материал]) VALUES (7, N'Овчина')
INSERT [dbo].[Материалы] ([ID], [Материал]) VALUES (8, N'Альконтара')
INSERT [dbo].[Материалы] ([ID], [Материал]) VALUES (9, N'КРС')
INSERT [dbo].[Материалы] ([ID], [Материал]) VALUES (10, N'Пленка ПВХ')
INSERT [dbo].[Материалы] ([ID], [Материал]) VALUES (11, N'Замша')
INSERT [dbo].[Материалы] ([ID], [Материал]) VALUES (12, N'Габардин')
INSERT [dbo].[Материалы] ([ID], [Материал]) VALUES (13, N'Шёлк')
INSERT [dbo].[Материалы] ([ID], [Материал]) VALUES (14, N'Вискоза')
INSERT [dbo].[Материалы] ([ID], [Материал]) VALUES (15, N'Полиэестр')
SET IDENTITY_INSERT [dbo].[Материалы] OFF
GO
SET IDENTITY_INSERT [dbo].[Производители] ON 

INSERT [dbo].[Производители] ([ID], [Производитель]) VALUES (1, N'Китай')
INSERT [dbo].[Производители] ([ID], [Производитель]) VALUES (2, N'Турция')
INSERT [dbo].[Производители] ([ID], [Производитель]) VALUES (3, N'Франция')
INSERT [dbo].[Производители] ([ID], [Производитель]) VALUES (4, N'Индия')
INSERT [dbo].[Производители] ([ID], [Производитель]) VALUES (5, N'Тайвань')
INSERT [dbo].[Производители] ([ID], [Производитель]) VALUES (6, N'Великобритания')
INSERT [dbo].[Производители] ([ID], [Производитель]) VALUES (7, N'Греция')
INSERT [dbo].[Производители] ([ID], [Производитель]) VALUES (8, N'Италия')
INSERT [dbo].[Производители] ([ID], [Производитель]) VALUES (9, N'Германия')
INSERT [dbo].[Производители] ([ID], [Производитель]) VALUES (10, N'Япония')
SET IDENTITY_INSERT [dbo].[Производители] OFF
GO
SET IDENTITY_INSERT [dbo].[Ткани] ON 

INSERT [dbo].[Ткани] ([ID], [Наименование], [ВидТкани], [Материал], [Количество], [ДлинаВРулоне], [Ширина], [Плотность], [Производитель], [Цена], [Скидка], [Фото]) VALUES (1, N'Габардин', 1, 12, 3, 3, 1.48, 235, 1, 230, 0.2, NULL)
INSERT [dbo].[Ткани] ([ID], [Наименование], [ВидТкани], [Материал], [Количество], [ДлинаВРулоне], [Ширина], [Плотность], [Производитель], [Цена], [Скидка], [Фото]) VALUES (2, N'Подкладочный шелк', 1, 14, 2, 3, 1.41, 73, 2, 85, 0, NULL)
INSERT [dbo].[Ткани] ([ID], [Наименование], [ВидТкани], [Материал], [Количество], [ДлинаВРулоне], [Ширина], [Плотность], [Производитель], [Цена], [Скидка], [Фото]) VALUES (3, N'Креп-барби', 1, 14, 5, 2, 1.5, 190, 3, 480, 0, NULL)
INSERT [dbo].[Ткани] ([ID], [Наименование], [ВидТкани], [Материал], [Количество], [ДлинаВРулоне], [Ширина], [Плотность], [Производитель], [Цена], [Скидка], [Фото]) VALUES (4, N'Оксфорд 600D полиуретановый', 1, 15, 4, 1.5, 1, 600, 4, 500, 0.15, NULL)
INSERT [dbo].[Ткани] ([ID], [Наименование], [ВидТкани], [Материал], [Количество], [ДлинаВРулоне], [Ширина], [Плотность], [Производитель], [Цена], [Скидка], [Фото]) VALUES (14, N'Габардин', 1, 1, 1, 30, 10, 25, 1, 500, 0, NULL)
SET IDENTITY_INSERT [dbo].[Ткани] OFF
GO
SET IDENTITY_INSERT [dbo].[Услуги] ON 

INSERT [dbo].[Услуги] ([ID], [Услуга], [Цена], [Скидка]) VALUES (1, N'Ателье', 400, 0)
INSERT [dbo].[Услуги] ([ID], [Услуга], [Цена], [Скидка]) VALUES (2, N'Установка бегунков', 50, 0.1)
INSERT [dbo].[Услуги] ([ID], [Услуга], [Цена], [Скидка]) VALUES (3, N'Установка люверсов', 30, 0)
INSERT [dbo].[Услуги] ([ID], [Услуга], [Цена], [Скидка]) VALUES (4, N'Замена молнии', 250, 0)
INSERT [dbo].[Услуги] ([ID], [Услуга], [Цена], [Скидка]) VALUES (5, N'Замена бегунков', 70, 0.1)
INSERT [dbo].[Услуги] ([ID], [Услуга], [Цена], [Скидка]) VALUES (6, N'Пошив штор', 30, 0)
INSERT [dbo].[Услуги] ([ID], [Услуга], [Цена], [Скидка]) VALUES (7, N'Установка молнии', 200, 0)
SET IDENTITY_INSERT [dbo].[Услуги] OFF
GO
SET IDENTITY_INSERT [dbo].[Фурнитура] ON 

INSERT [dbo].[Фурнитура] ([ID], [Наименование], [ВидФурнитуры], [ЕдИзмерения], [Производитель], [Цена], [Количество], [Скидка], [Фото]) VALUES (1, N'Нитка №40', 2, 2, 1, 25, 10, 0.1, NULL)
INSERT [dbo].[Фурнитура] ([ID], [Наименование], [ВидФурнитуры], [ЕдИзмерения], [Производитель], [Цена], [Количество], [Скидка], [Фото]) VALUES (2, N'Нитка №20', 2, 2, 2, 495, 5, 0.2, NULL)
INSERT [dbo].[Фурнитура] ([ID], [Наименование], [ВидФурнитуры], [ЕдИзмерения], [Производитель], [Цена], [Количество], [Скидка], [Фото]) VALUES (3, N'Нитка №10', 2, 2, 3, 50, 15, 0.3, NULL)
INSERT [dbo].[Фурнитура] ([ID], [Наименование], [ВидФурнитуры], [ЕдИзмерения], [Производитель], [Цена], [Количество], [Скидка], [Фото]) VALUES (4, N'Никта Капрон обувной', 2, 2, 4, 50, 4, 0, NULL)
INSERT [dbo].[Фурнитура] ([ID], [Наименование], [ВидФурнитуры], [ЕдИзмерения], [Производитель], [Цена], [Количество], [Скидка], [Фото]) VALUES (5, N'100ЛЛ нитка армированная', 2, 2, 5, 50, 6, 0, NULL)
INSERT [dbo].[Фурнитура] ([ID], [Наименование], [ВидФурнитуры], [ЕдИзмерения], [Производитель], [Цена], [Количество], [Скидка], [Фото]) VALUES (6, N'Плетеная вощеная нить 0,8 мм', 2, 2, 6, 99, 7, 0, NULL)
INSERT [dbo].[Фурнитура] ([ID], [Наименование], [ВидФурнитуры], [ЕдИзмерения], [Производитель], [Цена], [Количество], [Скидка], [Фото]) VALUES (7, N'Плетенный шнур 0,27 мм', 6, 2, 7, 920, 3, 0, NULL)
SET IDENTITY_INSERT [dbo].[Фурнитура] OFF
GO
ALTER TABLE [dbo].[Покупка]  WITH CHECK ADD  CONSTRAINT [FK_Покупка_Клиенты] FOREIGN KEY([Клиент])
REFERENCES [dbo].[Клиенты] ([ID])
GO
ALTER TABLE [dbo].[Покупка] CHECK CONSTRAINT [FK_Покупка_Клиенты]
GO
ALTER TABLE [dbo].[Покупка]  WITH CHECK ADD  CONSTRAINT [FK_Покупка_Ткани] FOREIGN KEY([Ткань])
REFERENCES [dbo].[Ткани] ([ID])
GO
ALTER TABLE [dbo].[Покупка] CHECK CONSTRAINT [FK_Покупка_Ткани]
GO
ALTER TABLE [dbo].[Покупка]  WITH CHECK ADD  CONSTRAINT [FK_Покупка_Услуги] FOREIGN KEY([Услуга])
REFERENCES [dbo].[Услуги] ([ID])
GO
ALTER TABLE [dbo].[Покупка] CHECK CONSTRAINT [FK_Покупка_Услуги]
GO
ALTER TABLE [dbo].[Покупка]  WITH CHECK ADD  CONSTRAINT [FK_Покупка_Фурнитура] FOREIGN KEY([Фурнитура])
REFERENCES [dbo].[Фурнитура] ([ID])
GO
ALTER TABLE [dbo].[Покупка] CHECK CONSTRAINT [FK_Покупка_Фурнитура]
GO
ALTER TABLE [dbo].[Ткани]  WITH CHECK ADD  CONSTRAINT [FK_Ткани_ВидыТканей] FOREIGN KEY([ВидТкани])
REFERENCES [dbo].[ВидыТканей] ([ID])
GO
ALTER TABLE [dbo].[Ткани] CHECK CONSTRAINT [FK_Ткани_ВидыТканей]
GO
ALTER TABLE [dbo].[Ткани]  WITH CHECK ADD  CONSTRAINT [FK_Ткани_Материал] FOREIGN KEY([Материал])
REFERENCES [dbo].[Материалы] ([ID])
GO
ALTER TABLE [dbo].[Ткани] CHECK CONSTRAINT [FK_Ткани_Материал]
GO
ALTER TABLE [dbo].[Ткани]  WITH CHECK ADD  CONSTRAINT [FK_Ткани_Производители] FOREIGN KEY([Производитель])
REFERENCES [dbo].[Производители] ([ID])
GO
ALTER TABLE [dbo].[Ткани] CHECK CONSTRAINT [FK_Ткани_Производители]
GO
ALTER TABLE [dbo].[Фурнитура]  WITH CHECK ADD  CONSTRAINT [FK_Фурнитура_ВидФурнитуры] FOREIGN KEY([ВидФурнитуры])
REFERENCES [dbo].[ВидыФурнитур] ([ID])
GO
ALTER TABLE [dbo].[Фурнитура] CHECK CONSTRAINT [FK_Фурнитура_ВидФурнитуры]
GO
ALTER TABLE [dbo].[Фурнитура]  WITH CHECK ADD  CONSTRAINT [FK_Фурнитура_ЕдИзмерения] FOREIGN KEY([ЕдИзмерения])
REFERENCES [dbo].[ЕдИзмерения] ([ID])
GO
ALTER TABLE [dbo].[Фурнитура] CHECK CONSTRAINT [FK_Фурнитура_ЕдИзмерения]
GO
ALTER TABLE [dbo].[Фурнитура]  WITH CHECK ADD  CONSTRAINT [FK_Фурнитура_Производители] FOREIGN KEY([Производитель])
REFERENCES [dbo].[Производители] ([ID])
GO
ALTER TABLE [dbo].[Фурнитура] CHECK CONSTRAINT [FK_Фурнитура_Производители]
GO
