USE [OpManagerDB]
GO
/****** Object:  Table [dbo].[FEED_URL]    Script Date: 6/29/2019 5:47:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FEED_URL](
	[FEED_ID] [bigint] NOT NULL,
	[LOGIN_ID] [bigint] NULL,
	[FEED_NAME] [varchar](255) NOT NULL,
	[FEED_URL] [varchar](255) NULL
) ON [PRIMARY]
GO
