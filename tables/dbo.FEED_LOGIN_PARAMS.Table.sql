USE [OpManagerDB]
GO
/****** Object:  Table [dbo].[FEED_LOGIN_PARAMS]    Script Date: 6/29/2019 5:47:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FEED_LOGIN_PARAMS](
	[LOGIN_ID] [bigint] NOT NULL,
	[PRODUCT_NAME] [varchar](100) NULL,
	[PROTOCOL] [varchar](255) NULL,
	[HOST] [varchar](255) NULL,
	[PORT] [int] NULL,
	[USERNAME] [varchar](255) NULL,
	[PASSWORD] [varchar](255) NULL,
	[LBUSER] [varchar](255) NULL,
	[LBPASS] [varchar](255) NULL,
	[ACTION] [varchar](255) NULL,
	[LOGIN_URL] [varchar](255) NULL,
	[CONTEXTPATH] [varchar](255) NOT NULL,
	[PROXY_ID] [bigint] NULL,
PRIMARY KEY CLUSTERED 
(
	[LOGIN_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
