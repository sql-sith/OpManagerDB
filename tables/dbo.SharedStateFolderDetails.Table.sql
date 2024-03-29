USE [OpManagerDB]
GO
/****** Object:  Table [dbo].[SharedStateFolderDetails]    Script Date: 6/29/2019 5:51:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SharedStateFolderDetails](
	[BATCHID] [bigint] NOT NULL,
	[SHAREDTYPE] [int] NULL,
	[SHAREDURL] [varchar](250) NULL,
	[DOMAINNAME] [varchar](100) NULL,
	[USERNAME] [varchar](100) NULL,
	[PASSWORD] [varchar](100) NULL,
PRIMARY KEY CLUSTERED 
(
	[BATCHID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Index [SharedStateFolderDetails0_ndx]    Script Date: 6/29/2019 5:53:30 PM ******/
CREATE NONCLUSTERED INDEX [SharedStateFolderDetails0_ndx] ON [dbo].[SharedStateFolderDetails]
(
	[BATCHID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
