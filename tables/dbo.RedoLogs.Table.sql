USE [OpManagerDB]
GO
/****** Object:  Table [dbo].[RedoLogs]    Script Date: 6/29/2019 5:50:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RedoLogs](
	[RESOURCENAME] [varchar](100) NOT NULL,
	[COMPONENTNAME] [varchar](50) NOT NULL,
	[GROUPNAME] [varchar](25) NULL,
	[THREAD] [varchar](20) NULL,
	[SEQUENCE] [int] NULL,
	[BYTES] [int] NULL,
	[MEMBERS] [int] NULL,
	[ARCHIVE] [varchar](10) NULL,
	[STATUS] [varchar](20) NULL,
	[FIRSTTIME] [varchar](50) NULL,
	[MEMBER] [varchar](100) NULL,
	[MSTATUS] [varchar](50) NULL,
	[COLLECTIONTIME] [bigint] NULL
) ON [PRIMARY]
GO
