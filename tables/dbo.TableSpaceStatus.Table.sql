USE [OpManagerDB]
GO
/****** Object:  Table [dbo].[TableSpaceStatus]    Script Date: 6/29/2019 5:52:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TableSpaceStatus](
	[RESOURCENAME] [varchar](100) NOT NULL,
	[COMPONENTNAME] [varchar](50) NOT NULL,
	[TABLESPACENAME] [varchar](25) NULL,
	[STATUS] [varchar](50) NULL,
	[FREEBYTES] [int] NULL,
	[FREEBLOCKS] [int] NULL,
	[TREADS] [int] NULL,
	[WRITES] [int] NULL,
	[READTIME] [bigint] NULL,
	[WRITETIME] [bigint] NULL,
	[COLLECTIONTIME] [bigint] NULL
) ON [PRIMARY]
GO
