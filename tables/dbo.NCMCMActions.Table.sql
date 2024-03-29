USE [OpManagerDB]
GO
/****** Object:  Table [dbo].[NCMCMActions]    Script Date: 6/29/2019 5:49:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NCMCMActions](
	[RULE_ID] [bigint] NOT NULL,
	[ACTION_ID] [int] NOT NULL,
 CONSTRAINT [NCMCMActions_PK] PRIMARY KEY CLUSTERED 
(
	[RULE_ID] ASC,
	[ACTION_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Index [IDX__1372788535]    Script Date: 6/29/2019 5:53:30 PM ******/
CREATE NONCLUSTERED INDEX [IDX__1372788535] ON [dbo].[NCMCMActions]
(
	[ACTION_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IDX__1372788536]    Script Date: 6/29/2019 5:53:30 PM ******/
CREATE NONCLUSTERED INDEX [IDX__1372788536] ON [dbo].[NCMCMActions]
(
	[RULE_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[NCMCMActions]  WITH CHECK ADD  CONSTRAINT [NCMCMActions_FK1] FOREIGN KEY([RULE_ID])
REFERENCES [dbo].[NCMChangeMgmtRule] ([RULE_ID])
GO
ALTER TABLE [dbo].[NCMCMActions] CHECK CONSTRAINT [NCMCMActions_FK1]
GO
ALTER TABLE [dbo].[NCMCMActions]  WITH CHECK ADD  CONSTRAINT [NCMCMActions_FK2] FOREIGN KEY([ACTION_ID])
REFERENCES [dbo].[NCMCMAvaActions] ([ACTION_ID])
GO
ALTER TABLE [dbo].[NCMCMActions] CHECK CONSTRAINT [NCMCMActions_FK2]
GO
