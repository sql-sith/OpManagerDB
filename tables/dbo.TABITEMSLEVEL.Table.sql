USE [OpManagerDB]
GO
/****** Object:  Table [dbo].[TABITEMSLEVEL]    Script Date: 6/29/2019 5:52:10 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TABITEMSLEVEL](
	[ITEMID] [bigint] NOT NULL,
	[PARENTID] [bigint] NOT NULL,
	[POSITION] [int] NOT NULL,
	[LEVEL] [int] NOT NULL,
	[TABDEFINITIONID] [bigint] NOT NULL,
 CONSTRAINT [TABITEMSLEVEL_PK1] PRIMARY KEY CLUSTERED 
(
	[ITEMID] ASC,
	[PARENTID] ASC,
	[TABDEFINITIONID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Index [IDX__427636793]    Script Date: 6/29/2019 5:53:30 PM ******/
CREATE NONCLUSTERED INDEX [IDX__427636793] ON [dbo].[TABITEMSLEVEL]
(
	[PARENTID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IDX__427636794]    Script Date: 6/29/2019 5:53:30 PM ******/
CREATE NONCLUSTERED INDEX [IDX__427636794] ON [dbo].[TABITEMSLEVEL]
(
	[ITEMID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[TABITEMSLEVEL] ADD  DEFAULT ('1') FOR [TABDEFINITIONID]
GO
ALTER TABLE [dbo].[TABITEMSLEVEL]  WITH CHECK ADD  CONSTRAINT [TABITEMSLEVEL_FK1] FOREIGN KEY([ITEMID])
REFERENCES [dbo].[TabItems] ([ID])
GO
ALTER TABLE [dbo].[TABITEMSLEVEL] CHECK CONSTRAINT [TABITEMSLEVEL_FK1]
GO
ALTER TABLE [dbo].[TABITEMSLEVEL]  WITH CHECK ADD  CONSTRAINT [TABITEMSLEVEL_FK2] FOREIGN KEY([PARENTID])
REFERENCES [dbo].[TabItems] ([ID])
GO
ALTER TABLE [dbo].[TABITEMSLEVEL] CHECK CONSTRAINT [TABITEMSLEVEL_FK2]
GO
