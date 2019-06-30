USE [OpManagerDB]
GO
/****** Object:  Table [dbo].[WLCTopStatsMetaTable]    Script Date: 6/29/2019 5:53:23 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[WLCTopStatsMetaTable](
	[TABLE_NAME] [varchar](32) NOT NULL,
	[START_INDEX] [bigint] NOT NULL,
	[END_INDEX] [bigint] NOT NULL,
	[LOOKUP_TABLENAME] [varchar](200) NOT NULL,
	[BUILD_NUMBER] [int] NOT NULL,
	[DATASPACE] [varchar](32) NOT NULL,
 CONSTRAINT [wlcTopStatsMetaTable_PK] PRIMARY KEY CLUSTERED 
(
	[TABLE_NAME] ASC,
	[START_INDEX] ASC,
	[END_INDEX] ASC,
	[DATASPACE] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [wlcTopStatsMetaTable_IDX0]    Script Date: 6/29/2019 5:53:30 PM ******/
CREATE NONCLUSTERED INDEX [wlcTopStatsMetaTable_IDX0] ON [dbo].[WLCTopStatsMetaTable]
(
	[TABLE_NAME] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [wlcTopStatsMetaTable_IDX1]    Script Date: 6/29/2019 5:53:30 PM ******/
CREATE NONCLUSTERED INDEX [wlcTopStatsMetaTable_IDX1] ON [dbo].[WLCTopStatsMetaTable]
(
	[START_INDEX] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [wlcTopStatsMetaTable_IDX2]    Script Date: 6/29/2019 5:53:30 PM ******/
CREATE NONCLUSTERED INDEX [wlcTopStatsMetaTable_IDX2] ON [dbo].[WLCTopStatsMetaTable]
(
	[END_INDEX] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [wlcTopStatsMetaTable_IDX3]    Script Date: 6/29/2019 5:53:30 PM ******/
CREATE NONCLUSTERED INDEX [wlcTopStatsMetaTable_IDX3] ON [dbo].[WLCTopStatsMetaTable]
(
	[DATASPACE] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[WLCTopStatsMetaTable] ADD  DEFAULT ('10000') FOR [BUILD_NUMBER]
GO
