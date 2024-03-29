USE [db_simpsons]
GO
/****** Object:  User [macoam]    Script Date: 16/10/2019 09:38:39 a. m. ******/
CREATE USER [macoam] FOR LOGIN [macoam] WITH DEFAULT_SCHEMA=[dbo]
GO
ALTER ROLE [db_owner] ADD MEMBER [macoam]
GO
/****** Object:  Table [dbo].[tbl_character]    Script Date: 16/10/2019 09:38:39 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_character](
	[id] [bigint] IDENTITY(1,1) NOT NULL,
	[firstName] [varchar](20) NULL,
	[secondName] [varchar](20) NULL,
	[lastName] [varchar](20) NULL,
	[age] [int] NULL,
	[descript] [varchar](20) NULL,
 CONSTRAINT [PK_tbl_character] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[tbl_character] ON 

INSERT [dbo].[tbl_character] ([id], [firstName], [secondName], [lastName], [age], [descript]) VALUES (7, N'Lisa', N'No tiene', N'Simpsons', 9, N'Hermana de Bart')
INSERT [dbo].[tbl_character] ([id], [firstName], [secondName], [lastName], [age], [descript]) VALUES (8, N'Maggie', N'No tiene', N'Simpsons', 2, N'Hermana de Bart')
INSERT [dbo].[tbl_character] ([id], [firstName], [secondName], [lastName], [age], [descript]) VALUES (9, N'Bart', N'Jay', N'Simpsons', 10, N'Hermano de Lisa')
SET IDENTITY_INSERT [dbo].[tbl_character] OFF
