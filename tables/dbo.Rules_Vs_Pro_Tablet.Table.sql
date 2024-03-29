USE [OpManagerDB]
GO
/****** Object:  Table [dbo].[Rules_Vs_Pro_Tablet]    Script Date: 6/29/2019 5:51:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Rules_Vs_Pro_Tablet](
	[RVT_ID] [bigint] IDENTITY(1,1) NOT NULL,
	[HOUR] [datetime] NOT NULL,
	[RID] [bigint] NULL,
	[SRC_ID] [bigint] NOT NULL,
	[SRC] [nvarchar](96) NOT NULL,
	[USER_ID] [bigint] NULL,
	[USER] [nvarchar](96) NULL,
	[DEST_ID] [bigint] NULL,
	[DEST] [nvarchar](96) NULL,
	[PROTOCOL_ID] [bigint] NULL,
	[PROTOCOL] [nvarchar](30) NULL,
	[RULE] [nvarchar](90) NULL,
	[STATUS] [nvarchar](15) NULL,
	[REQUEST_COUNT] [int] NULL,
	[TOTAL_BYTES] [bigint] NULL,
	[MSG] [nvarchar](1) NULL,
	[SRC_CNTRYID] [int] NULL,
	[DST_CNTRYID] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[RVT_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Index [Rules_Vs_Pro_Tablet_IDX0]    Script Date: 6/29/2019 5:53:30 PM ******/
CREATE NONCLUSTERED INDEX [Rules_Vs_Pro_Tablet_IDX0] ON [dbo].[Rules_Vs_Pro_Tablet]
(
	[SRC_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [Rules_Vs_Pro_Tablet_IDX1]    Script Date: 6/29/2019 5:53:30 PM ******/
CREATE NONCLUSTERED INDEX [Rules_Vs_Pro_Tablet_IDX1] ON [dbo].[Rules_Vs_Pro_Tablet]
(
	[RID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [Rules_Vs_Pro_Tablet_IDX2]    Script Date: 6/29/2019 5:53:30 PM ******/
CREATE NONCLUSTERED INDEX [Rules_Vs_Pro_Tablet_IDX2] ON [dbo].[Rules_Vs_Pro_Tablet]
(
	[USER_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [Rules_Vs_Pro_Tablet_IDX3]    Script Date: 6/29/2019 5:53:30 PM ******/
CREATE NONCLUSTERED INDEX [Rules_Vs_Pro_Tablet_IDX3] ON [dbo].[Rules_Vs_Pro_Tablet]
(
	[DEST_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [Rules_Vs_Pro_Tablet_IDX4]    Script Date: 6/29/2019 5:53:30 PM ******/
CREATE NONCLUSTERED INDEX [Rules_Vs_Pro_Tablet_IDX4] ON [dbo].[Rules_Vs_Pro_Tablet]
(
	[PROTOCOL_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [Rules_Vs_Pro_Tablet_IDX5]    Script Date: 6/29/2019 5:53:30 PM ******/
CREATE NONCLUSTERED INDEX [Rules_Vs_Pro_Tablet_IDX5] ON [dbo].[Rules_Vs_Pro_Tablet]
(
	[SRC_CNTRYID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [Rules_Vs_Pro_Tablet_IDX6]    Script Date: 6/29/2019 5:53:30 PM ******/
CREATE NONCLUSTERED INDEX [Rules_Vs_Pro_Tablet_IDX6] ON [dbo].[Rules_Vs_Pro_Tablet]
(
	[DST_CNTRYID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Rules_Vs_Pro_Tablet] ADD  DEFAULT ('1970-01-01 00:00:00') FOR [HOUR]
GO
ALTER TABLE [dbo].[Rules_Vs_Pro_Tablet] ADD  DEFAULT (NULL) FOR [RID]
GO
ALTER TABLE [dbo].[Rules_Vs_Pro_Tablet] ADD  DEFAULT ('0') FOR [SRC_ID]
GO
ALTER TABLE [dbo].[Rules_Vs_Pro_Tablet] ADD  DEFAULT ('') FOR [SRC]
GO
ALTER TABLE [dbo].[Rules_Vs_Pro_Tablet] ADD  DEFAULT (NULL) FOR [USER_ID]
GO
ALTER TABLE [dbo].[Rules_Vs_Pro_Tablet] ADD  DEFAULT (NULL) FOR [USER]
GO
ALTER TABLE [dbo].[Rules_Vs_Pro_Tablet] ADD  DEFAULT (NULL) FOR [DEST_ID]
GO
ALTER TABLE [dbo].[Rules_Vs_Pro_Tablet] ADD  DEFAULT (NULL) FOR [DEST]
GO
ALTER TABLE [dbo].[Rules_Vs_Pro_Tablet] ADD  DEFAULT (NULL) FOR [PROTOCOL_ID]
GO
ALTER TABLE [dbo].[Rules_Vs_Pro_Tablet] ADD  DEFAULT (NULL) FOR [PROTOCOL]
GO
ALTER TABLE [dbo].[Rules_Vs_Pro_Tablet] ADD  DEFAULT (NULL) FOR [RULE]
GO
ALTER TABLE [dbo].[Rules_Vs_Pro_Tablet] ADD  DEFAULT (NULL) FOR [STATUS]
GO
ALTER TABLE [dbo].[Rules_Vs_Pro_Tablet] ADD  DEFAULT ('0') FOR [REQUEST_COUNT]
GO
ALTER TABLE [dbo].[Rules_Vs_Pro_Tablet] ADD  DEFAULT (NULL) FOR [TOTAL_BYTES]
GO
ALTER TABLE [dbo].[Rules_Vs_Pro_Tablet] ADD  DEFAULT (NULL) FOR [MSG]
GO
ALTER TABLE [dbo].[Rules_Vs_Pro_Tablet] ADD  DEFAULT (NULL) FOR [SRC_CNTRYID]
GO
ALTER TABLE [dbo].[Rules_Vs_Pro_Tablet] ADD  DEFAULT (NULL) FOR [DST_CNTRYID]
GO
