USE [OpManagerDB]
GO
/****** Object:  Table [dbo].[OPQuickLink]    Script Date: 6/29/2019 5:50:02 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OPQuickLink](
	[ARTICLE_ID] [bigint] NOT NULL,
	[PAGE_ID] [bigint] NOT NULL,
	[ARTICLE_TYPE] [varchar](50) NOT NULL,
	[DISPLAY_NAME] [varchar](1000) NOT NULL,
	[ARTICLE_URL] [varchar](1000) NOT NULL,
	[DISPLAY_ORDER] [int] NOT NULL,
 CONSTRAINT [OPQuickLink_PK] PRIMARY KEY CLUSTERED 
(
	[ARTICLE_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Index [IDX_428190451]    Script Date: 6/29/2019 5:53:30 PM ******/
CREATE NONCLUSTERED INDEX [IDX_428190451] ON [dbo].[OPQuickLink]
(
	[PAGE_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[OPQuickLink]  WITH CHECK ADD  CONSTRAINT [OPQuickLink_FK1] FOREIGN KEY([PAGE_ID])
REFERENCES [dbo].[OPUIPage] ([PAGE_ID])
GO
ALTER TABLE [dbo].[OPQuickLink] CHECK CONSTRAINT [OPQuickLink_FK1]
GO
