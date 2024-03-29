USE [OpManagerDB]
GO
/****** Object:  Table [dbo].[LoginPageNotificationDetails]    Script Date: 6/29/2019 5:48:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LoginPageNotificationDetails](
	[ID] [bigint] NOT NULL,
	[CREATOR_ID] [bigint] NOT NULL,
	[AD_TYPE] [varchar](25) NOT NULL,
	[SHOW_CURRENT_AD] [bit] NOT NULL,
	[LAST_MODIFIED_TIME] [bigint] NOT NULL,
	[AD_HYPERLINK] [varchar](1000) NULL,
	[AD_HYPERTEXT] [varchar](100) NULL,
	[TRANSLATED_HYPERLINK] [varchar](1000) NULL,
	[AD_TEXT] [varchar](1000) NULL,
	[TRANSLATED_TEXT] [varchar](1000) NULL,
	[AD_BANNER_PATH] [varchar](1000) NULL,
	[START_TIME] [bigint] NOT NULL,
	[END_TIME] [bigint] NOT NULL,
	[AD_PROPERTY] [varchar](100) NULL,
	[COUNTRY] [varchar](250) NOT NULL,
 CONSTRAINT [LoginPageNotificationDetails_PK] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY],
 CONSTRAINT [LoginPageNotificationDetails_UK1] UNIQUE NONCLUSTERED 
(
	[CREATOR_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[LoginPageNotificationDetails] ADD  DEFAULT ((1)) FOR [SHOW_CURRENT_AD]
GO
ALTER TABLE [dbo].[LoginPageNotificationDetails] ADD  DEFAULT ('Register now') FOR [AD_HYPERTEXT]
GO
ALTER TABLE [dbo].[LoginPageNotificationDetails] ADD  DEFAULT ('ALL') FOR [COUNTRY]
GO
