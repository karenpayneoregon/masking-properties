
GO
/****** Object:  Database [OED.Lessons]    Script Date: 2/3/2023 6:46:05 AM ******/

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Categories](
	[CategoryId] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](max) NULL,
 CONSTRAINT [PK_Categories] PRIMARY KEY CLUSTERED 
(
	[CategoryId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Taxpayer]    Script Date: 2/3/2023 6:46:05 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Taxpayer](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[FirstName] [nvarchar](max) NULL,
	[LastName] [nvarchar](max) NULL,
	[SSN] [nvarchar](max) NULL,
	[Pin] [nvarchar](max) NULL,
	[StartDate] [date] NULL,
	[CategoryId] [int] NOT NULL,
	[Added] [datetime2](7) NULL,
	[DeletedOn] [datetime2](7) NULL,
	[Modified] [datetime2](7) NULL,
	[Deleted] [bit] NULL,
 CONSTRAINT [PK_Taxpayer] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Categories] ON 

INSERT [dbo].[Categories] ([CategoryId], [Description]) VALUES (1, N'Needs review')
INSERT [dbo].[Categories] ([CategoryId], [Description]) VALUES (2, N'Incomplete')
INSERT [dbo].[Categories] ([CategoryId], [Description]) VALUES (3, N'Rejected')
INSERT [dbo].[Categories] ([CategoryId], [Description]) VALUES (4, N'Complete')
SET IDENTITY_INSERT [dbo].[Categories] OFF
GO
SET IDENTITY_INSERT [dbo].[Taxpayer] ON 

