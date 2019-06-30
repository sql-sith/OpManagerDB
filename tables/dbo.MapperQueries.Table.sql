USE [OpManagerDB]
GO
/****** Object:  Table [dbo].[MapperQueries]    Script Date: 6/29/2019 5:48:57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MapperQueries](
	[NAME] [varchar](100) NOT NULL,
	[QUERYID] [bigint] NOT NULL,
 CONSTRAINT [MapperQueries_PK] PRIMARY KEY CLUSTERED 
(
	[NAME] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Index [IDX_1269586579]    Script Date: 6/29/2019 5:53:30 PM ******/
CREATE NONCLUSTERED INDEX [IDX_1269586579] ON [dbo].[MapperQueries]
(
	[QUERYID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[MapperQueries]  WITH CHECK ADD  CONSTRAINT [MapperQueries_FK2] FOREIGN KEY([QUERYID])
REFERENCES [dbo].[SelectQuery] ([QUERYID])
GO
ALTER TABLE [dbo].[MapperQueries] CHECK CONSTRAINT [MapperQueries_FK2]
GO
