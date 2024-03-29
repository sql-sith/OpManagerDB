USE [OpManagerDB]
GO
/****** Object:  Table [dbo].[QuickLinks]    Script Date: 6/29/2019 5:50:38 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[QuickLinks](
	[ID] [bigint] NOT NULL,
	[PAGE_ID] [int] NOT NULL,
	[SEQUENCE_NUMBER] [int] NOT NULL,
	[TOPIC] [varchar](500) NOT NULL,
	[URL] [varchar](500) NOT NULL,
	[ARTICLETYPE_ID] [bigint] NOT NULL,
	[MODULE] [varchar](25) NULL,
 CONSTRAINT [QuickLinks_PK] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Index [IDX_1740647225]    Script Date: 6/29/2019 5:53:30 PM ******/
CREATE NONCLUSTERED INDEX [IDX_1740647225] ON [dbo].[QuickLinks]
(
	[ARTICLETYPE_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IDX_1740647226]    Script Date: 6/29/2019 5:53:30 PM ******/
CREATE NONCLUSTERED INDEX [IDX_1740647226] ON [dbo].[QuickLinks]
(
	[PAGE_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[QuickLinks]  WITH CHECK ADD  CONSTRAINT [QuickLinks_FK1] FOREIGN KEY([ARTICLETYPE_ID])
REFERENCES [dbo].[ArticleTypes] ([ID])
GO
ALTER TABLE [dbo].[QuickLinks] CHECK CONSTRAINT [QuickLinks_FK1]
GO
ALTER TABLE [dbo].[QuickLinks]  WITH CHECK ADD  CONSTRAINT [QuickLinks_FK2] FOREIGN KEY([PAGE_ID])
REFERENCES [dbo].[QuickLinkPages] ([PAGE_ID])
GO
ALTER TABLE [dbo].[QuickLinks] CHECK CONSTRAINT [QuickLinks_FK2]
GO
