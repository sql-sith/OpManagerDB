USE [OpManagerDB]
GO
/****** Object:  Table [dbo].[InstanceStatus]    Script Date: 6/29/2019 5:48:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[InstanceStatus](
	[RESOURCENAME] [varchar](100) NOT NULL,
	[COMPONENTNAME] [varchar](50) NOT NULL,
	[DBSIZE] [bigint] NULL,
	[AVGEXECS] [int] NULL,
	[AVGUSERS] [int] NULL,
	[IREADS] [int] NULL,
	[WRITES] [int] NULL,
	[BLOCKSIZE] [int] NULL,
	[COLLECTIONTIME] [bigint] NULL
) ON [PRIMARY]
GO
