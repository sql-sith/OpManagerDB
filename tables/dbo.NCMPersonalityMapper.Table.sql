USE [OpManagerDB]
GO
/****** Object:  Table [dbo].[NCMPersonalityMapper]    Script Date: 6/29/2019 5:49:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NCMPersonalityMapper](
	[PERSONALITYID] [bigint] NOT NULL,
	[SELECTQUERYID] [bigint] NOT NULL,
 CONSTRAINT [NCMPersonalityMapper_PK] PRIMARY KEY CLUSTERED 
(
	[PERSONALITYID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Index [IDX__1104609339]    Script Date: 6/29/2019 5:53:30 PM ******/
CREATE NONCLUSTERED INDEX [IDX__1104609339] ON [dbo].[NCMPersonalityMapper]
(
	[SELECTQUERYID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IDX__1104609340]    Script Date: 6/29/2019 5:53:30 PM ******/
CREATE NONCLUSTERED INDEX [IDX__1104609340] ON [dbo].[NCMPersonalityMapper]
(
	[PERSONALITYID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[NCMPersonalityMapper]  WITH CHECK ADD  CONSTRAINT [NCMPersonalityMapper_FK1] FOREIGN KEY([PERSONALITYID])
REFERENCES [dbo].[NCMPersonality] ([PERSONALITYID])
GO
ALTER TABLE [dbo].[NCMPersonalityMapper] CHECK CONSTRAINT [NCMPersonalityMapper_FK1]
GO
ALTER TABLE [dbo].[NCMPersonalityMapper]  WITH CHECK ADD  CONSTRAINT [NCMPersonalityMapper_FK2] FOREIGN KEY([SELECTQUERYID])
REFERENCES [dbo].[SelectQuery] ([QUERYID])
GO
ALTER TABLE [dbo].[NCMPersonalityMapper] CHECK CONSTRAINT [NCMPersonalityMapper_FK2]
GO