INSERT [dbo].[Taxpayer] ([Id], [FirstName], [LastName], [SSN], [Pin], [StartDate], [CategoryId], [Added], [DeletedOn], [Modified], [Deleted]) VALUES (1, N'Karen', N'Payne', N'111223333', N'4873', CAST(N'2003-02-07' AS Date), 3, CAST(N'2022-10-30T23:06:20.8855124' AS DateTime2), NULL, CAST(N'2023-01-21T12:18:36.9770068' AS DateTime2), 1)
INSERT [dbo].[Taxpayer] ([Id], [FirstName], [LastName], [SSN], [Pin], [StartDate], [CategoryId], [Added], [DeletedOn], [Modified], [Deleted]) VALUES (2, N'Christina', N'Pollich', N'951530548', N'2070', CAST(N'2021-08-23' AS Date), 4, CAST(N'2022-10-30T23:06:20.8863903' AS DateTime2), NULL, NULL, NULL)
INSERT [dbo].[Taxpayer] ([Id], [FirstName], [LastName], [SSN], [Pin], [StartDate], [CategoryId], [Added], [DeletedOn], [Modified], [Deleted]) VALUES (3, N'Inez', N'Sawayn', N'302546195', N'7039', CAST(N'2022-09-18' AS Date), 3, CAST(N'2022-10-30T23:06:20.8864074' AS DateTime2), NULL, CAST(N'2023-01-21T12:18:36.9770068' AS DateTime2), 0)
INSERT [dbo].[Taxpayer] ([Id], [FirstName], [LastName], [SSN], [Pin], [StartDate], [CategoryId], [Added], [DeletedOn], [Modified], [Deleted]) VALUES (4, N'Sonia', N'Parisian', N'407125219', N'7078', CAST(N'2022-02-20' AS Date), 1, CAST(N'2022-10-30T23:06:20.8864167' AS DateTime2), NULL, NULL, NULL)
INSERT [dbo].[Taxpayer] ([Id], [FirstName], [LastName], [SSN], [Pin], [StartDate], [CategoryId], [Added], [DeletedOn], [Modified], [Deleted]) VALUES (5, N'Ryan', N'Reichel', N'556562762', N'3835', CAST(N'2021-05-12' AS Date), 4, CAST(N'2022-10-30T23:06:20.8864239' AS DateTime2), NULL, NULL, NULL)
INSERT [dbo].[Taxpayer] ([Id], [FirstName], [LastName], [SSN], [Pin], [StartDate], [CategoryId], [Added], [DeletedOn], [Modified], [Deleted]) VALUES (6, N'Janis', N'Altenwerth', N'048388417', N'4102', CAST(N'2021-01-17' AS Date), 3, CAST(N'2022-10-30T23:06:20.8864311' AS DateTime2), NULL, NULL, NULL)
INSERT [dbo].[Taxpayer] ([Id], [FirstName], [LastName], [SSN], [Pin], [StartDate], [CategoryId], [Added], [DeletedOn], [Modified], [Deleted]) VALUES (7, N'Leticia', N'Mante', N'284959209', N'7602', CAST(N'2022-06-02' AS Date), 4, CAST(N'2022-10-30T23:06:20.8864392' AS DateTime2), NULL, NULL, NULL)
INSERT [dbo].[Taxpayer] ([Id], [FirstName], [LastName], [SSN], [Pin], [StartDate], [CategoryId], [Added], [DeletedOn], [Modified], [Deleted]) VALUES (8, N'Tonya', N'Moen', N'905647766', N'4151', CAST(N'2021-12-23' AS Date), 3, CAST(N'2022-10-30T23:06:20.8864479' AS DateTime2), NULL, NULL, NULL)
INSERT [dbo].[Taxpayer] ([Id], [FirstName], [LastName], [SSN], [Pin], [StartDate], [CategoryId], [Added], [DeletedOn], [Modified], [Deleted]) VALUES (9, N'Elaine', N'Rippin', N'534536297', N'2397', CAST(N'2021-03-19' AS Date), 3, CAST(N'2022-10-30T23:06:20.8864592' AS DateTime2), NULL, NULL, NULL)
INSERT [dbo].[Taxpayer] ([Id], [FirstName], [LastName], [SSN], [Pin], [StartDate], [CategoryId], [Added], [DeletedOn], [Modified], [Deleted]) VALUES (10, N'Yvonne', N'Rice', N'885019250', N'0032', CAST(N'2021-01-25' AS Date), 1, CAST(N'2022-10-30T23:06:20.8864677' AS DateTime2), NULL, NULL, NULL)
INSERT [dbo].[Taxpayer] ([Id], [FirstName], [LastName], [SSN], [Pin], [StartDate], [CategoryId], [Added], [DeletedOn], [Modified], [Deleted]) VALUES (11, N'Vivian', N'Labadie', N'870211834', N'9419', CAST(N'2021-08-03' AS Date), 2, CAST(N'2022-10-30T23:06:20.8864781' AS DateTime2), NULL, NULL, NULL)
INSERT [dbo].[Taxpayer] ([Id], [FirstName], [LastName], [SSN], [Pin], [StartDate], [CategoryId], [Added], [DeletedOn], [Modified], [Deleted]) VALUES (12, N'Ebony', N'Frami', N'337513364', N'6137', CAST(N'2022-05-28' AS Date), 1, CAST(N'2022-10-30T23:06:20.8864850' AS DateTime2), NULL, NULL, NULL)
INSERT [dbo].[Taxpayer] ([Id], [FirstName], [LastName], [SSN], [Pin], [StartDate], [CategoryId], [Added], [DeletedOn], [Modified], [Deleted]) VALUES (13, N'Tabitha', N'Stiedemann', N'860159750', N'2248', CAST(N'2021-08-25' AS Date), 2, CAST(N'2022-10-30T23:06:20.8864916' AS DateTime2), NULL, NULL, NULL)
INSERT [dbo].[Taxpayer] ([Id], [FirstName], [LastName], [SSN], [Pin], [StartDate], [CategoryId], [Added], [DeletedOn], [Modified], [Deleted]) VALUES (14, N'Joe', N'Mann', N'972601333', N'1711', CAST(N'2021-08-30' AS Date), 4, CAST(N'2022-10-30T23:06:20.8864989' AS DateTime2), NULL, NULL, NULL)
INSERT [dbo].[Taxpayer] ([Id], [FirstName], [LastName], [SSN], [Pin], [StartDate], [CategoryId], [Added], [DeletedOn], [Modified], [Deleted]) VALUES (15, N'Frankie', N'Labadie', N'006294856', N'0177', CAST(N'2021-10-19' AS Date), 1, CAST(N'2022-10-30T23:06:20.8865057' AS DateTime2), NULL, NULL, NULL)
INSERT [dbo].[Taxpayer] ([Id], [FirstName], [LastName], [SSN], [Pin], [StartDate], [CategoryId], [Added], [DeletedOn], [Modified], [Deleted]) VALUES (16, N'Tammy', N'Howell', N'566740515', N'7677', CAST(N'2022-02-20' AS Date), 3, CAST(N'2022-10-30T23:06:20.8865144' AS DateTime2), NULL, NULL, NULL)
INSERT [dbo].[Taxpayer] ([Id], [FirstName], [LastName], [SSN], [Pin], [StartDate], [CategoryId], [Added], [DeletedOn], [Modified], [Deleted]) VALUES (17, N'Randall', N'Kassulke', N'460713228', N'1078', CAST(N'2022-03-28' AS Date), 2, CAST(N'2022-10-30T23:06:20.8865218' AS DateTime2), NULL, NULL, NULL)
INSERT [dbo].[Taxpayer] ([Id], [FirstName], [LastName], [SSN], [Pin], [StartDate], [CategoryId], [Added], [DeletedOn], [Modified], [Deleted]) VALUES (18, N'Jody', N'Yundt', N'901437816', N'1718', CAST(N'2021-02-02' AS Date), 4, CAST(N'2022-10-30T23:06:20.8865296' AS DateTime2), NULL, NULL, NULL)
INSERT [dbo].[Taxpayer] ([Id], [FirstName], [LastName], [SSN], [Pin], [StartDate], [CategoryId], [Added], [DeletedOn], [Modified], [Deleted]) VALUES (19, N'Rose', N'Purdy', N'550748111', N'9612', CAST(N'2021-02-05' AS Date), 2, CAST(N'2022-10-30T23:06:20.8865369' AS DateTime2), NULL, NULL, NULL)
INSERT [dbo].[Taxpayer] ([Id], [FirstName], [LastName], [SSN], [Pin], [StartDate], [CategoryId], [Added], [DeletedOn], [Modified], [Deleted]) VALUES (20, N'Michael', N'Bauch', N'304946427', N'9944', CAST(N'2022-02-19' AS Date), 4, CAST(N'2022-10-30T23:06:20.8865436' AS DateTime2), NULL, NULL, NULL)
INSERT [dbo].[Taxpayer] ([Id], [FirstName], [LastName], [SSN], [Pin], [StartDate], [CategoryId], [Added], [DeletedOn], [Modified], [Deleted]) VALUES (21, N'Sadie', N'Abshire', N'858054139', N'7416', CAST(N'2022-04-14' AS Date), 1, CAST(N'2022-10-30T23:06:20.8865515' AS DateTime2), NULL, NULL, NULL)
INSERT [dbo].[Taxpayer] ([Id], [FirstName], [LastName], [SSN], [Pin], [StartDate], [CategoryId], [Added], [DeletedOn], [Modified], [Deleted]) VALUES (22, N'Brandon', N'Corkery', N'089498319', N'4654', CAST(N'2021-09-19' AS Date), 2, CAST(N'2022-10-30T23:06:20.8865609' AS DateTime2), NULL, NULL, NULL)
INSERT [dbo].[Taxpayer] ([Id], [FirstName], [LastName], [SSN], [Pin], [StartDate], [CategoryId], [Added], [DeletedOn], [Modified], [Deleted]) VALUES (23, N'Raymond', N'Weber', N'100440591', N'9762', CAST(N'2021-11-18' AS Date), 1, CAST(N'2022-10-30T23:06:20.8865689' AS DateTime2), NULL, NULL, NULL)
INSERT [dbo].[Taxpayer] ([Id], [FirstName], [LastName], [SSN], [Pin], [StartDate], [CategoryId], [Added], [DeletedOn], [Modified], [Deleted]) VALUES (24, N'Linda', N'Reichert', N'348820141', N'9510', CAST(N'2021-09-04' AS Date), 3, CAST(N'2022-10-30T23:06:20.8865764' AS DateTime2), NULL, NULL, NULL)
INSERT [dbo].[Taxpayer] ([Id], [FirstName], [LastName], [SSN], [Pin], [StartDate], [CategoryId], [Added], [DeletedOn], [Modified], [Deleted]) VALUES (25, N'Ramona', N'Bauch', N'984988419', N'6525', CAST(N'2022-09-22' AS Date), 4, CAST(N'2022-10-30T23:06:20.8865830' AS DateTime2), NULL, NULL, NULL)
SET IDENTITY_INSERT [dbo].[Taxpayer] OFF
GO
/****** Object:  Index [IX_Taxpayer_CategoryId]    Script Date: 2/3/2023 6:46:05 AM ******/
CREATE NONCLUSTERED INDEX [IX_Taxpayer_CategoryId] ON [dbo].[Taxpayer]
(
	[CategoryId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Taxpayer]  WITH CHECK ADD  CONSTRAINT [FK_Taxpayer_Categories_CategoryId] FOREIGN KEY([CategoryId])
REFERENCES [dbo].[Categories] ([CategoryId])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Taxpayer] CHECK CONSTRAINT [FK_Taxpayer_Categories_CategoryId]
GO
USE [master]
GO
ALTER DATABASE [OED.Lessons] SET  READ_WRITE 
GO
