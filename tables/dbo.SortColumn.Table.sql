USE [OpManagerDB]
GO
/****** Object:  Table [dbo].[SortColumn]    Script Date: 6/29/2019 5:51:39 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SortColumn](
	[QUERYID] [bigint] NOT NULL,
	[TABLEALIAS] [varchar](50) NOT NULL,
	[SORTINDEX] [int] NOT NULL,
	[COLUMNNAME] [varchar](50) NULL,
	[COLUMNALIAS] [varchar](50) NULL,
	[ASCENDING_ORDER] [bit] NULL,
 CONSTRAINT [SortCol_PK] PRIMARY KEY CLUSTERED 
(
	[QUERYID] ASC,
	[TABLEALIAS] ASC,
	[SORTINDEX] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IDX_817367874]    Script Date: 6/29/2019 5:53:30 PM ******/
CREATE NONCLUSTERED INDEX [IDX_817367874] ON [dbo].[SortColumn]
(
	[QUERYID] ASC,
	[TABLEALIAS] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[SortColumn]  WITH CHECK ADD  CONSTRAINT [SortCol_FK] FOREIGN KEY([QUERYID], [TABLEALIAS])
REFERENCES [dbo].[SelectTable] ([QUERYID], [TABLEALIAS])
GO
ALTER TABLE [dbo].[SortColumn] CHECK CONSTRAINT [SortCol_FK]
GO
