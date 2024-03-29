USE [OpManagerDB]
GO
/****** Object:  Table [dbo].[TableSpaceDetails]    Script Date: 6/29/2019 5:52:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TableSpaceDetails](
	[RESOURCENAME] [varchar](100) NOT NULL,
	[COMPONENTNAME] [varchar](50) NOT NULL,
	[TABLESPACENAME] [varchar](50) NULL,
	[ALLOCATEDBYTES] [int] NULL,
	[ALLOCATEDBLOCKS] [int] NULL,
	[DATAFILES] [int] NULL,
	[COLLECTIONTIME] [bigint] NULL
) ON [PRIMARY]
GO
