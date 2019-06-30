USE [OpManagerDB]
GO
/****** Object:  Table [dbo].[PollIDToKeyMap]    Script Date: 6/29/2019 5:50:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PollIDToKeyMap](
	[NAME] [varchar](50) NULL,
	[ID] [bigint] NULL,
	[AGENT] [varchar](50) NULL,
	[OID] [varchar](100) NULL,
	[STATSDATATABLENAME] [varchar](100) NULL,
	[OWNERNAME] [varchar](25) NULL
) ON [PRIMARY]
GO
