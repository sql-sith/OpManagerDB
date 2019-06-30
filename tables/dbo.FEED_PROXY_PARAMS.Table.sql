USE [OpManagerDB]
GO
/****** Object:  Table [dbo].[FEED_PROXY_PARAMS]    Script Date: 6/29/2019 5:47:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FEED_PROXY_PARAMS](
	[PROXY_ID] [bigint] NOT NULL,
	[PROXY_HOST] [varchar](255) NOT NULL,
	[PROXY_PORT] [int] NOT NULL,
	[PROXY_USER] [varchar](255) NOT NULL,
	[PROXY_PASS] [varchar](255) NOT NULL
) ON [PRIMARY]
GO
