USE [OpManagerDB]
GO
/****** Object:  Table [dbo].[SgaStatus]    Script Date: 6/29/2019 5:51:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SgaStatus](
	[RESOURCENAME] [varchar](100) NOT NULL,
	[COMPONENTNAME] [varchar](50) NOT NULL,
	[FREEMEMORYSIZE] [int] NULL,
	[BUFFERHITRATIO] [int] NULL,
	[DICTIONARYHITRATIO] [int] NULL,
	[LIBRARYHITRATIO] [int] NULL,
	[COLLECTIONTIME] [bigint] NULL
) ON [PRIMARY]
GO
