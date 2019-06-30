USE [OpManagerDB]
GO
/****** Object:  Table [dbo].[APPFLOW_MetaTable]    Script Date: 6/29/2019 5:46:02 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[APPFLOW_MetaTable](
	[START_INDEX] [bigint] NOT NULL,
	[END_INDEX] [bigint] NOT NULL,
	[LOOKUP_TABLENAME] [varchar](200) NOT NULL,
	[DEVICE_ID] [bigint] NOT NULL,
 CONSTRAINT [APPFLOW_MetaTable_PK] PRIMARY KEY CLUSTERED 
(
	[LOOKUP_TABLENAME] ASC,
	[START_INDEX] ASC,
	[END_INDEX] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY],
 CONSTRAINT [APPFLOW_MetaTable_UK0] UNIQUE NONCLUSTERED 
(
	[LOOKUP_TABLENAME] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Index [APPFLOW_MetaTable_IDX0]    Script Date: 6/29/2019 5:53:29 PM ******/
CREATE NONCLUSTERED INDEX [APPFLOW_MetaTable_IDX0] ON [dbo].[APPFLOW_MetaTable]
(
	[START_INDEX] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [APPFLOW_MetaTable_IDX1]    Script Date: 6/29/2019 5:53:29 PM ******/
CREATE NONCLUSTERED INDEX [APPFLOW_MetaTable_IDX1] ON [dbo].[APPFLOW_MetaTable]
(
	[END_INDEX] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [APPFLOW_MetaTable_IDX2]    Script Date: 6/29/2019 5:53:29 PM ******/
CREATE NONCLUSTERED INDEX [APPFLOW_MetaTable_IDX2] ON [dbo].[APPFLOW_MetaTable]
(
	[DEVICE_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[APPFLOW_MetaTable] ADD  DEFAULT ('-1') FOR [DEVICE_ID]
GO
