USE [OpManagerDB]
GO
/****** Object:  Table [dbo].[DataFiles]    Script Date: 6/29/2019 5:46:57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DataFiles](
	[RESOURCENAME] [varchar](100) NOT NULL,
	[COMPONENTNAME] [varchar](50) NOT NULL,
	[FILE_NAME] [varchar](100) NULL,
	[TABLESPACENAME] [varchar](25) NULL,
	[STATUS] [varchar](50) NULL,
	[CREATEBYTES] [int] NULL,
	[DREADS] [int] NULL,
	[WRITES] [int] NULL,
	[AVGRDTIME] [int] NULL,
	[AVGWRTIME] [int] NULL,
	[COLLECTIONTIME] [bigint] NULL
) ON [PRIMARY]
GO
