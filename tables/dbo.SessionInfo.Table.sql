USE [OpManagerDB]
GO
/****** Object:  Table [dbo].[SessionInfo]    Script Date: 6/29/2019 5:51:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SessionInfo](
	[RESOURCENAME] [varchar](100) NOT NULL,
	[COMPONENTNAME] [varchar](50) NOT NULL,
	[SESSIONID] [int] NULL,
	[STATUS] [varchar](25) NULL,
	[MACHINE] [varchar](50) NULL,
	[USERNAME] [varchar](25) NULL,
	[ELAPSEDTIME] [int] NULL,
	[CPUUSED] [int] NULL,
	[MEMORYSORTS] [int] NULL,
	[TABLESCANS] [int] NULL,
	[PHYSICALREADS] [int] NULL,
	[LOGICALREADS] [int] NULL,
	[DISKSORTS] [int] NULL,
	[BLOCKSCHANGED] [int] NULL,
	[CHAINEDROWS] [int] NULL,
	[COMMITS] [int] NULL,
	[CURSORS] [int] NULL,
	[BUFFERCACHEHITRATIO] [varchar](50) NULL,
	[COLLECTIONTIME] [bigint] NULL
) ON [PRIMARY]
GO
