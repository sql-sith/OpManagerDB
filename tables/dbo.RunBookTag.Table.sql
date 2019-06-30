USE [OpManagerDB]
GO
/****** Object:  Table [dbo].[RunBookTag]    Script Date: 6/29/2019 5:51:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RunBookTag](
	[TAGID] [bigint] NOT NULL,
	[TASKID] [bigint] NOT NULL,
 CONSTRAINT [RunBookTag_PK1] PRIMARY KEY CLUSTERED 
(
	[TAGID] ASC,
	[TASKID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Index [IDX__1279075500]    Script Date: 6/29/2019 5:53:30 PM ******/
CREATE NONCLUSTERED INDEX [IDX__1279075500] ON [dbo].[RunBookTag]
(
	[TASKID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IDX__1279075501]    Script Date: 6/29/2019 5:53:30 PM ******/
CREATE NONCLUSTERED INDEX [IDX__1279075501] ON [dbo].[RunBookTag]
(
	[TAGID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[RunBookTag]  WITH CHECK ADD  CONSTRAINT [RunBookTag_FK1] FOREIGN KEY([TAGID])
REFERENCES [dbo].[OpManagerTag] ([TAGID])
GO
ALTER TABLE [dbo].[RunBookTag] CHECK CONSTRAINT [RunBookTag_FK1]
GO
ALTER TABLE [dbo].[RunBookTag]  WITH CHECK ADD  CONSTRAINT [RunBookTag_FK2] FOREIGN KEY([TASKID])
REFERENCES [dbo].[RunBookTaskDefinition] ([TASKID])
GO
ALTER TABLE [dbo].[RunBookTag] CHECK CONSTRAINT [RunBookTag_FK2]
GO
