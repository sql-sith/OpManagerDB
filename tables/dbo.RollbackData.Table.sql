USE [OpManagerDB]
GO
/****** Object:  Table [dbo].[RollbackData]    Script Date: 6/29/2019 5:51:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RollbackData](
	[RESOURCENAME] [varchar](100) NOT NULL,
	[COMPONENTNAME] [varchar](50) NOT NULL,
	[SEGMENTNAME] [varchar](25) NULL,
	[TABLESPACENAME] [varchar](20) NULL,
	[INITIALEXTENT] [int] NULL,
	[NEXTEXTENT] [int] NULL,
	[MINEXTENT] [int] NULL,
	[MAXEXTENT] [int] NULL,
	[STATUS] [varchar](50) NULL,
	[CURRENTSIZE] [int] NULL,
	[BLOCKS] [int] NULL,
	[GETS] [int] NULL,
	[WAITS] [int] NULL,
	[HWMSIZE] [int] NULL,
	[SHRINKS] [int] NULL,
	[WRAPS] [int] NULL,
	[EXTEND] [int] NULL,
	[COLLECTIONTIME] [bigint] NULL
) ON [PRIMARY]
GO
