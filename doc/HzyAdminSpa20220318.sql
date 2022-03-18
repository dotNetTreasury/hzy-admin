USE [HzyAdminSpa20220318]
GO
/****** Object:  Table [dbo].[Member]    Script Date: 2022/3/18 12:21:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Member](
	[Id] [uniqueidentifier] NOT NULL,
	[Number] [nvarchar](255) NULL,
	[Name] [nvarchar](255) NULL,
	[Phone] [nvarchar](255) NULL,
	[Sex] [nvarchar](255) NULL,
	[Birthday] [datetime2](0) NULL,
	[Photo] [nvarchar](255) NULL,
	[Introduce] [nvarchar](255) NULL,
	[FilePath] [nvarchar](255) NULL,
	[UserId] [uniqueidentifier] NULL,
	[CreationTime] [datetime2](0) NULL,
	[LastModificationTime] [datetime2](0) NULL,
 CONSTRAINT [Member_pkey] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SysDataAuthority]    Script Date: 2022/3/18 12:21:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SysDataAuthority](
	[Id] [uniqueidentifier] NOT NULL,
	[LastModificationTime] [datetime] NULL,
	[CreationTime] [datetime] NULL,
	[RoleId] [uniqueidentifier] NULL,
	[PermissionType] [int] NULL,
 CONSTRAINT [PK_DataAuthority] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SysDataAuthorityCustom]    Script Date: 2022/3/18 12:21:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SysDataAuthorityCustom](
	[Id] [uniqueidentifier] NOT NULL,
	[LastModificationTime] [datetime] NULL,
	[CreationTime] [datetime] NULL,
	[SysDataAuthorityId] [uniqueidentifier] NULL,
	[SysOrganizationId] [int] NOT NULL,
 CONSTRAINT [PK_SysDataAuthorityCustom] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SysDictionary]    Script Date: 2022/3/18 12:21:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SysDictionary](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[LastModificationTime] [datetime] NULL,
	[CreationTime] [datetime] NULL,
	[Sort] [int] NULL,
	[Code] [varchar](255) NULL,
	[Value] [varchar](255) NULL,
	[Name] [varchar](255) NULL,
	[ParentId] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SysFunction]    Script Date: 2022/3/18 12:21:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SysFunction](
	[Id] [uniqueidentifier] NOT NULL,
	[Number] [int] NULL,
	[Name] [nvarchar](255) NULL,
	[ByName] [nvarchar](255) NULL,
	[Remark] [nvarchar](255) NULL,
	[LastModificationTime] [datetime2](0) NULL,
	[CreationTime] [datetime2](0) NULL,
 CONSTRAINT [SysFunction_pkey] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SysMenu]    Script Date: 2022/3/18 12:21:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SysMenu](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[LastModificationTime] [datetime2](0) NULL,
	[CreationTime] [datetime2](0) NULL,
	[LevelCode] [varchar](50) NULL,
	[Number] [int] NULL,
	[Name] [nvarchar](255) NULL,
	[Url] [nvarchar](255) NULL,
	[Router] [nvarchar](255) NULL,
	[ComponentName] [nvarchar](255) NULL,
	[Icon] [nvarchar](255) NULL,
	[ParentId] [int] NULL,
	[Show] [bit] NULL,
	[Close] [bit] NULL,
	[KeepAlive] [bit] NULL,
	[State] [bit] NULL,
	[JumpUrl] [varchar](255) NULL,
	[Type] [int] NULL,
 CONSTRAINT [SysMenu_pkey] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SysMenuFunction]    Script Date: 2022/3/18 12:21:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SysMenuFunction](
	[Id] [uniqueidentifier] NOT NULL,
	[LastModificationTime] [datetime2](0) NULL,
	[CreationTime] [datetime2](0) NULL,
	[Number] [int] NULL,
	[MenuId] [int] NULL,
	[FunctionCode] [varchar](100) NULL,
	[FunctionName] [varchar](100) NULL,
	[Remark] [varchar](100) NULL,
 CONSTRAINT [SysMenuFunction_pkey] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SysOperationLog]    Script Date: 2022/3/18 12:21:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SysOperationLog](
	[Id] [uniqueidentifier] ROWGUIDCOL  NOT NULL,
	[Api] [varchar](500) NULL,
	[Ip] [varchar](255) NULL,
	[Form] [varchar](max) NULL,
	[FormBody] [varchar](max) NULL,
	[QueryString] [varchar](max) NULL,
	[Browser] [varchar](255) NULL,
	[OS] [varchar](255) NULL,
	[UserId] [uniqueidentifier] NULL,
	[TakeUpTime] [bigint] NOT NULL,
	[LastModificationTime] [datetime2](0) NULL,
	[CreationTime] [datetime2](0) NULL,
 CONSTRAINT [PK__SysOpera__3214EC0743ACCFCD] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SysOrganization]    Script Date: 2022/3/18 12:21:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SysOrganization](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](255) NULL,
	[OrderNumber] [int] NULL,
	[LevelCode] [varchar](50) NULL,
	[Leader] [nvarchar](255) NULL,
	[Phone] [nvarchar](255) NULL,
	[Email] [nvarchar](255) NULL,
	[State] [int] NULL,
	[ParentId] [int] NULL,
	[LastModificationTime] [datetime2](0) NULL,
	[CreationTime] [datetime2](0) NULL,
 CONSTRAINT [SysOrganization_pkey] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SysPost]    Script Date: 2022/3/18 12:21:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SysPost](
	[Id] [uniqueidentifier] NOT NULL,
	[Number] [int] NULL,
	[Code] [nvarchar](255) NULL,
	[Name] [nvarchar](255) NULL,
	[State] [int] NULL,
	[Remarks] [nvarchar](255) NULL,
	[LastModificationTime] [datetime2](0) NULL,
	[CreationTime] [datetime2](0) NULL,
 CONSTRAINT [SysPost_pkey] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SysRole]    Script Date: 2022/3/18 12:21:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SysRole](
	[Id] [uniqueidentifier] NOT NULL,
	[LastModificationTime] [datetime2](0) NULL,
	[CreationTime] [datetime2](0) NULL,
	[Number] [int] NULL,
	[Name] [nvarchar](255) NULL,
	[Remark] [nvarchar](255) NULL,
	[DeleteLock] [bit] NULL,
 CONSTRAINT [SysRole_pkey] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SysRoleMenuFunction]    Script Date: 2022/3/18 12:21:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SysRoleMenuFunction](
	[Id] [uniqueidentifier] NOT NULL,
	[RoleId] [uniqueidentifier] NULL,
	[MenuId] [int] NULL,
	[MenuFunctionId] [uniqueidentifier] NULL,
	[LastModificationTime] [datetime2](0) NULL,
	[CreationTime] [datetime2](0) NULL,
 CONSTRAINT [SysRoleMenuFunction_pkey] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SysUser]    Script Date: 2022/3/18 12:21:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SysUser](
	[Id] [uniqueidentifier] NOT NULL,
	[LastModificationTime] [datetime2](0) NULL,
	[CreationTime] [datetime2](0) NULL,
	[Name] [nvarchar](255) NULL,
	[LoginName] [nvarchar](255) NULL,
	[Password] [nvarchar](255) NULL,
	[Phone] [nvarchar](255) NULL,
	[Email] [nvarchar](255) NOT NULL,
	[DeleteLock] [bit] NULL,
	[OrganizationId] [int] NULL,
 CONSTRAINT [SysUser_pkey] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SysUserPost]    Script Date: 2022/3/18 12:21:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SysUserPost](
	[Id] [uniqueidentifier] NOT NULL,
	[UserId] [uniqueidentifier] NULL,
	[PostId] [uniqueidentifier] NULL,
	[LastModificationTime] [datetime2](0) NULL,
	[CreationTime] [datetime2](0) NULL,
 CONSTRAINT [SysUserPost_pkey] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SysUserRole]    Script Date: 2022/3/18 12:21:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SysUserRole](
	[Id] [uniqueidentifier] NOT NULL,
	[UserId] [uniqueidentifier] NULL,
	[RoleId] [uniqueidentifier] NULL,
	[LastModificationTime] [datetime2](0) NULL,
	[CreationTime] [datetime2](0) NULL,
 CONSTRAINT [SysUserRole_pkey] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[Member] ([Id], [Number], [Name], [Phone], [Sex], [Birthday], [Photo], [Introduce], [FilePath], [UserId], [CreationTime], [LastModificationTime]) VALUES (N'96a1aa3d-a61a-42d0-954a-c71753fb2065', N'123', N'123', N'123', N'女', CAST(N'2018-04-25T23:00:00.0000000' AS DateTime2), NULL, N'<p>123</p>', NULL, N'ac18f496-e93d-42f0-b59e-e321acc85335', CAST(N'2020-10-24T00:07:42.0000000' AS DateTime2), CAST(N'2021-04-18T22:08:06.0000000' AS DateTime2))
INSERT [dbo].[Member] ([Id], [Number], [Name], [Phone], [Sex], [Birthday], [Photo], [Introduce], [FilePath], [UserId], [CreationTime], [LastModificationTime]) VALUES (N'9a604aa2-9ae6-4a2f-8ddb-d9e0289ead9e', N'1', N'测试会员', N'18510912123', N'男', CAST(N'2019-07-08T11:47:24.0000000' AS DateTime2), N'/upload/files/20210118/time_232747_old_name_hzy.png', N'<p>888</p>', N'/upload/files/20210118/time_233310_old_name_hzy.png', N'ac18f496-e93d-42f0-b59e-e321acc85335', CAST(N'2018-04-25T23:00:00.0000000' AS DateTime2), CAST(N'2021-01-19T14:19:47.0000000' AS DateTime2))
GO
INSERT [dbo].[SysDataAuthority] ([Id], [LastModificationTime], [CreationTime], [RoleId], [PermissionType]) VALUES (N'd09bf250-c5b0-41cb-237d-08da00442990', CAST(N'2022-03-08T10:02:22.620' AS DateTime), CAST(N'2022-03-07T22:09:58.000' AS DateTime), N'40ff1844-c099-4061-98e0-cd6e544fcfd3', 5)
GO
SET IDENTITY_INSERT [dbo].[SysDictionary] ON 

INSERT [dbo].[SysDictionary] ([Id], [LastModificationTime], [CreationTime], [Sort], [Code], [Value], [Name], [ParentId]) VALUES (1, CAST(N'2021-07-25T22:39:34.870' AS DateTime), CAST(N'2021-07-25T22:31:30.490' AS DateTime), 1, N'news_type', NULL, N'资讯类别', NULL)
INSERT [dbo].[SysDictionary] ([Id], [LastModificationTime], [CreationTime], [Sort], [Code], [Value], [Name], [ParentId]) VALUES (2, CAST(N'2021-07-25T22:40:30.037' AS DateTime), CAST(N'2021-07-25T22:38:49.153' AS DateTime), 1, N'news_type_nan', N'1', N'男', 1)
INSERT [dbo].[SysDictionary] ([Id], [LastModificationTime], [CreationTime], [Sort], [Code], [Value], [Name], [ParentId]) VALUES (3, CAST(N'2021-07-25T22:40:52.990' AS DateTime), CAST(N'2021-07-25T22:40:47.933' AS DateTime), 2, N'news_type_nv', N'2', N'女', 1)
SET IDENTITY_INSERT [dbo].[SysDictionary] OFF
GO
INSERT [dbo].[SysFunction] ([Id], [Number], [Name], [ByName], [Remark], [LastModificationTime], [CreationTime]) VALUES (N'b6fd5425-504a-46a9-993b-2f8dc9158eb8', 80, N'打印', N'Print', N'Print', CAST(N'2021-04-18T22:08:06.0000000' AS DateTime2), CAST(N'2016-06-20T13:40:52.0000000' AS DateTime2))
INSERT [dbo].[SysFunction] ([Id], [Number], [Name], [ByName], [Remark], [LastModificationTime], [CreationTime]) VALUES (N'c9518758-b2e1-4f51-b517-5282e273889c', 10, N'显示', N'Display', N'Display', CAST(N'2021-04-18T22:08:06.0000000' AS DateTime2), CAST(N'2016-06-20T13:40:52.0000000' AS DateTime2))
INSERT [dbo].[SysFunction] ([Id], [Number], [Name], [ByName], [Remark], [LastModificationTime], [CreationTime]) VALUES (N'f27ecb0a-197d-47b1-b243-59a8c71302bf', 60, N'检索', N'Search', N'Search', CAST(N'2021-04-18T22:08:06.0000000' AS DateTime2), CAST(N'2016-06-20T13:40:52.0000000' AS DateTime2))
INSERT [dbo].[SysFunction] ([Id], [Number], [Name], [ByName], [Remark], [LastModificationTime], [CreationTime]) VALUES (N'383e7ee2-7690-46ac-9230-65155c84aa30', 50, N'保存', N'Save', N'Save', CAST(N'2021-04-18T22:08:06.0000000' AS DateTime2), CAST(N'2016-06-20T13:40:52.0000000' AS DateTime2))
INSERT [dbo].[SysFunction] ([Id], [Number], [Name], [ByName], [Remark], [LastModificationTime], [CreationTime]) VALUES (N'9c388461-2704-4c5e-a729-72c17e9018e1', 40, N'删除', N'Delete', N'Delete', CAST(N'2021-04-18T22:08:06.0000000' AS DateTime2), CAST(N'2016-06-20T13:40:52.0000000' AS DateTime2))
INSERT [dbo].[SysFunction] ([Id], [Number], [Name], [ByName], [Remark], [LastModificationTime], [CreationTime]) VALUES (N'bffefb1c-8988-4ddf-b4ac-81c2b30e80cd', 20, N'添加', N'Insert', N'Insert', CAST(N'2021-04-18T22:08:06.0000000' AS DateTime2), CAST(N'2016-06-20T13:40:52.0000000' AS DateTime2))
INSERT [dbo].[SysFunction] ([Id], [Number], [Name], [ByName], [Remark], [LastModificationTime], [CreationTime]) VALUES (N'2401f4d0-60b0-4e2e-903f-84c603373572', 70, N'导出', N'Export', N'Export', CAST(N'2021-04-18T22:08:06.0000000' AS DateTime2), CAST(N'2016-06-20T13:40:52.0000000' AS DateTime2))
INSERT [dbo].[SysFunction] ([Id], [Number], [Name], [ByName], [Remark], [LastModificationTime], [CreationTime]) VALUES (N'e7ef2a05-8317-41c3-b588-99519fe88bf9', 30, N'修改', N'Update', N'Update', CAST(N'2021-04-18T22:08:06.0000000' AS DateTime2), CAST(N'2016-06-20T13:40:52.0000000' AS DateTime2))
GO
SET IDENTITY_INSERT [dbo].[SysMenu] ON 

INSERT [dbo].[SysMenu] ([Id], [LastModificationTime], [CreationTime], [LevelCode], [Number], [Name], [Url], [Router], [ComponentName], [Icon], [ParentId], [Show], [Close], [KeepAlive], [State], [JumpUrl], [Type]) VALUES (1, CAST(N'2022-03-04T12:25:39.0000000' AS DateTime2), CAST(N'2021-05-28T11:49:02.0000000' AS DateTime2), N'1', 10, N'更多示例', NULL, NULL, NULL, N'MoreOutlined', NULL, 1, 1, 1, 1, NULL, 1)
INSERT [dbo].[SysMenu] ([Id], [LastModificationTime], [CreationTime], [LevelCode], [Number], [Name], [Url], [Router], [ComponentName], [Icon], [ParentId], [Show], [Close], [KeepAlive], [State], [JumpUrl], [Type]) VALUES (2, CAST(N'2022-03-18T12:06:20.0000000' AS DateTime2), CAST(N'2021-01-16T16:05:22.0000000' AS DateTime2), N'1.2', 10, N'Antd Vue3.0组件', N'views/AppComponents.vue', N'/app/components', N'AppComponentsCom', N'LayoutOutlined', 1, 1, 1, 1, 1, NULL, 2)
INSERT [dbo].[SysMenu] ([Id], [LastModificationTime], [CreationTime], [LevelCode], [Number], [Name], [Url], [Router], [ComponentName], [Icon], [ParentId], [Show], [Close], [KeepAlive], [State], [JumpUrl], [Type]) VALUES (3, CAST(N'2022-03-04T12:26:14.0000000' AS DateTime2), CAST(N'2020-12-17T14:58:05.0000000' AS DateTime2), N'1.3', 30, N'按钮', N'views/Button.vue', N'/button', N'ButtonCom', N'AppstoreOutlined', 1, 1, 1, 1, 1, NULL, 2)
INSERT [dbo].[SysMenu] ([Id], [LastModificationTime], [CreationTime], [LevelCode], [Number], [Name], [Url], [Router], [ComponentName], [Icon], [ParentId], [Show], [Close], [KeepAlive], [State], [JumpUrl], [Type]) VALUES (4, CAST(N'2022-03-04T12:26:21.0000000' AS DateTime2), CAST(N'2021-01-16T16:06:33.0000000' AS DateTime2), N'1.4', 40, N'图表 AntV G2', NULL, NULL, NULL, N'PieChartOutlined', 1, 1, 1, 1, 1, NULL, 1)
INSERT [dbo].[SysMenu] ([Id], [LastModificationTime], [CreationTime], [LevelCode], [Number], [Name], [Url], [Router], [ComponentName], [Icon], [ParentId], [Show], [Close], [KeepAlive], [State], [JumpUrl], [Type]) VALUES (5, CAST(N'2022-03-04T12:26:25.0000000' AS DateTime2), CAST(N'2021-01-16T16:07:24.0000000' AS DateTime2), N'1.4.5', 10, N'基础图表', N'views/chart/Base.vue', N'/chart/base', N'ChartBaseCom', NULL, 4, 1, 1, 1, 1, NULL, 2)
INSERT [dbo].[SysMenu] ([Id], [LastModificationTime], [CreationTime], [LevelCode], [Number], [Name], [Url], [Router], [ComponentName], [Icon], [ParentId], [Show], [Close], [KeepAlive], [State], [JumpUrl], [Type]) VALUES (6, CAST(N'2022-03-04T12:26:28.0000000' AS DateTime2), CAST(N'2021-01-16T16:10:06.0000000' AS DateTime2), N'1.4.6', 20, N'更多图表', N'views/chart/More.vue', N'/chart/more', N'ChartMoreCom', NULL, 4, 1, 1, 1, 1, NULL, 2)
INSERT [dbo].[SysMenu] ([Id], [LastModificationTime], [CreationTime], [LevelCode], [Number], [Name], [Url], [Router], [ComponentName], [Icon], [ParentId], [Show], [Close], [KeepAlive], [State], [JumpUrl], [Type]) VALUES (7, CAST(N'2022-03-04T12:26:34.0000000' AS DateTime2), CAST(N'2018-03-10T12:16:38.0000000' AS DateTime2), N'1.7', 50, N'表格管理', NULL, NULL, NULL, N'TableOutlined', 1, 1, 1, 1, 1, NULL, 1)
INSERT [dbo].[SysMenu] ([Id], [LastModificationTime], [CreationTime], [LevelCode], [Number], [Name], [Url], [Router], [ComponentName], [Icon], [ParentId], [Show], [Close], [KeepAlive], [State], [JumpUrl], [Type]) VALUES (8, CAST(N'2022-03-04T12:26:38.0000000' AS DateTime2), CAST(N'2020-12-17T14:49:12.0000000' AS DateTime2), N'1.7.8', 100, N'基础列表', N'views/BaseList.vue', N'/base/list', N'BaseListCom', NULL, 7, 1, 1, 1, 1, NULL, 2)
INSERT [dbo].[SysMenu] ([Id], [LastModificationTime], [CreationTime], [LevelCode], [Number], [Name], [Url], [Router], [ComponentName], [Icon], [ParentId], [Show], [Close], [KeepAlive], [State], [JumpUrl], [Type]) VALUES (9, CAST(N'2022-03-04T12:26:41.0000000' AS DateTime2), CAST(N'2020-12-17T14:51:07.0000000' AS DateTime2), N'1.7.9', 110, N'标准表格', N'views/list/Index.vue', N'/list', N'ListIndexCom', NULL, 7, 1, 1, 1, 1, NULL, 2)
INSERT [dbo].[SysMenu] ([Id], [LastModificationTime], [CreationTime], [LevelCode], [Number], [Name], [Url], [Router], [ComponentName], [Icon], [ParentId], [Show], [Close], [KeepAlive], [State], [JumpUrl], [Type]) VALUES (10, CAST(N'2022-03-04T12:26:46.0000000' AS DateTime2), CAST(N'2021-01-18T19:34:28.0000000' AS DateTime2), N'1.10', 60, N'富文本编辑器', N'views/Editor.vue', N'/editor', N'EditorCom', N'PicRightOutlined', 1, 1, 1, 1, 1, NULL, 2)
INSERT [dbo].[SysMenu] ([Id], [LastModificationTime], [CreationTime], [LevelCode], [Number], [Name], [Url], [Router], [ComponentName], [Icon], [ParentId], [Show], [Close], [KeepAlive], [State], [JumpUrl], [Type]) VALUES (11, CAST(N'2022-03-04T12:26:49.0000000' AS DateTime2), CAST(N'2021-08-05T21:51:12.0000000' AS DateTime2), N'1.11', 70, N'跳转外部地址', N'components/ExternalJump.vue', N'/external/jump/:path(.*)', N'ExternalJumpCom', N'RadarChartOutlined', 1, 1, 1, 1, 1, N'https://antv.vision/zh', 2)
INSERT [dbo].[SysMenu] ([Id], [LastModificationTime], [CreationTime], [LevelCode], [Number], [Name], [Url], [Router], [ComponentName], [Icon], [ParentId], [Show], [Close], [KeepAlive], [State], [JumpUrl], [Type]) VALUES (12, CAST(N'2022-03-04T12:25:43.0000000' AS DateTime2), CAST(N'2018-03-10T12:16:38.0000000' AS DateTime2), N'12', 50, N'基础信息', NULL, NULL, NULL, N'GoldOutlined', NULL, 1, 1, 1, 1, NULL, 1)
INSERT [dbo].[SysMenu] ([Id], [LastModificationTime], [CreationTime], [LevelCode], [Number], [Name], [Url], [Router], [ComponentName], [Icon], [ParentId], [Show], [Close], [KeepAlive], [State], [JumpUrl], [Type]) VALUES (13, CAST(N'2022-03-04T12:26:55.0000000' AS DateTime2), CAST(N'2018-03-10T12:16:38.0000000' AS DateTime2), N'12.13', 10, N'会员管理', N'views/base/member/Index.vue', N'/base/member', N'base_member', N'UsergroupAddOutlined', 12, 1, 1, 1, 1, NULL, 2)
INSERT [dbo].[SysMenu] ([Id], [LastModificationTime], [CreationTime], [LevelCode], [Number], [Name], [Url], [Router], [ComponentName], [Icon], [ParentId], [Show], [Close], [KeepAlive], [State], [JumpUrl], [Type]) VALUES (14, CAST(N'2022-03-04T12:25:46.0000000' AS DateTime2), CAST(N'2018-03-10T12:16:38.0000000' AS DateTime2), N'14', 100, N'系统管理', NULL, NULL, NULL, N'DesktopOutlined', NULL, 1, 1, 1, 1, NULL, 1)
INSERT [dbo].[SysMenu] ([Id], [LastModificationTime], [CreationTime], [LevelCode], [Number], [Name], [Url], [Router], [ComponentName], [Icon], [ParentId], [Show], [Close], [KeepAlive], [State], [JumpUrl], [Type]) VALUES (15, CAST(N'2022-03-04T12:27:02.0000000' AS DateTime2), CAST(N'2018-03-10T12:16:38.0000000' AS DateTime2), N'14.15', 100, N'账户管理', N'views/system/user/Index.vue', N'/system/user', N'system_user', N'UserOutlined', 14, 1, 1, 1, 1, NULL, 2)
INSERT [dbo].[SysMenu] ([Id], [LastModificationTime], [CreationTime], [LevelCode], [Number], [Name], [Url], [Router], [ComponentName], [Icon], [ParentId], [Show], [Close], [KeepAlive], [State], [JumpUrl], [Type]) VALUES (16, CAST(N'2022-03-04T12:27:07.0000000' AS DateTime2), CAST(N'2018-03-10T12:16:38.0000000' AS DateTime2), N'14.16', 110, N'角色管理', N'views/system/role/Index.vue', N'/system/role', N'system_role', N'TeamOutlined', 14, 1, 1, 1, 1, NULL, 2)
INSERT [dbo].[SysMenu] ([Id], [LastModificationTime], [CreationTime], [LevelCode], [Number], [Name], [Url], [Router], [ComponentName], [Icon], [ParentId], [Show], [Close], [KeepAlive], [State], [JumpUrl], [Type]) VALUES (17, CAST(N'2022-03-04T12:27:11.0000000' AS DateTime2), CAST(N'2018-03-10T12:16:38.0000000' AS DateTime2), N'14.17', 120, N'功能管理', N'views/system/function/Index.vue', N'/system/function', N'system_function', N'ControlOutlined', 14, 1, 1, 1, 1, NULL, 2)
INSERT [dbo].[SysMenu] ([Id], [LastModificationTime], [CreationTime], [LevelCode], [Number], [Name], [Url], [Router], [ComponentName], [Icon], [ParentId], [Show], [Close], [KeepAlive], [State], [JumpUrl], [Type]) VALUES (19, CAST(N'2022-03-04T12:27:19.0000000' AS DateTime2), CAST(N'2018-03-10T12:16:38.0000000' AS DateTime2), N'14.19', 150, N'个人中心', N'views/system/personal_center/Index.vue', N'/system/personal/center', N'system_personal_center', N'FormOutlined', 14, 1, 1, 1, 1, NULL, 2)
INSERT [dbo].[SysMenu] ([Id], [LastModificationTime], [CreationTime], [LevelCode], [Number], [Name], [Url], [Router], [ComponentName], [Icon], [ParentId], [Show], [Close], [KeepAlive], [State], [JumpUrl], [Type]) VALUES (20, CAST(N'2022-03-04T12:27:23.0000000' AS DateTime2), CAST(N'2021-05-27T17:29:49.0000000' AS DateTime2), N'14.20', 160, N'岗位管理', N'views/system/post/Index.vue', N'/system/post', N'system_post', N'IdcardOutlined', 14, 1, 1, 1, 1, NULL, 2)
INSERT [dbo].[SysMenu] ([Id], [LastModificationTime], [CreationTime], [LevelCode], [Number], [Name], [Url], [Router], [ComponentName], [Icon], [ParentId], [Show], [Close], [KeepAlive], [State], [JumpUrl], [Type]) VALUES (21, CAST(N'2022-03-04T12:27:27.0000000' AS DateTime2), CAST(N'2021-05-27T20:27:56.0000000' AS DateTime2), N'14.21', 170, N'组织机构', N'views/system/organization/Index.vue', N'/system/organization', N'system_organization', N'ClusterOutlined', 14, 1, 1, 1, 1, NULL, 2)
INSERT [dbo].[SysMenu] ([Id], [LastModificationTime], [CreationTime], [LevelCode], [Number], [Name], [Url], [Router], [ComponentName], [Icon], [ParentId], [Show], [Close], [KeepAlive], [State], [JumpUrl], [Type]) VALUES (22, CAST(N'2022-03-04T12:27:41.0000000' AS DateTime2), CAST(N'2018-03-10T12:17:03.0000000' AS DateTime2), N'29.22', 10, N'接口文档', N'views/development_tool/Swagger.vue', N'/development_tool/swagger', N'swagger', N'FileSearchOutlined', 29, 1, 1, 1, 1, NULL, 2)
INSERT [dbo].[SysMenu] ([Id], [LastModificationTime], [CreationTime], [LevelCode], [Number], [Name], [Url], [Router], [ComponentName], [Icon], [ParentId], [Show], [Close], [KeepAlive], [State], [JumpUrl], [Type]) VALUES (23, CAST(N'2022-03-04T12:27:31.0000000' AS DateTime2), CAST(N'2021-07-25T21:50:01.0000000' AS DateTime2), N'14.23', 190, N'数据字典', N'views/system/dictionary/Index.vue', N'/system/dictionary', N'system_dictionary', N'FileDoneOutlined', 14, 1, 1, 1, 1, NULL, 2)
INSERT [dbo].[SysMenu] ([Id], [LastModificationTime], [CreationTime], [LevelCode], [Number], [Name], [Url], [Router], [ComponentName], [Icon], [ParentId], [Show], [Close], [KeepAlive], [State], [JumpUrl], [Type]) VALUES (24, CAST(N'2022-03-04T12:27:35.0000000' AS DateTime2), CAST(N'2021-08-05T21:24:54.0000000' AS DateTime2), N'14.24', 200, N'操作日志', N'views/system/sys_operation_log/Index.vue', N'/system/sys_operation_log', N'sys_operation_log', N'ContainerOutlined', 14, 1, 1, 1, 1, N'', 2)
INSERT [dbo].[SysMenu] ([Id], [LastModificationTime], [CreationTime], [LevelCode], [Number], [Name], [Url], [Router], [ComponentName], [Icon], [ParentId], [Show], [Close], [KeepAlive], [State], [JumpUrl], [Type]) VALUES (25, CAST(N'2022-03-04T12:27:15.0000000' AS DateTime2), CAST(N'2018-03-10T12:16:38.0000000' AS DateTime2), N'14.25', 130, N'菜单功能', N'views/system/menu/Index.vue', N'/system/menu', N'system_menu', N'MenuOutlined', 14, 1, 1, 1, 1, NULL, 2)
INSERT [dbo].[SysMenu] ([Id], [LastModificationTime], [CreationTime], [LevelCode], [Number], [Name], [Url], [Router], [ComponentName], [Icon], [ParentId], [Show], [Close], [KeepAlive], [State], [JumpUrl], [Type]) VALUES (28, CAST(N'2022-03-04T12:26:00.0000000' AS DateTime2), CAST(N'2021-12-29T17:13:26.0000000' AS DateTime2), N'1.28', 1, N'Vxe-Table', N'views/VxeTable.vue', N'/vxe/table', N'VxeTableCom', N'BorderlessTableOutlined', 1, 1, 1, 1, 1, NULL, 2)
INSERT [dbo].[SysMenu] ([Id], [LastModificationTime], [CreationTime], [LevelCode], [Number], [Name], [Url], [Router], [ComponentName], [Icon], [ParentId], [Show], [Close], [KeepAlive], [State], [JumpUrl], [Type]) VALUES (29, CAST(N'2022-03-04T12:25:49.0000000' AS DateTime2), CAST(N'2022-01-12T14:17:21.0000000' AS DateTime2), N'29', 200, N'开发工具', NULL, NULL, NULL, N'CodepenOutlined', NULL, 1, 1, 1, 1, NULL, 1)
INSERT [dbo].[SysMenu] ([Id], [LastModificationTime], [CreationTime], [LevelCode], [Number], [Name], [Url], [Router], [ComponentName], [Icon], [ParentId], [Show], [Close], [KeepAlive], [State], [JumpUrl], [Type]) VALUES (30, CAST(N'2022-03-04T12:27:44.0000000' AS DateTime2), CAST(N'2022-01-12T14:22:04.0000000' AS DateTime2), N'29.30', 20, N'定时任务', N'views/development_tool/timed_task/Index.vue', N'/development_tool/timed_task', N'TimedTaskCom', N'FieldTimeOutlined', 29, 1, 1, 1, 1, NULL, 2)
INSERT [dbo].[SysMenu] ([Id], [LastModificationTime], [CreationTime], [LevelCode], [Number], [Name], [Url], [Router], [ComponentName], [Icon], [ParentId], [Show], [Close], [KeepAlive], [State], [JumpUrl], [Type]) VALUES (31, CAST(N'2022-03-04T12:27:48.0000000' AS DateTime2), CAST(N'2022-01-12T15:39:46.0000000' AS DateTime2), N'29.31', 30, N'代码生成', N'views/development_tool/code_generation/Index.vue', N'/development_tool/code_generation', N'code_generation_index', N'CodeTwoTone', 29, 1, 1, 1, 1, NULL, 2)
INSERT [dbo].[SysMenu] ([Id], [LastModificationTime], [CreationTime], [LevelCode], [Number], [Name], [Url], [Router], [ComponentName], [Icon], [ParentId], [Show], [Close], [KeepAlive], [State], [JumpUrl], [Type]) VALUES (32, CAST(N'2022-03-18T12:06:38.0000000' AS DateTime2), CAST(N'2022-02-24T10:51:38.0000000' AS DateTime2), N'1.32', 20, N'图标展示', N'views/Icons.vue', N'/icons', N'IconsVue', N'TagsTwoTone', 1, 1, 1, 1, 1, NULL, 2)
SET IDENTITY_INSERT [dbo].[SysMenu] OFF
GO
INSERT [dbo].[SysMenuFunction] ([Id], [LastModificationTime], [CreationTime], [Number], [MenuId], [FunctionCode], [FunctionName], [Remark]) VALUES (N'33c80938-82c8-4299-0f12-08d9fdad00ab', CAST(N'2022-03-04T15:17:09.0000000' AS DateTime2), CAST(N'2022-03-04T15:17:09.0000000' AS DateTime2), 10, 30, N'Display', N'显示', N'Display')
INSERT [dbo].[SysMenuFunction] ([Id], [LastModificationTime], [CreationTime], [Number], [MenuId], [FunctionCode], [FunctionName], [Remark]) VALUES (N'ef70b789-21ee-4850-0f1b-08d9fdad00ab', CAST(N'2022-03-04T15:16:44.0000000' AS DateTime2), CAST(N'2022-03-04T15:16:44.0000000' AS DateTime2), 10, 22, N'Display', N'显示', N'Display')
INSERT [dbo].[SysMenuFunction] ([Id], [LastModificationTime], [CreationTime], [Number], [MenuId], [FunctionCode], [FunctionName], [Remark]) VALUES (N'dab12c2f-1f4d-4347-0f1c-08d9fdad00ab', CAST(N'2022-03-04T15:17:24.0000000' AS DateTime2), CAST(N'2022-03-04T15:17:24.0000000' AS DateTime2), 10, 31, N'Display', N'显示', N'Display')
INSERT [dbo].[SysMenuFunction] ([Id], [LastModificationTime], [CreationTime], [Number], [MenuId], [FunctionCode], [FunctionName], [Remark]) VALUES (N'a7cd04db-bbe3-49b6-0f1e-08d9fdad00ab', CAST(N'2022-03-18T12:06:20.0000000' AS DateTime2), CAST(N'2022-03-18T12:06:20.0000000' AS DateTime2), 10, 2, N'Display', N'显示', N'Display')
INSERT [dbo].[SysMenuFunction] ([Id], [LastModificationTime], [CreationTime], [Number], [MenuId], [FunctionCode], [FunctionName], [Remark]) VALUES (N'6c09c0c0-72fa-4842-0f1f-08d9fdad00ab', CAST(N'2022-03-18T12:06:38.0000000' AS DateTime2), CAST(N'2022-03-18T12:06:38.0000000' AS DateTime2), 10, 32, N'Display', N'显示', N'Display')
INSERT [dbo].[SysMenuFunction] ([Id], [LastModificationTime], [CreationTime], [Number], [MenuId], [FunctionCode], [FunctionName], [Remark]) VALUES (N'f64cfe50-1ef1-457f-0f20-08d9fdad00ab', CAST(N'2022-03-04T15:24:24.0000000' AS DateTime2), CAST(N'2022-03-04T15:24:24.0000000' AS DateTime2), 10, 3, N'Display', N'显示', N'Display')
INSERT [dbo].[SysMenuFunction] ([Id], [LastModificationTime], [CreationTime], [Number], [MenuId], [FunctionCode], [FunctionName], [Remark]) VALUES (N'a1ddd02f-8c21-4d79-0f21-08d9fdad00ab', CAST(N'2022-03-04T15:24:30.0000000' AS DateTime2), CAST(N'2022-03-04T15:24:30.0000000' AS DateTime2), 10, 5, N'Display', N'显示', N'Display')
INSERT [dbo].[SysMenuFunction] ([Id], [LastModificationTime], [CreationTime], [Number], [MenuId], [FunctionCode], [FunctionName], [Remark]) VALUES (N'1cb6fbe1-4a6c-4aad-0f22-08d9fdad00ab', CAST(N'2022-03-04T15:24:34.0000000' AS DateTime2), CAST(N'2022-03-04T15:24:34.0000000' AS DateTime2), 10, 6, N'Display', N'显示', N'Display')
INSERT [dbo].[SysMenuFunction] ([Id], [LastModificationTime], [CreationTime], [Number], [MenuId], [FunctionCode], [FunctionName], [Remark]) VALUES (N'd2e6ea60-2cf6-478a-0f23-08d9fdad00ab', CAST(N'2022-03-04T15:24:40.0000000' AS DateTime2), CAST(N'2022-03-04T15:24:40.0000000' AS DateTime2), 10, 8, N'Display', N'显示', N'Display')
INSERT [dbo].[SysMenuFunction] ([Id], [LastModificationTime], [CreationTime], [Number], [MenuId], [FunctionCode], [FunctionName], [Remark]) VALUES (N'b7533a90-dae4-4263-0f24-08d9fdad00ab', CAST(N'2022-03-04T15:24:43.0000000' AS DateTime2), CAST(N'2022-03-04T15:24:43.0000000' AS DateTime2), 10, 9, N'Display', N'显示', N'Display')
INSERT [dbo].[SysMenuFunction] ([Id], [LastModificationTime], [CreationTime], [Number], [MenuId], [FunctionCode], [FunctionName], [Remark]) VALUES (N'ec535908-8671-4928-0f25-08d9fdad00ab', CAST(N'2022-03-04T15:24:47.0000000' AS DateTime2), CAST(N'2022-03-04T15:24:47.0000000' AS DateTime2), 10, 10, N'Display', N'显示', N'Display')
INSERT [dbo].[SysMenuFunction] ([Id], [LastModificationTime], [CreationTime], [Number], [MenuId], [FunctionCode], [FunctionName], [Remark]) VALUES (N'3bc0e68f-d03d-4e99-0f26-08d9fdad00ab', CAST(N'2022-03-04T15:24:53.0000000' AS DateTime2), CAST(N'2022-03-04T15:24:53.0000000' AS DateTime2), 10, 11, N'Display', N'显示', N'Display')
INSERT [dbo].[SysMenuFunction] ([Id], [LastModificationTime], [CreationTime], [Number], [MenuId], [FunctionCode], [FunctionName], [Remark]) VALUES (N'eb958545-6449-40db-0f27-08d9fdad00ab', CAST(N'2022-03-04T15:25:07.0000000' AS DateTime2), CAST(N'2022-03-04T15:25:07.0000000' AS DateTime2), 10, 13, N'Display', N'显示', N'Display')
INSERT [dbo].[SysMenuFunction] ([Id], [LastModificationTime], [CreationTime], [Number], [MenuId], [FunctionCode], [FunctionName], [Remark]) VALUES (N'b5881044-afb8-40b2-0f28-08d9fdad00ab', CAST(N'2022-03-04T15:25:07.0000000' AS DateTime2), CAST(N'2022-03-04T15:25:07.0000000' AS DateTime2), 20, 13, N'Insert', N'添加', N'Insert')
INSERT [dbo].[SysMenuFunction] ([Id], [LastModificationTime], [CreationTime], [Number], [MenuId], [FunctionCode], [FunctionName], [Remark]) VALUES (N'106fb69a-8bb5-4559-0f29-08d9fdad00ab', CAST(N'2022-03-04T15:25:07.0000000' AS DateTime2), CAST(N'2022-03-04T15:25:07.0000000' AS DateTime2), 30, 13, N'Update', N'修改', N'Update')
INSERT [dbo].[SysMenuFunction] ([Id], [LastModificationTime], [CreationTime], [Number], [MenuId], [FunctionCode], [FunctionName], [Remark]) VALUES (N'f4621fbe-6b40-4454-0f2a-08d9fdad00ab', CAST(N'2022-03-04T15:25:07.0000000' AS DateTime2), CAST(N'2022-03-04T15:25:07.0000000' AS DateTime2), 40, 13, N'Delete', N'删除', N'Delete')
INSERT [dbo].[SysMenuFunction] ([Id], [LastModificationTime], [CreationTime], [Number], [MenuId], [FunctionCode], [FunctionName], [Remark]) VALUES (N'523b53b5-8159-4a16-0f2b-08d9fdad00ab', CAST(N'2022-03-04T15:25:07.0000000' AS DateTime2), CAST(N'2022-03-04T15:25:07.0000000' AS DateTime2), 50, 13, N'Save', N'保存', N'Save')
INSERT [dbo].[SysMenuFunction] ([Id], [LastModificationTime], [CreationTime], [Number], [MenuId], [FunctionCode], [FunctionName], [Remark]) VALUES (N'a3754771-f6e9-4a23-0f2c-08d9fdad00ab', CAST(N'2022-03-04T15:25:07.0000000' AS DateTime2), CAST(N'2022-03-04T15:25:07.0000000' AS DateTime2), 60, 13, N'Search', N'检索', N'Search')
INSERT [dbo].[SysMenuFunction] ([Id], [LastModificationTime], [CreationTime], [Number], [MenuId], [FunctionCode], [FunctionName], [Remark]) VALUES (N'b96f977c-a36e-4e7f-0f2d-08d9fdad00ab', CAST(N'2022-03-04T15:25:07.0000000' AS DateTime2), CAST(N'2022-03-04T15:25:07.0000000' AS DateTime2), 70, 13, N'Export', N'导出', N'Export')
INSERT [dbo].[SysMenuFunction] ([Id], [LastModificationTime], [CreationTime], [Number], [MenuId], [FunctionCode], [FunctionName], [Remark]) VALUES (N'541d9045-47b2-4629-0f2e-08d9fdad00ab', CAST(N'2022-03-04T15:25:07.0000000' AS DateTime2), CAST(N'2022-03-04T15:25:07.0000000' AS DateTime2), 80, 13, N'Print', N'打印', N'Print')
INSERT [dbo].[SysMenuFunction] ([Id], [LastModificationTime], [CreationTime], [Number], [MenuId], [FunctionCode], [FunctionName], [Remark]) VALUES (N'13f3f74d-c6fc-4488-0f2f-08d9fdad00ab', CAST(N'2022-03-04T15:25:14.0000000' AS DateTime2), CAST(N'2022-03-04T15:25:14.0000000' AS DateTime2), 10, 15, N'Display', N'显示', N'Display')
INSERT [dbo].[SysMenuFunction] ([Id], [LastModificationTime], [CreationTime], [Number], [MenuId], [FunctionCode], [FunctionName], [Remark]) VALUES (N'cce82eb4-7fc5-4308-0f30-08d9fdad00ab', CAST(N'2022-03-04T15:25:14.0000000' AS DateTime2), CAST(N'2022-03-04T15:25:14.0000000' AS DateTime2), 20, 15, N'Insert', N'添加', N'Insert')
INSERT [dbo].[SysMenuFunction] ([Id], [LastModificationTime], [CreationTime], [Number], [MenuId], [FunctionCode], [FunctionName], [Remark]) VALUES (N'8564e4d8-d7f4-4f12-0f31-08d9fdad00ab', CAST(N'2022-03-04T15:25:14.0000000' AS DateTime2), CAST(N'2022-03-04T15:25:14.0000000' AS DateTime2), 30, 15, N'Update', N'修改', N'Update')
INSERT [dbo].[SysMenuFunction] ([Id], [LastModificationTime], [CreationTime], [Number], [MenuId], [FunctionCode], [FunctionName], [Remark]) VALUES (N'0ad6a459-1d9d-4512-0f32-08d9fdad00ab', CAST(N'2022-03-04T15:25:14.0000000' AS DateTime2), CAST(N'2022-03-04T15:25:14.0000000' AS DateTime2), 40, 15, N'Delete', N'删除', N'Delete')
INSERT [dbo].[SysMenuFunction] ([Id], [LastModificationTime], [CreationTime], [Number], [MenuId], [FunctionCode], [FunctionName], [Remark]) VALUES (N'37d3e492-62da-47a4-0f33-08d9fdad00ab', CAST(N'2022-03-04T15:25:14.0000000' AS DateTime2), CAST(N'2022-03-04T15:25:14.0000000' AS DateTime2), 50, 15, N'Save', N'保存', N'Save')
INSERT [dbo].[SysMenuFunction] ([Id], [LastModificationTime], [CreationTime], [Number], [MenuId], [FunctionCode], [FunctionName], [Remark]) VALUES (N'beb87004-5cfb-417a-0f34-08d9fdad00ab', CAST(N'2022-03-04T15:25:14.0000000' AS DateTime2), CAST(N'2022-03-04T15:25:14.0000000' AS DateTime2), 60, 15, N'Search', N'检索', N'Search')
INSERT [dbo].[SysMenuFunction] ([Id], [LastModificationTime], [CreationTime], [Number], [MenuId], [FunctionCode], [FunctionName], [Remark]) VALUES (N'a46e07d3-c722-4548-0f35-08d9fdad00ab', CAST(N'2022-03-04T15:25:14.0000000' AS DateTime2), CAST(N'2022-03-04T15:25:14.0000000' AS DateTime2), 70, 15, N'Export', N'导出', N'Export')
INSERT [dbo].[SysMenuFunction] ([Id], [LastModificationTime], [CreationTime], [Number], [MenuId], [FunctionCode], [FunctionName], [Remark]) VALUES (N'c8edbb79-567e-461b-0f36-08d9fdad00ab', CAST(N'2022-03-04T15:25:14.0000000' AS DateTime2), CAST(N'2022-03-04T15:25:14.0000000' AS DateTime2), 80, 15, N'Print', N'打印', N'Print')
INSERT [dbo].[SysMenuFunction] ([Id], [LastModificationTime], [CreationTime], [Number], [MenuId], [FunctionCode], [FunctionName], [Remark]) VALUES (N'550f874b-e804-44a0-0f37-08d9fdad00ab', CAST(N'2022-03-04T15:25:18.0000000' AS DateTime2), CAST(N'2022-03-04T15:25:18.0000000' AS DateTime2), 10, 16, N'Display', N'显示', N'Display')
INSERT [dbo].[SysMenuFunction] ([Id], [LastModificationTime], [CreationTime], [Number], [MenuId], [FunctionCode], [FunctionName], [Remark]) VALUES (N'c67a0abe-daec-491b-0f38-08d9fdad00ab', CAST(N'2022-03-04T15:25:18.0000000' AS DateTime2), CAST(N'2022-03-04T15:25:18.0000000' AS DateTime2), 20, 16, N'Insert', N'添加', N'Insert')
INSERT [dbo].[SysMenuFunction] ([Id], [LastModificationTime], [CreationTime], [Number], [MenuId], [FunctionCode], [FunctionName], [Remark]) VALUES (N'823ac05d-65e4-4216-0f39-08d9fdad00ab', CAST(N'2022-03-04T15:25:18.0000000' AS DateTime2), CAST(N'2022-03-04T15:25:18.0000000' AS DateTime2), 30, 16, N'Update', N'修改', N'Update')
INSERT [dbo].[SysMenuFunction] ([Id], [LastModificationTime], [CreationTime], [Number], [MenuId], [FunctionCode], [FunctionName], [Remark]) VALUES (N'bd6ae6da-1ca6-46c2-0f3a-08d9fdad00ab', CAST(N'2022-03-04T15:25:18.0000000' AS DateTime2), CAST(N'2022-03-04T15:25:18.0000000' AS DateTime2), 40, 16, N'Delete', N'删除', N'Delete')
INSERT [dbo].[SysMenuFunction] ([Id], [LastModificationTime], [CreationTime], [Number], [MenuId], [FunctionCode], [FunctionName], [Remark]) VALUES (N'14783a71-e265-4d6b-0f3b-08d9fdad00ab', CAST(N'2022-03-04T15:25:18.0000000' AS DateTime2), CAST(N'2022-03-04T15:25:18.0000000' AS DateTime2), 50, 16, N'Save', N'保存', N'Save')
INSERT [dbo].[SysMenuFunction] ([Id], [LastModificationTime], [CreationTime], [Number], [MenuId], [FunctionCode], [FunctionName], [Remark]) VALUES (N'2fea8f87-2a13-4c95-0f3c-08d9fdad00ab', CAST(N'2022-03-04T15:25:18.0000000' AS DateTime2), CAST(N'2022-03-04T15:25:18.0000000' AS DateTime2), 60, 16, N'Search', N'检索', N'Search')
INSERT [dbo].[SysMenuFunction] ([Id], [LastModificationTime], [CreationTime], [Number], [MenuId], [FunctionCode], [FunctionName], [Remark]) VALUES (N'437fbf85-8704-4e87-0f3d-08d9fdad00ab', CAST(N'2022-03-04T15:25:18.0000000' AS DateTime2), CAST(N'2022-03-04T15:25:18.0000000' AS DateTime2), 70, 16, N'Export', N'导出', N'Export')
INSERT [dbo].[SysMenuFunction] ([Id], [LastModificationTime], [CreationTime], [Number], [MenuId], [FunctionCode], [FunctionName], [Remark]) VALUES (N'6b009415-eadf-4dab-0f3e-08d9fdad00ab', CAST(N'2022-03-04T15:25:18.0000000' AS DateTime2), CAST(N'2022-03-04T15:25:18.0000000' AS DateTime2), 80, 16, N'Print', N'打印', N'Print')
INSERT [dbo].[SysMenuFunction] ([Id], [LastModificationTime], [CreationTime], [Number], [MenuId], [FunctionCode], [FunctionName], [Remark]) VALUES (N'53fdb4a0-ca6e-4568-0f3f-08d9fdad00ab', CAST(N'2022-03-04T15:25:21.0000000' AS DateTime2), CAST(N'2022-03-04T15:25:21.0000000' AS DateTime2), 10, 17, N'Display', N'显示', N'Display')
INSERT [dbo].[SysMenuFunction] ([Id], [LastModificationTime], [CreationTime], [Number], [MenuId], [FunctionCode], [FunctionName], [Remark]) VALUES (N'86465238-c51c-45d5-0f40-08d9fdad00ab', CAST(N'2022-03-04T15:25:21.0000000' AS DateTime2), CAST(N'2022-03-04T15:25:21.0000000' AS DateTime2), 20, 17, N'Insert', N'添加', N'Insert')
INSERT [dbo].[SysMenuFunction] ([Id], [LastModificationTime], [CreationTime], [Number], [MenuId], [FunctionCode], [FunctionName], [Remark]) VALUES (N'86ff83fd-d34a-4290-0f41-08d9fdad00ab', CAST(N'2022-03-04T15:25:21.0000000' AS DateTime2), CAST(N'2022-03-04T15:25:21.0000000' AS DateTime2), 30, 17, N'Update', N'修改', N'Update')
INSERT [dbo].[SysMenuFunction] ([Id], [LastModificationTime], [CreationTime], [Number], [MenuId], [FunctionCode], [FunctionName], [Remark]) VALUES (N'7ea8f706-bfe5-42b2-0f42-08d9fdad00ab', CAST(N'2022-03-04T15:25:21.0000000' AS DateTime2), CAST(N'2022-03-04T15:25:21.0000000' AS DateTime2), 40, 17, N'Delete', N'删除', N'Delete')
INSERT [dbo].[SysMenuFunction] ([Id], [LastModificationTime], [CreationTime], [Number], [MenuId], [FunctionCode], [FunctionName], [Remark]) VALUES (N'dee401b1-e20e-496e-0f43-08d9fdad00ab', CAST(N'2022-03-04T15:25:21.0000000' AS DateTime2), CAST(N'2022-03-04T15:25:21.0000000' AS DateTime2), 50, 17, N'Save', N'保存', N'Save')
INSERT [dbo].[SysMenuFunction] ([Id], [LastModificationTime], [CreationTime], [Number], [MenuId], [FunctionCode], [FunctionName], [Remark]) VALUES (N'0b27e69f-af16-4481-0f44-08d9fdad00ab', CAST(N'2022-03-04T15:25:21.0000000' AS DateTime2), CAST(N'2022-03-04T15:25:21.0000000' AS DateTime2), 60, 17, N'Search', N'检索', N'Search')
INSERT [dbo].[SysMenuFunction] ([Id], [LastModificationTime], [CreationTime], [Number], [MenuId], [FunctionCode], [FunctionName], [Remark]) VALUES (N'a726455f-1c29-4be0-0f45-08d9fdad00ab', CAST(N'2022-03-04T15:25:21.0000000' AS DateTime2), CAST(N'2022-03-04T15:25:21.0000000' AS DateTime2), 70, 17, N'Export', N'导出', N'Export')
INSERT [dbo].[SysMenuFunction] ([Id], [LastModificationTime], [CreationTime], [Number], [MenuId], [FunctionCode], [FunctionName], [Remark]) VALUES (N'0caa6e7d-92b0-4814-0f46-08d9fdad00ab', CAST(N'2022-03-04T15:25:21.0000000' AS DateTime2), CAST(N'2022-03-04T15:25:21.0000000' AS DateTime2), 80, 17, N'Print', N'打印', N'Print')
INSERT [dbo].[SysMenuFunction] ([Id], [LastModificationTime], [CreationTime], [Number], [MenuId], [FunctionCode], [FunctionName], [Remark]) VALUES (N'db3ab8bd-7709-41a2-0f47-08d9fdad00ab', CAST(N'2022-03-04T15:25:28.0000000' AS DateTime2), CAST(N'2022-03-04T15:25:28.0000000' AS DateTime2), 10, 25, N'Display', N'显示', N'Display')
INSERT [dbo].[SysMenuFunction] ([Id], [LastModificationTime], [CreationTime], [Number], [MenuId], [FunctionCode], [FunctionName], [Remark]) VALUES (N'fe6465bf-e429-45bd-0f48-08d9fdad00ab', CAST(N'2022-03-04T15:25:28.0000000' AS DateTime2), CAST(N'2022-03-04T15:25:28.0000000' AS DateTime2), 20, 25, N'Insert', N'添加', N'Insert')
INSERT [dbo].[SysMenuFunction] ([Id], [LastModificationTime], [CreationTime], [Number], [MenuId], [FunctionCode], [FunctionName], [Remark]) VALUES (N'4a67fcdb-a7a9-4e3c-0f49-08d9fdad00ab', CAST(N'2022-03-04T15:25:28.0000000' AS DateTime2), CAST(N'2022-03-04T15:25:28.0000000' AS DateTime2), 30, 25, N'Update', N'修改', N'Update')
INSERT [dbo].[SysMenuFunction] ([Id], [LastModificationTime], [CreationTime], [Number], [MenuId], [FunctionCode], [FunctionName], [Remark]) VALUES (N'20ab5395-d57c-49db-0f4a-08d9fdad00ab', CAST(N'2022-03-04T15:25:28.0000000' AS DateTime2), CAST(N'2022-03-04T15:25:28.0000000' AS DateTime2), 40, 25, N'Delete', N'删除', N'Delete')
INSERT [dbo].[SysMenuFunction] ([Id], [LastModificationTime], [CreationTime], [Number], [MenuId], [FunctionCode], [FunctionName], [Remark]) VALUES (N'41cb1942-573a-4d63-0f4b-08d9fdad00ab', CAST(N'2022-03-04T15:25:28.0000000' AS DateTime2), CAST(N'2022-03-04T15:25:28.0000000' AS DateTime2), 50, 25, N'Save', N'保存', N'Save')
INSERT [dbo].[SysMenuFunction] ([Id], [LastModificationTime], [CreationTime], [Number], [MenuId], [FunctionCode], [FunctionName], [Remark]) VALUES (N'7e0f6c84-d7f1-4243-0f4c-08d9fdad00ab', CAST(N'2022-03-04T15:25:28.0000000' AS DateTime2), CAST(N'2022-03-04T15:25:28.0000000' AS DateTime2), 60, 25, N'Search', N'检索', N'Search')
INSERT [dbo].[SysMenuFunction] ([Id], [LastModificationTime], [CreationTime], [Number], [MenuId], [FunctionCode], [FunctionName], [Remark]) VALUES (N'1e69df5d-d1e9-4bc8-0f4d-08d9fdad00ab', CAST(N'2022-03-04T15:25:28.0000000' AS DateTime2), CAST(N'2022-03-04T15:25:28.0000000' AS DateTime2), 70, 25, N'Export', N'导出', N'Export')
INSERT [dbo].[SysMenuFunction] ([Id], [LastModificationTime], [CreationTime], [Number], [MenuId], [FunctionCode], [FunctionName], [Remark]) VALUES (N'4bbbe120-0cc6-4a08-0f4e-08d9fdad00ab', CAST(N'2022-03-04T15:25:28.0000000' AS DateTime2), CAST(N'2022-03-04T15:25:28.0000000' AS DateTime2), 80, 25, N'Print', N'打印', N'Print')
INSERT [dbo].[SysMenuFunction] ([Id], [LastModificationTime], [CreationTime], [Number], [MenuId], [FunctionCode], [FunctionName], [Remark]) VALUES (N'45e2ca86-4823-4fb9-0f57-08d9fdad00ab', CAST(N'2022-03-04T15:25:36.0000000' AS DateTime2), CAST(N'2022-03-04T15:25:36.0000000' AS DateTime2), 10, 20, N'Display', N'显示', N'Display')
INSERT [dbo].[SysMenuFunction] ([Id], [LastModificationTime], [CreationTime], [Number], [MenuId], [FunctionCode], [FunctionName], [Remark]) VALUES (N'3e44c6f5-e090-40a1-0f58-08d9fdad00ab', CAST(N'2022-03-04T15:25:36.0000000' AS DateTime2), CAST(N'2022-03-04T15:25:36.0000000' AS DateTime2), 20, 20, N'Insert', N'添加', N'Insert')
INSERT [dbo].[SysMenuFunction] ([Id], [LastModificationTime], [CreationTime], [Number], [MenuId], [FunctionCode], [FunctionName], [Remark]) VALUES (N'22a675f6-efda-481d-0f59-08d9fdad00ab', CAST(N'2022-03-04T15:25:36.0000000' AS DateTime2), CAST(N'2022-03-04T15:25:36.0000000' AS DateTime2), 30, 20, N'Update', N'修改', N'Update')
INSERT [dbo].[SysMenuFunction] ([Id], [LastModificationTime], [CreationTime], [Number], [MenuId], [FunctionCode], [FunctionName], [Remark]) VALUES (N'69da651e-787b-42e5-0f5a-08d9fdad00ab', CAST(N'2022-03-04T15:25:36.0000000' AS DateTime2), CAST(N'2022-03-04T15:25:36.0000000' AS DateTime2), 40, 20, N'Delete', N'删除', N'Delete')
INSERT [dbo].[SysMenuFunction] ([Id], [LastModificationTime], [CreationTime], [Number], [MenuId], [FunctionCode], [FunctionName], [Remark]) VALUES (N'616c4e4a-fb61-49cf-0f5b-08d9fdad00ab', CAST(N'2022-03-04T15:25:36.0000000' AS DateTime2), CAST(N'2022-03-04T15:25:36.0000000' AS DateTime2), 50, 20, N'Save', N'保存', N'Save')
INSERT [dbo].[SysMenuFunction] ([Id], [LastModificationTime], [CreationTime], [Number], [MenuId], [FunctionCode], [FunctionName], [Remark]) VALUES (N'5e4e87bd-c179-4b5b-0f5c-08d9fdad00ab', CAST(N'2022-03-04T15:25:36.0000000' AS DateTime2), CAST(N'2022-03-04T15:25:36.0000000' AS DateTime2), 60, 20, N'Search', N'检索', N'Search')
INSERT [dbo].[SysMenuFunction] ([Id], [LastModificationTime], [CreationTime], [Number], [MenuId], [FunctionCode], [FunctionName], [Remark]) VALUES (N'54743c86-ac73-4345-0f5d-08d9fdad00ab', CAST(N'2022-03-04T15:25:36.0000000' AS DateTime2), CAST(N'2022-03-04T15:25:36.0000000' AS DateTime2), 70, 20, N'Export', N'导出', N'Export')
INSERT [dbo].[SysMenuFunction] ([Id], [LastModificationTime], [CreationTime], [Number], [MenuId], [FunctionCode], [FunctionName], [Remark]) VALUES (N'2469188c-21de-492a-0f5e-08d9fdad00ab', CAST(N'2022-03-04T15:25:36.0000000' AS DateTime2), CAST(N'2022-03-04T15:25:36.0000000' AS DateTime2), 80, 20, N'Print', N'打印', N'Print')
INSERT [dbo].[SysMenuFunction] ([Id], [LastModificationTime], [CreationTime], [Number], [MenuId], [FunctionCode], [FunctionName], [Remark]) VALUES (N'c6ba141b-99ba-4114-0f5f-08d9fdad00ab', CAST(N'2022-03-04T15:25:40.0000000' AS DateTime2), CAST(N'2022-03-04T15:25:40.0000000' AS DateTime2), 10, 21, N'Display', N'显示', N'Display')
INSERT [dbo].[SysMenuFunction] ([Id], [LastModificationTime], [CreationTime], [Number], [MenuId], [FunctionCode], [FunctionName], [Remark]) VALUES (N'0a85e4fd-5a1c-47f6-0f60-08d9fdad00ab', CAST(N'2022-03-04T15:25:40.0000000' AS DateTime2), CAST(N'2022-03-04T15:25:40.0000000' AS DateTime2), 20, 21, N'Insert', N'添加', N'Insert')
INSERT [dbo].[SysMenuFunction] ([Id], [LastModificationTime], [CreationTime], [Number], [MenuId], [FunctionCode], [FunctionName], [Remark]) VALUES (N'f4c73ac0-c66d-4988-0f61-08d9fdad00ab', CAST(N'2022-03-04T15:25:40.0000000' AS DateTime2), CAST(N'2022-03-04T15:25:40.0000000' AS DateTime2), 30, 21, N'Update', N'修改', N'Update')
INSERT [dbo].[SysMenuFunction] ([Id], [LastModificationTime], [CreationTime], [Number], [MenuId], [FunctionCode], [FunctionName], [Remark]) VALUES (N'3cb3cbc7-9e45-4cc3-0f62-08d9fdad00ab', CAST(N'2022-03-04T15:25:40.0000000' AS DateTime2), CAST(N'2022-03-04T15:25:40.0000000' AS DateTime2), 40, 21, N'Delete', N'删除', N'Delete')
INSERT [dbo].[SysMenuFunction] ([Id], [LastModificationTime], [CreationTime], [Number], [MenuId], [FunctionCode], [FunctionName], [Remark]) VALUES (N'6b209d5a-b366-4a61-0f63-08d9fdad00ab', CAST(N'2022-03-04T15:25:40.0000000' AS DateTime2), CAST(N'2022-03-04T15:25:40.0000000' AS DateTime2), 50, 21, N'Save', N'保存', N'Save')
INSERT [dbo].[SysMenuFunction] ([Id], [LastModificationTime], [CreationTime], [Number], [MenuId], [FunctionCode], [FunctionName], [Remark]) VALUES (N'f36b9b06-2826-425f-0f64-08d9fdad00ab', CAST(N'2022-03-04T15:25:40.0000000' AS DateTime2), CAST(N'2022-03-04T15:25:40.0000000' AS DateTime2), 60, 21, N'Search', N'检索', N'Search')
INSERT [dbo].[SysMenuFunction] ([Id], [LastModificationTime], [CreationTime], [Number], [MenuId], [FunctionCode], [FunctionName], [Remark]) VALUES (N'a9503588-e6f7-420b-0f65-08d9fdad00ab', CAST(N'2022-03-04T15:25:40.0000000' AS DateTime2), CAST(N'2022-03-04T15:25:40.0000000' AS DateTime2), 70, 21, N'Export', N'导出', N'Export')
INSERT [dbo].[SysMenuFunction] ([Id], [LastModificationTime], [CreationTime], [Number], [MenuId], [FunctionCode], [FunctionName], [Remark]) VALUES (N'c9e5fff0-6744-47d7-0f66-08d9fdad00ab', CAST(N'2022-03-04T15:25:40.0000000' AS DateTime2), CAST(N'2022-03-04T15:25:40.0000000' AS DateTime2), 80, 21, N'Print', N'打印', N'Print')
INSERT [dbo].[SysMenuFunction] ([Id], [LastModificationTime], [CreationTime], [Number], [MenuId], [FunctionCode], [FunctionName], [Remark]) VALUES (N'9426768e-b90d-41e1-0f67-08d9fdad00ab', CAST(N'2022-03-04T15:25:50.0000000' AS DateTime2), CAST(N'2022-03-04T15:25:50.0000000' AS DateTime2), 10, 23, N'Display', N'显示', N'Display')
INSERT [dbo].[SysMenuFunction] ([Id], [LastModificationTime], [CreationTime], [Number], [MenuId], [FunctionCode], [FunctionName], [Remark]) VALUES (N'e991934a-0d30-416b-0f68-08d9fdad00ab', CAST(N'2022-03-04T15:25:50.0000000' AS DateTime2), CAST(N'2022-03-04T15:25:50.0000000' AS DateTime2), 20, 23, N'Insert', N'添加', N'Insert')
INSERT [dbo].[SysMenuFunction] ([Id], [LastModificationTime], [CreationTime], [Number], [MenuId], [FunctionCode], [FunctionName], [Remark]) VALUES (N'b98a365e-6fb4-4efb-0f69-08d9fdad00ab', CAST(N'2022-03-04T15:25:50.0000000' AS DateTime2), CAST(N'2022-03-04T15:25:50.0000000' AS DateTime2), 30, 23, N'Update', N'修改', N'Update')
INSERT [dbo].[SysMenuFunction] ([Id], [LastModificationTime], [CreationTime], [Number], [MenuId], [FunctionCode], [FunctionName], [Remark]) VALUES (N'92b39a10-3927-4ee7-0f6a-08d9fdad00ab', CAST(N'2022-03-04T15:25:50.0000000' AS DateTime2), CAST(N'2022-03-04T15:25:50.0000000' AS DateTime2), 40, 23, N'Delete', N'删除', N'Delete')
INSERT [dbo].[SysMenuFunction] ([Id], [LastModificationTime], [CreationTime], [Number], [MenuId], [FunctionCode], [FunctionName], [Remark]) VALUES (N'a03d56d7-4b0d-47cc-0f6b-08d9fdad00ab', CAST(N'2022-03-04T15:25:50.0000000' AS DateTime2), CAST(N'2022-03-04T15:25:50.0000000' AS DateTime2), 50, 23, N'Save', N'保存', N'Save')
INSERT [dbo].[SysMenuFunction] ([Id], [LastModificationTime], [CreationTime], [Number], [MenuId], [FunctionCode], [FunctionName], [Remark]) VALUES (N'e2319118-42cc-41a2-0f6c-08d9fdad00ab', CAST(N'2022-03-04T15:25:50.0000000' AS DateTime2), CAST(N'2022-03-04T15:25:50.0000000' AS DateTime2), 60, 23, N'Search', N'检索', N'Search')
INSERT [dbo].[SysMenuFunction] ([Id], [LastModificationTime], [CreationTime], [Number], [MenuId], [FunctionCode], [FunctionName], [Remark]) VALUES (N'0984a2e1-3722-41d4-0f6d-08d9fdad00ab', CAST(N'2022-03-04T15:25:50.0000000' AS DateTime2), CAST(N'2022-03-04T15:25:50.0000000' AS DateTime2), 70, 23, N'Export', N'导出', N'Export')
INSERT [dbo].[SysMenuFunction] ([Id], [LastModificationTime], [CreationTime], [Number], [MenuId], [FunctionCode], [FunctionName], [Remark]) VALUES (N'1d831d57-6634-45d7-0f6e-08d9fdad00ab', CAST(N'2022-03-04T15:25:50.0000000' AS DateTime2), CAST(N'2022-03-04T15:25:50.0000000' AS DateTime2), 80, 23, N'Print', N'打印', N'Print')
INSERT [dbo].[SysMenuFunction] ([Id], [LastModificationTime], [CreationTime], [Number], [MenuId], [FunctionCode], [FunctionName], [Remark]) VALUES (N'c77c812a-1601-4311-0f70-08d9fdad00ab', CAST(N'2022-03-04T15:26:00.0000000' AS DateTime2), CAST(N'2022-03-04T15:26:00.0000000' AS DateTime2), 10, 19, N'Display', N'显示', N'Display')
INSERT [dbo].[SysMenuFunction] ([Id], [LastModificationTime], [CreationTime], [Number], [MenuId], [FunctionCode], [FunctionName], [Remark]) VALUES (N'3f6d0af7-5386-4d3a-0f71-08d9fdad00ab', CAST(N'2022-03-04T15:40:52.0000000' AS DateTime2), CAST(N'2022-03-04T15:40:52.0000000' AS DateTime2), 10, 28, N'Display', N'显示', N'Display')
INSERT [dbo].[SysMenuFunction] ([Id], [LastModificationTime], [CreationTime], [Number], [MenuId], [FunctionCode], [FunctionName], [Remark]) VALUES (N'55750f56-edc9-4771-e2d6-08d9fdefa8f8', CAST(N'2022-03-04T23:00:02.0000000' AS DateTime2), CAST(N'2022-03-04T23:00:02.0000000' AS DateTime2), 10, 24, N'Display', N'显示', N'Display')
INSERT [dbo].[SysMenuFunction] ([Id], [LastModificationTime], [CreationTime], [Number], [MenuId], [FunctionCode], [FunctionName], [Remark]) VALUES (N'7694fbf5-e28d-424c-e2d7-08d9fdefa8f8', CAST(N'2022-03-04T23:00:02.0000000' AS DateTime2), CAST(N'2022-03-04T23:00:02.0000000' AS DateTime2), 40, 24, N'Delete', N'删除', N'Delete')
INSERT [dbo].[SysMenuFunction] ([Id], [LastModificationTime], [CreationTime], [Number], [MenuId], [FunctionCode], [FunctionName], [Remark]) VALUES (N'2186550d-246c-4552-e2d8-08d9fdefa8f8', CAST(N'2022-03-04T23:00:02.0000000' AS DateTime2), CAST(N'2022-03-04T23:00:02.0000000' AS DateTime2), 60, 24, N'Search', N'检索', N'Search')
GO
INSERT [dbo].[SysOperationLog] ([Id], [Api], [Ip], [Form], [FormBody], [QueryString], [Browser], [OS], [UserId], [TakeUpTime], [LastModificationTime], [CreationTime]) VALUES (N'3c649001-c624-4fef-1d87-08da089496f8', N'/api/admin/SysUser/info', N'0.0.0.1', N'', N'', N'', N'Chrome99', N'Windows10', N'0198459e-2034-4533-b843-5d227ad20740', 281, CAST(N'2022-03-18T12:05:51.0000000' AS DateTime2), CAST(N'2022-03-18T12:05:51.0000000' AS DateTime2))
INSERT [dbo].[SysOperationLog] ([Id], [Api], [Ip], [Form], [FormBody], [QueryString], [Browser], [OS], [UserId], [TakeUpTime], [LastModificationTime], [CreationTime]) VALUES (N'862bd4b7-c179-45db-1d88-08da089496f8', N'/api/admin/SysUser/info', N'0.0.0.1', N'', N'', N'', N'Chrome99', N'Windows10', N'0198459e-2034-4533-b843-5d227ad20740', 40, CAST(N'2022-03-18T12:05:56.0000000' AS DateTime2), CAST(N'2022-03-18T12:05:56.0000000' AS DateTime2))
INSERT [dbo].[SysOperationLog] ([Id], [Api], [Ip], [Form], [FormBody], [QueryString], [Browser], [OS], [UserId], [TakeUpTime], [LastModificationTime], [CreationTime]) VALUES (N'b44f690d-c0d1-472f-1d89-08da089496f8', N'/api/admin/SysMenu/getAll', N'0.0.0.1', N'', N'{"name":null}', N'', N'Chrome99', N'Windows10', N'0198459e-2034-4533-b843-5d227ad20740', 64, CAST(N'2022-03-18T12:06:00.0000000' AS DateTime2), CAST(N'2022-03-18T12:06:00.0000000' AS DateTime2))
INSERT [dbo].[SysOperationLog] ([Id], [Api], [Ip], [Form], [FormBody], [QueryString], [Browser], [OS], [UserId], [TakeUpTime], [LastModificationTime], [CreationTime]) VALUES (N'2e7f8d22-e59f-4e41-1d8a-08da089496f8', N'/api/admin/SysMenu/findForm/2', N'0.0.0.1', N'', N'', N'', N'Chrome99', N'Windows10', N'0198459e-2034-4533-b843-5d227ad20740', 105, CAST(N'2022-03-18T12:06:05.0000000' AS DateTime2), CAST(N'2022-03-18T12:06:05.0000000' AS DateTime2))
INSERT [dbo].[SysOperationLog] ([Id], [Api], [Ip], [Form], [FormBody], [QueryString], [Browser], [OS], [UserId], [TakeUpTime], [LastModificationTime], [CreationTime]) VALUES (N'9a2538c3-493e-4e98-1d8b-08da089496f8', N'/api/admin/SysMenu/saveForm', N'0.0.0.1', N'', N'{"id":2,"form":{"id":2,"levelCode":"1.2","number":10,"name":"Antd Vue3.0组件","componentName":"AppComponentsCom","url":"views/AppComponents.vue","router":"/app/components","jumpUrl":null,"icon":"LayoutOutlined","parentId":1,"show":true,"close":true,"keepAlive":true,"state":true,"type":2,"lastModificationTime":"2022-03-04 12:26:04","creationTime":"2021-01-16 16:05:22"},"allFunctions":[{"number":10,"name":"显示","byName":"Display","remark":"Display","id":"c9518758-b2e1-4f51-b517-5282e273889c","lastModificationTime":"2021-04-18 22:08:06","creationTime":"2016-06-20 13:40:52"},{"number":20,"name":"添加","byName":"Insert","remark":"Insert","id":"bffefb1c-8988-4ddf-b4ac-81c2b30e80cd","lastModificationTime":"2021-04-18 22:08:06","creationTime":"2016-06-20 13:40:52"},{"number":30,"name":"修改","byName":"Update","remark":"Update","id":"e7ef2a05-8317-41c3-b588-99519fe88bf9","lastModificationTime":"2021-04-18 22:08:06","creationTime":"2016-06-20 13:40:52"},{"number":40,"name":"删除","byName":"Delete","remark":"Delete","id":"9c388461-2704-4c5e-a729-72c17e9018e1","lastModificationTime":"2021-04-18 22:08:06","creationTime":"2016-06-20 13:40:52"},{"number":50,"name":"保存","byName":"Save","remark":"Save","id":"383e7ee2-7690-46ac-9230-65155c84aa30","lastModificationTime":"2021-04-18 22:08:06","creationTime":"2016-06-20 13:40:52"},{"number":60,"name":"检索","byName":"Search","remark":"Search","id":"f27ecb0a-197d-47b1-b243-59a8c71302bf","lastModificationTime":"2021-04-18 22:08:06","creationTime":"2016-06-20 13:40:52"},{"number":70,"name":"导出","byName":"Export","remark":"Export","id":"2401f4d0-60b0-4e2e-903f-84c603373572","lastModificationTime":"2021-04-18 22:08:06","creationTime":"2016-06-20 13:40:52"},{"number":80,"name":"打印","byName":"Print","remark":"Print","id":"b6fd5425-504a-46a9-993b-2f8dc9158eb8","lastModificationTime":"2021-04-18 22:08:06","creationTime":"2016-06-20 13:40:52"}],"menuFunctionList":[{"number":10,"menuId":2,"functionCode":"Display","functionName":"显示","remark":"Display","id":"a7cd04db-bbe3-49b6-0f1e-08d9fdad00ab","lastModificationTime":"2022-03-04 15:24:16","creationTime":"2022-03-04 15:24:16"}]}', N'', N'Chrome99', N'Windows10', N'0198459e-2034-4533-b843-5d227ad20740', 435, CAST(N'2022-03-18T12:06:20.0000000' AS DateTime2), CAST(N'2022-03-18T12:06:20.0000000' AS DateTime2))
INSERT [dbo].[SysOperationLog] ([Id], [Api], [Ip], [Form], [FormBody], [QueryString], [Browser], [OS], [UserId], [TakeUpTime], [LastModificationTime], [CreationTime]) VALUES (N'ae1e039a-5457-4ac9-1d8c-08da089496f8', N'/api/admin/SysMenu/getAll', N'0.0.0.1', N'', N'{"name":null}', N'', N'Chrome99', N'Windows10', N'0198459e-2034-4533-b843-5d227ad20740', 22, CAST(N'2022-03-18T12:06:20.0000000' AS DateTime2), CAST(N'2022-03-18T12:06:20.0000000' AS DateTime2))
INSERT [dbo].[SysOperationLog] ([Id], [Api], [Ip], [Form], [FormBody], [QueryString], [Browser], [OS], [UserId], [TakeUpTime], [LastModificationTime], [CreationTime]) VALUES (N'7ce2e731-82c0-424a-1d8d-08da089496f8', N'/api/admin/SysMenu/findForm/32', N'0.0.0.1', N'', N'', N'', N'Chrome99', N'Windows10', N'0198459e-2034-4533-b843-5d227ad20740', 33, CAST(N'2022-03-18T12:06:23.0000000' AS DateTime2), CAST(N'2022-03-18T12:06:23.0000000' AS DateTime2))
INSERT [dbo].[SysOperationLog] ([Id], [Api], [Ip], [Form], [FormBody], [QueryString], [Browser], [OS], [UserId], [TakeUpTime], [LastModificationTime], [CreationTime]) VALUES (N'3fcc5267-92fa-4879-1d8e-08da089496f8', N'/api/admin/SysMenu/saveForm', N'0.0.0.1', N'', N'{"id":32,"form":{"id":32,"levelCode":"1.32","number":20,"name":"图标展示","componentName":"IconsVue","url":"views/Icons.vue","router":"/icons","jumpUrl":null,"icon":"TagsTwoTone","parentId":1,"show":true,"close":true,"keepAlive":true,"state":true,"type":2,"lastModificationTime":"2022-03-04 12:26:08","creationTime":"2022-02-24 10:51:38"},"allFunctions":[{"number":10,"name":"显示","byName":"Display","remark":"Display","id":"c9518758-b2e1-4f51-b517-5282e273889c","lastModificationTime":"2021-04-18 22:08:06","creationTime":"2016-06-20 13:40:52"},{"number":20,"name":"添加","byName":"Insert","remark":"Insert","id":"bffefb1c-8988-4ddf-b4ac-81c2b30e80cd","lastModificationTime":"2021-04-18 22:08:06","creationTime":"2016-06-20 13:40:52"},{"number":30,"name":"修改","byName":"Update","remark":"Update","id":"e7ef2a05-8317-41c3-b588-99519fe88bf9","lastModificationTime":"2021-04-18 22:08:06","creationTime":"2016-06-20 13:40:52"},{"number":40,"name":"删除","byName":"Delete","remark":"Delete","id":"9c388461-2704-4c5e-a729-72c17e9018e1","lastModificationTime":"2021-04-18 22:08:06","creationTime":"2016-06-20 13:40:52"},{"number":50,"name":"保存","byName":"Save","remark":"Save","id":"383e7ee2-7690-46ac-9230-65155c84aa30","lastModificationTime":"2021-04-18 22:08:06","creationTime":"2016-06-20 13:40:52"},{"number":60,"name":"检索","byName":"Search","remark":"Search","id":"f27ecb0a-197d-47b1-b243-59a8c71302bf","lastModificationTime":"2021-04-18 22:08:06","creationTime":"2016-06-20 13:40:52"},{"number":70,"name":"导出","byName":"Export","remark":"Export","id":"2401f4d0-60b0-4e2e-903f-84c603373572","lastModificationTime":"2021-04-18 22:08:06","creationTime":"2016-06-20 13:40:52"},{"number":80,"name":"打印","byName":"Print","remark":"Print","id":"b6fd5425-504a-46a9-993b-2f8dc9158eb8","lastModificationTime":"2021-04-18 22:08:06","creationTime":"2016-06-20 13:40:52"}],"menuFunctionList":[{"number":10,"menuId":32,"functionCode":"Display","functionName":"显示","remark":"Display","id":"6c09c0c0-72fa-4842-0f1f-08d9fdad00ab","lastModificationTime":"2022-03-04 15:24:21","creationTime":"2022-03-04 15:24:21"}]}', N'', N'Chrome99', N'Windows10', N'0198459e-2034-4533-b843-5d227ad20740', 63, CAST(N'2022-03-18T12:06:38.0000000' AS DateTime2), CAST(N'2022-03-18T12:06:38.0000000' AS DateTime2))
INSERT [dbo].[SysOperationLog] ([Id], [Api], [Ip], [Form], [FormBody], [QueryString], [Browser], [OS], [UserId], [TakeUpTime], [LastModificationTime], [CreationTime]) VALUES (N'1c9b9a10-9b29-4678-1d8f-08da089496f8', N'/api/admin/SysMenu/getAll', N'0.0.0.1', N'', N'{"name":null}', N'', N'Chrome99', N'Windows10', N'0198459e-2034-4533-b843-5d227ad20740', 36, CAST(N'2022-03-18T12:06:38.0000000' AS DateTime2), CAST(N'2022-03-18T12:06:38.0000000' AS DateTime2))
INSERT [dbo].[SysOperationLog] ([Id], [Api], [Ip], [Form], [FormBody], [QueryString], [Browser], [OS], [UserId], [TakeUpTime], [LastModificationTime], [CreationTime]) VALUES (N'e16ddafe-5d44-4900-1d90-08da089496f8', N'/api/admin/SysUser/info', N'0.0.0.1', N'', N'', N'', N'Chrome99', N'Windows10', N'0198459e-2034-4533-b843-5d227ad20740', 31, CAST(N'2022-03-18T12:06:49.0000000' AS DateTime2), CAST(N'2022-03-18T12:06:49.0000000' AS DateTime2))
GO
SET IDENTITY_INSERT [dbo].[SysOrganization] ON 

INSERT [dbo].[SysOrganization] ([Id], [Name], [OrderNumber], [LevelCode], [Leader], [Phone], [Email], [State], [ParentId], [LastModificationTime], [CreationTime]) VALUES (1, N'阿里巴巴集团', 1, N'1', N'hzy', N'18410912184', N'18410912184@qq.com', 1, NULL, CAST(N'2021-05-27T20:50:31.0000000' AS DateTime2), CAST(N'2021-05-27T20:50:31.0000000' AS DateTime2))
INSERT [dbo].[SysOrganization] ([Id], [Name], [OrderNumber], [LevelCode], [Leader], [Phone], [Email], [State], [ParentId], [LastModificationTime], [CreationTime]) VALUES (2, N'北京分部', 3, N'1.2', N'北京分部', N'132123', N'13131', 1, 1, CAST(N'2021-12-28T16:13:34.0000000' AS DateTime2), CAST(N'2021-05-27T22:33:44.0000000' AS DateTime2))
INSERT [dbo].[SysOrganization] ([Id], [Name], [OrderNumber], [LevelCode], [Leader], [Phone], [Email], [State], [ParentId], [LastModificationTime], [CreationTime]) VALUES (3, N'市场部门', 1, N'1.2.3', N'市场部门', N'234124234', N'234234@qq.com', 1, 2, CAST(N'2021-05-27T22:33:57.0000000' AS DateTime2), CAST(N'2021-05-27T22:33:57.0000000' AS DateTime2))
INSERT [dbo].[SysOrganization] ([Id], [Name], [OrderNumber], [LevelCode], [Leader], [Phone], [Email], [State], [ParentId], [LastModificationTime], [CreationTime]) VALUES (4, N'财务部门', 2, N'1.2.4', N'财务部门', N'435543535', N'123@qq.com', 1, 2, CAST(N'2021-05-27T22:34:11.0000000' AS DateTime2), CAST(N'2021-05-27T22:34:11.0000000' AS DateTime2))
INSERT [dbo].[SysOrganization] ([Id], [Name], [OrderNumber], [LevelCode], [Leader], [Phone], [Email], [State], [ParentId], [LastModificationTime], [CreationTime]) VALUES (5, N'成都分部', 2, N'1.5', N'成都分部', N'123123123', N'123@qq.com', 1, 1, CAST(N'2021-05-27T22:31:45.0000000' AS DateTime2), CAST(N'2021-05-27T21:01:50.0000000' AS DateTime2))
INSERT [dbo].[SysOrganization] ([Id], [Name], [OrderNumber], [LevelCode], [Leader], [Phone], [Email], [State], [ParentId], [LastModificationTime], [CreationTime]) VALUES (7, N'研发部门', 1, N'1.5.7', N'研发部门', N'1234323423', N'12312@qq.com', 1, 5, CAST(N'2021-05-27T22:32:29.0000000' AS DateTime2), CAST(N'2021-05-27T22:32:08.0000000' AS DateTime2))
INSERT [dbo].[SysOrganization] ([Id], [Name], [OrderNumber], [LevelCode], [Leader], [Phone], [Email], [State], [ParentId], [LastModificationTime], [CreationTime]) VALUES (9, N'运维部门', 4, N'1.5.9', N'运维部门', N'1232133452', N'12341@qq.com', 1, 5, CAST(N'2022-03-08T17:07:47.0000000' AS DateTime2), CAST(N'2021-05-27T22:33:25.0000000' AS DateTime2))
INSERT [dbo].[SysOrganization] ([Id], [Name], [OrderNumber], [LevelCode], [Leader], [Phone], [Email], [State], [ParentId], [LastModificationTime], [CreationTime]) VALUES (10, N'测试部门', 3, N'1.5.10', N'测试部门', N'12313', N'123123@qq.com', 1, 5, CAST(N'2021-05-27T22:32:59.0000000' AS DateTime2), CAST(N'2021-05-27T22:32:59.0000000' AS DateTime2))
INSERT [dbo].[SysOrganization] ([Id], [Name], [OrderNumber], [LevelCode], [Leader], [Phone], [Email], [State], [ParentId], [LastModificationTime], [CreationTime]) VALUES (11, N'技术部门', 2, N'1.5.11', N'技术部门', N'12345678911', N'12345678901@qq.com', 1, 5, CAST(N'2022-03-08T17:07:37.0000000' AS DateTime2), CAST(N'2022-03-08T17:00:20.0000000' AS DateTime2))
SET IDENTITY_INSERT [dbo].[SysOrganization] OFF
GO
INSERT [dbo].[SysPost] ([Id], [Number], [Code], [Name], [State], [Remarks], [LastModificationTime], [CreationTime]) VALUES (N'f0bd38c2-f1de-4bd9-e2db-08da00a93622', 5, N'dotnet_engineer', N'DotNet软件工程师', 1, NULL, CAST(N'2022-03-08T10:13:18.0000000' AS DateTime2), CAST(N'2022-03-08T10:13:18.0000000' AS DateTime2))
INSERT [dbo].[SysPost] ([Id], [Number], [Code], [Name], [State], [Remarks], [LastModificationTime], [CreationTime]) VALUES (N'0716b4b0-9a06-43e9-8ae8-82c74875f83e', 2, N'se', N'项目经理', 1, NULL, CAST(N'2021-05-27T20:26:35.0000000' AS DateTime2), CAST(N'2021-05-27T20:26:35.0000000' AS DateTime2))
INSERT [dbo].[SysPost] ([Id], [Number], [Code], [Name], [State], [Remarks], [LastModificationTime], [CreationTime]) VALUES (N'96927c30-41d0-4ced-8e29-cbed35c90fb0', 1, N'ceo', N'董事长', 1, NULL, CAST(N'2021-05-27T20:26:22.0000000' AS DateTime2), CAST(N'2021-05-27T20:26:22.0000000' AS DateTime2))
INSERT [dbo].[SysPost] ([Id], [Number], [Code], [Name], [State], [Remarks], [LastModificationTime], [CreationTime]) VALUES (N'e46af329-6d08-442c-9837-f22cff954411', 4, N'user', N'普通员工', 1, NULL, CAST(N'2021-05-27T20:26:52.0000000' AS DateTime2), CAST(N'2021-05-27T20:26:52.0000000' AS DateTime2))
INSERT [dbo].[SysPost] ([Id], [Number], [Code], [Name], [State], [Remarks], [LastModificationTime], [CreationTime]) VALUES (N'f0c67537-8094-429a-b474-f54ac518609e', 3, N'hr', N'人力资源', 1, NULL, CAST(N'2021-05-27T20:26:44.0000000' AS DateTime2), CAST(N'2021-05-27T20:26:44.0000000' AS DateTime2))
GO
INSERT [dbo].[SysRole] ([Id], [LastModificationTime], [CreationTime], [Number], [Name], [Remark], [DeleteLock]) VALUES (N'18fa4771-6f58-46a3-80d2-6f0f5e9972e3', CAST(N'2021-01-10T11:25:12.0000000' AS DateTime2), CAST(N'2016-07-06T17:59:20.0000000' AS DateTime2), 1, N'超级管理员', N'拥有所有权限', 1)
INSERT [dbo].[SysRole] ([Id], [LastModificationTime], [CreationTime], [Number], [Name], [Remark], [DeleteLock]) VALUES (N'40ff1844-c099-4061-98e0-cd6e544fcfd3', CAST(N'2021-01-30T00:51:17.0000000' AS DateTime2), CAST(N'2016-07-06T17:59:20.0000000' AS DateTime2), 2, N'普通用户', N'普通用户', 1)
GO
INSERT [dbo].[SysRoleMenuFunction] ([Id], [RoleId], [MenuId], [MenuFunctionId], [LastModificationTime], [CreationTime]) VALUES (N'8e81677b-0b69-4aa2-50b7-08da0046a5b6', N'40ff1844-c099-4061-98e0-cd6e544fcfd3', 2, N'a7cd04db-bbe3-49b6-0f1e-08d9fdad00ab', CAST(N'2022-03-07T22:27:45.0000000' AS DateTime2), CAST(N'2022-03-07T22:27:45.0000000' AS DateTime2))
INSERT [dbo].[SysRoleMenuFunction] ([Id], [RoleId], [MenuId], [MenuFunctionId], [LastModificationTime], [CreationTime]) VALUES (N'c6c7c04b-d22e-4aad-50b8-08da0046a5b6', N'40ff1844-c099-4061-98e0-cd6e544fcfd3', 3, N'f64cfe50-1ef1-457f-0f20-08d9fdad00ab', CAST(N'2022-03-07T22:27:45.0000000' AS DateTime2), CAST(N'2022-03-07T22:27:45.0000000' AS DateTime2))
INSERT [dbo].[SysRoleMenuFunction] ([Id], [RoleId], [MenuId], [MenuFunctionId], [LastModificationTime], [CreationTime]) VALUES (N'74857e94-3aea-4161-50b9-08da0046a5b6', N'40ff1844-c099-4061-98e0-cd6e544fcfd3', 5, N'a1ddd02f-8c21-4d79-0f21-08d9fdad00ab', CAST(N'2022-03-07T22:27:45.0000000' AS DateTime2), CAST(N'2022-03-07T22:27:45.0000000' AS DateTime2))
INSERT [dbo].[SysRoleMenuFunction] ([Id], [RoleId], [MenuId], [MenuFunctionId], [LastModificationTime], [CreationTime]) VALUES (N'537ee83d-2022-40f1-50ba-08da0046a5b6', N'40ff1844-c099-4061-98e0-cd6e544fcfd3', 6, N'1cb6fbe1-4a6c-4aad-0f22-08d9fdad00ab', CAST(N'2022-03-07T22:27:45.0000000' AS DateTime2), CAST(N'2022-03-07T22:27:45.0000000' AS DateTime2))
INSERT [dbo].[SysRoleMenuFunction] ([Id], [RoleId], [MenuId], [MenuFunctionId], [LastModificationTime], [CreationTime]) VALUES (N'bcc9dd20-62ff-4a1b-50bb-08da0046a5b6', N'40ff1844-c099-4061-98e0-cd6e544fcfd3', 8, N'd2e6ea60-2cf6-478a-0f23-08d9fdad00ab', CAST(N'2022-03-07T22:27:45.0000000' AS DateTime2), CAST(N'2022-03-07T22:27:45.0000000' AS DateTime2))
INSERT [dbo].[SysRoleMenuFunction] ([Id], [RoleId], [MenuId], [MenuFunctionId], [LastModificationTime], [CreationTime]) VALUES (N'2dadaf13-6ddc-4458-50bc-08da0046a5b6', N'40ff1844-c099-4061-98e0-cd6e544fcfd3', 9, N'b7533a90-dae4-4263-0f24-08d9fdad00ab', CAST(N'2022-03-07T22:27:45.0000000' AS DateTime2), CAST(N'2022-03-07T22:27:45.0000000' AS DateTime2))
INSERT [dbo].[SysRoleMenuFunction] ([Id], [RoleId], [MenuId], [MenuFunctionId], [LastModificationTime], [CreationTime]) VALUES (N'b2a39591-7a0c-419d-50bd-08da0046a5b6', N'40ff1844-c099-4061-98e0-cd6e544fcfd3', 10, N'ec535908-8671-4928-0f25-08d9fdad00ab', CAST(N'2022-03-07T22:27:45.0000000' AS DateTime2), CAST(N'2022-03-07T22:27:45.0000000' AS DateTime2))
INSERT [dbo].[SysRoleMenuFunction] ([Id], [RoleId], [MenuId], [MenuFunctionId], [LastModificationTime], [CreationTime]) VALUES (N'a96009ad-b7e9-4eb6-50be-08da0046a5b6', N'40ff1844-c099-4061-98e0-cd6e544fcfd3', 11, N'3bc0e68f-d03d-4e99-0f26-08d9fdad00ab', CAST(N'2022-03-07T22:27:45.0000000' AS DateTime2), CAST(N'2022-03-07T22:27:45.0000000' AS DateTime2))
INSERT [dbo].[SysRoleMenuFunction] ([Id], [RoleId], [MenuId], [MenuFunctionId], [LastModificationTime], [CreationTime]) VALUES (N'59f64fdf-1dc8-4031-50bf-08da0046a5b6', N'40ff1844-c099-4061-98e0-cd6e544fcfd3', 13, N'eb958545-6449-40db-0f27-08d9fdad00ab', CAST(N'2022-03-07T22:27:45.0000000' AS DateTime2), CAST(N'2022-03-07T22:27:45.0000000' AS DateTime2))
INSERT [dbo].[SysRoleMenuFunction] ([Id], [RoleId], [MenuId], [MenuFunctionId], [LastModificationTime], [CreationTime]) VALUES (N'f3c080a9-ddab-4bce-50c0-08da0046a5b6', N'40ff1844-c099-4061-98e0-cd6e544fcfd3', 13, N'b5881044-afb8-40b2-0f28-08d9fdad00ab', CAST(N'2022-03-07T22:27:45.0000000' AS DateTime2), CAST(N'2022-03-07T22:27:45.0000000' AS DateTime2))
INSERT [dbo].[SysRoleMenuFunction] ([Id], [RoleId], [MenuId], [MenuFunctionId], [LastModificationTime], [CreationTime]) VALUES (N'e6d2abff-c1d4-4855-50c1-08da0046a5b6', N'40ff1844-c099-4061-98e0-cd6e544fcfd3', 13, N'106fb69a-8bb5-4559-0f29-08d9fdad00ab', CAST(N'2022-03-07T22:27:45.0000000' AS DateTime2), CAST(N'2022-03-07T22:27:45.0000000' AS DateTime2))
INSERT [dbo].[SysRoleMenuFunction] ([Id], [RoleId], [MenuId], [MenuFunctionId], [LastModificationTime], [CreationTime]) VALUES (N'02b217c2-9aa8-4102-50c2-08da0046a5b6', N'40ff1844-c099-4061-98e0-cd6e544fcfd3', 13, N'f4621fbe-6b40-4454-0f2a-08d9fdad00ab', CAST(N'2022-03-07T22:27:45.0000000' AS DateTime2), CAST(N'2022-03-07T22:27:45.0000000' AS DateTime2))
INSERT [dbo].[SysRoleMenuFunction] ([Id], [RoleId], [MenuId], [MenuFunctionId], [LastModificationTime], [CreationTime]) VALUES (N'0a2da8ba-74a6-4bdc-50c3-08da0046a5b6', N'40ff1844-c099-4061-98e0-cd6e544fcfd3', 13, N'523b53b5-8159-4a16-0f2b-08d9fdad00ab', CAST(N'2022-03-07T22:27:45.0000000' AS DateTime2), CAST(N'2022-03-07T22:27:45.0000000' AS DateTime2))
INSERT [dbo].[SysRoleMenuFunction] ([Id], [RoleId], [MenuId], [MenuFunctionId], [LastModificationTime], [CreationTime]) VALUES (N'25f59bc4-b4a2-4b0e-50c4-08da0046a5b6', N'40ff1844-c099-4061-98e0-cd6e544fcfd3', 13, N'a3754771-f6e9-4a23-0f2c-08d9fdad00ab', CAST(N'2022-03-07T22:27:45.0000000' AS DateTime2), CAST(N'2022-03-07T22:27:45.0000000' AS DateTime2))
INSERT [dbo].[SysRoleMenuFunction] ([Id], [RoleId], [MenuId], [MenuFunctionId], [LastModificationTime], [CreationTime]) VALUES (N'c3f0d869-eb3a-4966-50c5-08da0046a5b6', N'40ff1844-c099-4061-98e0-cd6e544fcfd3', 13, N'b96f977c-a36e-4e7f-0f2d-08d9fdad00ab', CAST(N'2022-03-07T22:27:45.0000000' AS DateTime2), CAST(N'2022-03-07T22:27:45.0000000' AS DateTime2))
INSERT [dbo].[SysRoleMenuFunction] ([Id], [RoleId], [MenuId], [MenuFunctionId], [LastModificationTime], [CreationTime]) VALUES (N'82220bff-16f7-4413-50c6-08da0046a5b6', N'40ff1844-c099-4061-98e0-cd6e544fcfd3', 13, N'541d9045-47b2-4629-0f2e-08d9fdad00ab', CAST(N'2022-03-07T22:27:45.0000000' AS DateTime2), CAST(N'2022-03-07T22:27:45.0000000' AS DateTime2))
INSERT [dbo].[SysRoleMenuFunction] ([Id], [RoleId], [MenuId], [MenuFunctionId], [LastModificationTime], [CreationTime]) VALUES (N'6623169b-0573-4f75-50c7-08da0046a5b6', N'40ff1844-c099-4061-98e0-cd6e544fcfd3', 15, N'13f3f74d-c6fc-4488-0f2f-08d9fdad00ab', CAST(N'2022-03-07T22:27:45.0000000' AS DateTime2), CAST(N'2022-03-07T22:27:45.0000000' AS DateTime2))
INSERT [dbo].[SysRoleMenuFunction] ([Id], [RoleId], [MenuId], [MenuFunctionId], [LastModificationTime], [CreationTime]) VALUES (N'6ac3e66c-48be-4262-50c8-08da0046a5b6', N'40ff1844-c099-4061-98e0-cd6e544fcfd3', 19, N'c77c812a-1601-4311-0f70-08d9fdad00ab', CAST(N'2022-03-07T22:27:45.0000000' AS DateTime2), CAST(N'2022-03-07T22:27:45.0000000' AS DateTime2))
INSERT [dbo].[SysRoleMenuFunction] ([Id], [RoleId], [MenuId], [MenuFunctionId], [LastModificationTime], [CreationTime]) VALUES (N'5b3530fd-a94f-47ae-50c9-08da0046a5b6', N'40ff1844-c099-4061-98e0-cd6e544fcfd3', 28, N'3f6d0af7-5386-4d3a-0f71-08d9fdad00ab', CAST(N'2022-03-07T22:27:45.0000000' AS DateTime2), CAST(N'2022-03-07T22:27:45.0000000' AS DateTime2))
INSERT [dbo].[SysRoleMenuFunction] ([Id], [RoleId], [MenuId], [MenuFunctionId], [LastModificationTime], [CreationTime]) VALUES (N'24e9a375-893b-4432-50ca-08da0046a5b6', N'40ff1844-c099-4061-98e0-cd6e544fcfd3', 32, N'6c09c0c0-72fa-4842-0f1f-08d9fdad00ab', CAST(N'2022-03-07T22:27:45.0000000' AS DateTime2), CAST(N'2022-03-07T22:27:45.0000000' AS DateTime2))
GO
INSERT [dbo].[SysUser] ([Id], [LastModificationTime], [CreationTime], [Name], [LoginName], [Password], [Phone], [Email], [DeleteLock], [OrganizationId]) VALUES (N'5722af0f-2366-4fc9-62d5-08da00e3d8a0', CAST(N'2022-03-08T17:13:02.0000000' AS DateTime2), CAST(N'2022-03-08T17:13:02.0000000' AS DateTime2), N'杜甫', N'杜甫', N'46F94C8DE14FB36680850768FF1B7F2A', N'12345678900', N'12345678900@qq.com', 0, 7)
INSERT [dbo].[SysUser] ([Id], [LastModificationTime], [CreationTime], [Name], [LoginName], [Password], [Phone], [Email], [DeleteLock], [OrganizationId]) VALUES (N'4fd6a740-0cf1-4975-62d6-08da00e3d8a0', CAST(N'2022-03-08T17:14:13.0000000' AS DateTime2), CAST(N'2022-03-08T17:14:13.0000000' AS DateTime2), N'李商隐', N'李商隐', N'46F94C8DE14FB36680850768FF1B7F2A', N'12345678900', N'12345678900@qq.com', 0, 7)
INSERT [dbo].[SysUser] ([Id], [LastModificationTime], [CreationTime], [Name], [LoginName], [Password], [Phone], [Email], [DeleteLock], [OrganizationId]) VALUES (N'e225e163-31c9-4da9-62d7-08da00e3d8a0', CAST(N'2022-03-08T17:15:07.0000000' AS DateTime2), CAST(N'2022-03-08T17:15:07.0000000' AS DateTime2), N'苏轼', N'苏轼', N'46F94C8DE14FB36680850768FF1B7F2A', N'12345678900', N'12345678900@qq.com', 0, 7)
INSERT [dbo].[SysUser] ([Id], [LastModificationTime], [CreationTime], [Name], [LoginName], [Password], [Phone], [Email], [DeleteLock], [OrganizationId]) VALUES (N'3739f349-7995-4c63-62d8-08da00e3d8a0', CAST(N'2022-03-08T17:17:58.0000000' AS DateTime2), CAST(N'2022-03-08T17:17:58.0000000' AS DateTime2), N'白居易', N'白居易', N'46F94C8DE14FB36680850768FF1B7F2A', N'12345678900', N'12345678900@qq.com', 0, 7)
INSERT [dbo].[SysUser] ([Id], [LastModificationTime], [CreationTime], [Name], [LoginName], [Password], [Phone], [Email], [DeleteLock], [OrganizationId]) VALUES (N'a3f9784c-5f00-4ec9-62d9-08da00e3d8a0', CAST(N'2022-03-08T17:19:22.0000000' AS DateTime2), CAST(N'2022-03-08T17:19:22.0000000' AS DateTime2), N'陶渊明 ', N'陶渊明 ', N'46F94C8DE14FB36680850768FF1B7F2A', N'12345678900', N'12345678900@qq.com', 0, 7)
INSERT [dbo].[SysUser] ([Id], [LastModificationTime], [CreationTime], [Name], [LoginName], [Password], [Phone], [Email], [DeleteLock], [OrganizationId]) VALUES (N'a1b6dafb-2b6a-4ff9-62da-08da00e3d8a0', CAST(N'2022-03-08T17:19:55.0000000' AS DateTime2), CAST(N'2022-03-08T17:19:55.0000000' AS DateTime2), N'屈原', N'屈原', N'46F94C8DE14FB36680850768FF1B7F2A', N'12345678900', N'12345678900@qq.com', 0, 7)
INSERT [dbo].[SysUser] ([Id], [LastModificationTime], [CreationTime], [Name], [LoginName], [Password], [Phone], [Email], [DeleteLock], [OrganizationId]) VALUES (N'cc186fe2-ee27-4292-62db-08da00e3d8a0', CAST(N'2022-03-08T17:20:20.0000000' AS DateTime2), CAST(N'2022-03-08T17:20:20.0000000' AS DateTime2), N'孟浩然', N'孟浩然', N'46F94C8DE14FB36680850768FF1B7F2A', N'12345678900', N'12345678900@qq.com', 0, 7)
INSERT [dbo].[SysUser] ([Id], [LastModificationTime], [CreationTime], [Name], [LoginName], [Password], [Phone], [Email], [DeleteLock], [OrganizationId]) VALUES (N'1550d6d4-0529-4fdd-62dc-08da00e3d8a0', CAST(N'2022-03-08T17:30:56.0000000' AS DateTime2), CAST(N'2022-03-08T17:21:56.0000000' AS DateTime2), N'鲁迅', N'鲁迅', N'46F94C8DE14FB36680850768FF1B7F2A', N'12345678900', N'12345678900@qq.com', 0, 7)
INSERT [dbo].[SysUser] ([Id], [LastModificationTime], [CreationTime], [Name], [LoginName], [Password], [Phone], [Email], [DeleteLock], [OrganizationId]) VALUES (N'0198459e-2034-4533-b843-5d227ad20740', CAST(N'2022-03-08T17:27:36.0000000' AS DateTime2), CAST(N'2017-04-06T19:55:53.0000000' AS DateTime2), N'超级管理员', N'admin', N'E10ADC3949BA59ABBE56E057F20F883E', N'10000000000', N'1396510655@qq.com', 1, 7)
INSERT [dbo].[SysUser] ([Id], [LastModificationTime], [CreationTime], [Name], [LoginName], [Password], [Phone], [Email], [DeleteLock], [OrganizationId]) VALUES (N'ac18f496-e93d-42f0-b59e-e321acc85335', CAST(N'2022-03-08T10:12:14.0000000' AS DateTime2), CAST(N'2017-04-06T19:55:53.0000000' AS DateTime2), N'李白', N'libai', N'E10ADC3949BA59ABBE56E057F20F883E', N'12345678900', N'12345678900@live.com', 1, 7)
GO
INSERT [dbo].[SysUserPost] ([Id], [UserId], [PostId], [LastModificationTime], [CreationTime]) VALUES (N'978fc672-d829-4dad-abc7-071810c5ad18', N'e225e163-31c9-4da9-62d7-08da00e3d8a0', N'e46af329-6d08-442c-9837-f22cff954411', CAST(N'2022-03-08T17:15:08.0000000' AS DateTime2), CAST(N'2022-03-08T17:15:08.0000000' AS DateTime2))
INSERT [dbo].[SysUserPost] ([Id], [UserId], [PostId], [LastModificationTime], [CreationTime]) VALUES (N'8100145c-9cd0-49bf-9a62-25c9e508bc1c', N'a1b6dafb-2b6a-4ff9-62da-08da00e3d8a0', N'f0bd38c2-f1de-4bd9-e2db-08da00a93622', CAST(N'2022-03-08T17:19:55.0000000' AS DateTime2), CAST(N'2022-03-08T17:19:55.0000000' AS DateTime2))
INSERT [dbo].[SysUserPost] ([Id], [UserId], [PostId], [LastModificationTime], [CreationTime]) VALUES (N'575bf085-47bb-42f2-8b68-620cf460b164', N'0198459e-2034-4533-b843-5d227ad20740', N'96927c30-41d0-4ced-8e29-cbed35c90fb0', CAST(N'2022-03-08T17:29:22.0000000' AS DateTime2), CAST(N'2022-03-08T17:29:22.0000000' AS DateTime2))
INSERT [dbo].[SysUserPost] ([Id], [UserId], [PostId], [LastModificationTime], [CreationTime]) VALUES (N'af1bec7e-3309-4629-9606-72eefa1826b3', N'cc186fe2-ee27-4292-62db-08da00e3d8a0', N'f0bd38c2-f1de-4bd9-e2db-08da00a93622', CAST(N'2022-03-08T17:20:20.0000000' AS DateTime2), CAST(N'2022-03-08T17:20:20.0000000' AS DateTime2))
INSERT [dbo].[SysUserPost] ([Id], [UserId], [PostId], [LastModificationTime], [CreationTime]) VALUES (N'ad627af5-0fe8-4b33-b4ac-73c22c2ea1bc', N'1550d6d4-0529-4fdd-62dc-08da00e3d8a0', N'f0bd38c2-f1de-4bd9-e2db-08da00a93622', CAST(N'2022-03-08T17:30:56.0000000' AS DateTime2), CAST(N'2022-03-08T17:30:56.0000000' AS DateTime2))
INSERT [dbo].[SysUserPost] ([Id], [UserId], [PostId], [LastModificationTime], [CreationTime]) VALUES (N'd4e0ae0b-3573-4901-8fd7-9bb2c88ebe94', N'3739f349-7995-4c63-62d8-08da00e3d8a0', N'f0bd38c2-f1de-4bd9-e2db-08da00a93622', CAST(N'2022-03-08T17:17:58.0000000' AS DateTime2), CAST(N'2022-03-08T17:17:58.0000000' AS DateTime2))
INSERT [dbo].[SysUserPost] ([Id], [UserId], [PostId], [LastModificationTime], [CreationTime]) VALUES (N'b97331a7-e281-4027-aade-9f068558826a', N'5722af0f-2366-4fc9-62d5-08da00e3d8a0', N'f0bd38c2-f1de-4bd9-e2db-08da00a93622', CAST(N'2022-03-08T17:13:02.0000000' AS DateTime2), CAST(N'2022-03-08T17:13:02.0000000' AS DateTime2))
INSERT [dbo].[SysUserPost] ([Id], [UserId], [PostId], [LastModificationTime], [CreationTime]) VALUES (N'0c1a55ba-6bd3-4810-a494-a6b9b7374d4d', N'ac18f496-e93d-42f0-b59e-e321acc85335', N'f0bd38c2-f1de-4bd9-e2db-08da00a93622', CAST(N'2022-03-08T10:13:35.0000000' AS DateTime2), CAST(N'2022-03-08T10:13:35.0000000' AS DateTime2))
INSERT [dbo].[SysUserPost] ([Id], [UserId], [PostId], [LastModificationTime], [CreationTime]) VALUES (N'e64ef93c-2ce5-4b1d-a5d0-a9de937c5a3f', N'e225e163-31c9-4da9-62d7-08da00e3d8a0', N'f0bd38c2-f1de-4bd9-e2db-08da00a93622', CAST(N'2022-03-08T17:15:07.0000000' AS DateTime2), CAST(N'2022-03-08T17:15:07.0000000' AS DateTime2))
INSERT [dbo].[SysUserPost] ([Id], [UserId], [PostId], [LastModificationTime], [CreationTime]) VALUES (N'6f671077-c98d-4106-9736-bf2edb6db58d', N'4fd6a740-0cf1-4975-62d6-08da00e3d8a0', N'e46af329-6d08-442c-9837-f22cff954411', CAST(N'2022-03-08T17:14:13.0000000' AS DateTime2), CAST(N'2022-03-08T17:14:13.0000000' AS DateTime2))
INSERT [dbo].[SysUserPost] ([Id], [UserId], [PostId], [LastModificationTime], [CreationTime]) VALUES (N'6c34f115-28dd-441a-81d5-f6598c97d44a', N'a3f9784c-5f00-4ec9-62d9-08da00e3d8a0', N'f0bd38c2-f1de-4bd9-e2db-08da00a93622', CAST(N'2022-03-08T17:19:22.0000000' AS DateTime2), CAST(N'2022-03-08T17:19:22.0000000' AS DateTime2))
INSERT [dbo].[SysUserPost] ([Id], [UserId], [PostId], [LastModificationTime], [CreationTime]) VALUES (N'b797ff16-d6f7-45db-83ec-f910b2612926', N'4fd6a740-0cf1-4975-62d6-08da00e3d8a0', N'f0bd38c2-f1de-4bd9-e2db-08da00a93622', CAST(N'2022-03-08T17:14:13.0000000' AS DateTime2), CAST(N'2022-03-08T17:14:13.0000000' AS DateTime2))
GO
INSERT [dbo].[SysUserRole] ([Id], [UserId], [RoleId], [LastModificationTime], [CreationTime]) VALUES (N'ad5014f2-92e8-4109-9ca4-013a92390f8b', N'cc186fe2-ee27-4292-62db-08da00e3d8a0', N'40ff1844-c099-4061-98e0-cd6e544fcfd3', CAST(N'2022-03-08T17:20:20.0000000' AS DateTime2), CAST(N'2022-03-08T17:20:20.0000000' AS DateTime2))
INSERT [dbo].[SysUserRole] ([Id], [UserId], [RoleId], [LastModificationTime], [CreationTime]) VALUES (N'ce9f61ac-79d8-426f-9066-36962c017bf6', N'5722af0f-2366-4fc9-62d5-08da00e3d8a0', N'40ff1844-c099-4061-98e0-cd6e544fcfd3', CAST(N'2022-03-08T17:13:02.0000000' AS DateTime2), CAST(N'2022-03-08T17:13:02.0000000' AS DateTime2))
INSERT [dbo].[SysUserRole] ([Id], [UserId], [RoleId], [LastModificationTime], [CreationTime]) VALUES (N'b79a27f7-fc78-421c-9872-3f54bbd303a1', N'1550d6d4-0529-4fdd-62dc-08da00e3d8a0', N'40ff1844-c099-4061-98e0-cd6e544fcfd3', CAST(N'2022-03-08T17:30:56.0000000' AS DateTime2), CAST(N'2022-03-08T17:30:56.0000000' AS DateTime2))
INSERT [dbo].[SysUserRole] ([Id], [UserId], [RoleId], [LastModificationTime], [CreationTime]) VALUES (N'a646def7-0581-4ce9-947e-400360c339f9', N'a1b6dafb-2b6a-4ff9-62da-08da00e3d8a0', N'40ff1844-c099-4061-98e0-cd6e544fcfd3', CAST(N'2022-03-08T17:19:55.0000000' AS DateTime2), CAST(N'2022-03-08T17:19:55.0000000' AS DateTime2))
INSERT [dbo].[SysUserRole] ([Id], [UserId], [RoleId], [LastModificationTime], [CreationTime]) VALUES (N'dbc656a6-4264-417d-97d8-577e1218feca', N'a3f9784c-5f00-4ec9-62d9-08da00e3d8a0', N'40ff1844-c099-4061-98e0-cd6e544fcfd3', CAST(N'2022-03-08T17:19:22.0000000' AS DateTime2), CAST(N'2022-03-08T17:19:22.0000000' AS DateTime2))
INSERT [dbo].[SysUserRole] ([Id], [UserId], [RoleId], [LastModificationTime], [CreationTime]) VALUES (N'1fe23f57-97c5-4670-9064-88d7d972cd28', N'e225e163-31c9-4da9-62d7-08da00e3d8a0', N'40ff1844-c099-4061-98e0-cd6e544fcfd3', CAST(N'2022-03-08T17:15:07.0000000' AS DateTime2), CAST(N'2022-03-08T17:15:07.0000000' AS DateTime2))
INSERT [dbo].[SysUserRole] ([Id], [UserId], [RoleId], [LastModificationTime], [CreationTime]) VALUES (N'a9f8a23b-8c2f-43cc-97af-8ed6f4c4d097', N'4fd6a740-0cf1-4975-62d6-08da00e3d8a0', N'40ff1844-c099-4061-98e0-cd6e544fcfd3', CAST(N'2022-03-08T17:14:13.0000000' AS DateTime2), CAST(N'2022-03-08T17:14:13.0000000' AS DateTime2))
INSERT [dbo].[SysUserRole] ([Id], [UserId], [RoleId], [LastModificationTime], [CreationTime]) VALUES (N'45b7d5af-4d2c-465e-a4b6-99e52af9aee5', N'3739f349-7995-4c63-62d8-08da00e3d8a0', N'40ff1844-c099-4061-98e0-cd6e544fcfd3', CAST(N'2022-03-08T17:17:58.0000000' AS DateTime2), CAST(N'2022-03-08T17:17:58.0000000' AS DateTime2))
INSERT [dbo].[SysUserRole] ([Id], [UserId], [RoleId], [LastModificationTime], [CreationTime]) VALUES (N'1c9f81df-c8a0-45bb-a272-c84bd3af0c19', N'0198459e-2034-4533-b843-5d227ad20740', N'18fa4771-6f58-46a3-80d2-6f0f5e9972e3', CAST(N'2022-03-08T17:29:22.0000000' AS DateTime2), CAST(N'2022-03-08T17:29:22.0000000' AS DateTime2))
INSERT [dbo].[SysUserRole] ([Id], [UserId], [RoleId], [LastModificationTime], [CreationTime]) VALUES (N'fa1fdf14-3847-4194-894c-cd935a3dd9e6', N'ac18f496-e93d-42f0-b59e-e321acc85335', N'40ff1844-c099-4061-98e0-cd6e544fcfd3', CAST(N'2022-03-08T10:13:35.0000000' AS DateTime2), CAST(N'2022-03-08T10:13:35.0000000' AS DateTime2))
GO
ALTER TABLE [dbo].[SysDataAuthority] ADD  CONSTRAINT [DF_DataAuthority_CreationTime]  DEFAULT (getdate()) FOR [CreationTime]
GO
ALTER TABLE [dbo].[SysDataAuthorityCustom] ADD  CONSTRAINT [DF_SysDataAuthorityCustom_CreationTime]  DEFAULT (getdate()) FOR [CreationTime]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'数据权限类型' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SysDataAuthority', @level2type=N'COLUMN',@level2name=N'PermissionType'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'id' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SysDictionary', @level2type=N'COLUMN',@level2name=N'Id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'更新时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SysDictionary', @level2type=N'COLUMN',@level2name=N'LastModificationTime'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'创建时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SysDictionary', @level2type=N'COLUMN',@level2name=N'CreationTime'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'排序号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SysDictionary', @level2type=N'COLUMN',@level2name=N'Sort'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'编码' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SysDictionary', @level2type=N'COLUMN',@level2name=N'Code'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'值' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SysDictionary', @level2type=N'COLUMN',@level2name=N'Value'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'分组名/键' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SysDictionary', @level2type=N'COLUMN',@level2name=N'Name'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'父级分组id' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SysDictionary', @level2type=N'COLUMN',@level2name=N'ParentId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'数据字典' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SysDictionary'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'接口地址' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SysOperationLog', @level2type=N'COLUMN',@level2name=N'Api'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ip地址' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SysOperationLog', @level2type=N'COLUMN',@level2name=N'Ip'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'表单信息' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SysOperationLog', @level2type=N'COLUMN',@level2name=N'Form'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'json表单信息' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SysOperationLog', @level2type=N'COLUMN',@level2name=N'FormBody'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'地址栏信息' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SysOperationLog', @level2type=N'COLUMN',@level2name=N'QueryString'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'当前操作人id' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SysOperationLog', @level2type=N'COLUMN',@level2name=N'UserId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'接口耗时（毫秒）' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SysOperationLog', @level2type=N'COLUMN',@level2name=N'TakeUpTime'
GO
