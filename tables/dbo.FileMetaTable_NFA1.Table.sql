USE [OpManagerDB]
GO
/****** Object:  Table [dbo].[FileMetaTable_NFA1]    Script Date: 6/29/2019 5:47:44 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FileMetaTable_NFA1](
	[ID] [int] NOT NULL,
	[INTERFACE_ID] [int] NOT NULL,
	[START_INDEX] [bigint] NOT NULL,
	[END_INDEX] [bigint] NOT NULL,
	[FILENAME] [varchar](255) NOT NULL,
	[BUILD_NUMBER] [int] NOT NULL,
 CONSTRAINT [FileMetaTable_PK_NFA1] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY],
 CONSTRAINT [FileMetaTable_UK0_NFA1] UNIQUE NONCLUSTERED 
(
	[FILENAME] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Index [FileMetaTable_IDX0_NFA1]    Script Date: 6/29/2019 5:53:30 PM ******/
CREATE NONCLUSTERED INDEX [FileMetaTable_IDX0_NFA1] ON [dbo].[FileMetaTable_NFA1]
(
	[INTERFACE_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [FileMetaTable_IDX1_NFA1]    Script Date: 6/29/2019 5:53:30 PM ******/
CREATE NONCLUSTERED INDEX [FileMetaTable_IDX1_NFA1] ON [dbo].[FileMetaTable_NFA1]
(
	[START_INDEX] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [FileMetaTable_IDX2_NFA1]    Script Date: 6/29/2019 5:53:30 PM ******/
CREATE NONCLUSTERED INDEX [FileMetaTable_IDX2_NFA1] ON [dbo].[FileMetaTable_NFA1]
(
	[END_INDEX] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[FileMetaTable_NFA1] ADD  DEFAULT ('7001') FOR [BUILD_NUMBER]
GO
