USE [OpManagerDB]
GO
/****** Object:  Table [dbo].[Dest_Vs_Bandwidth_Tablet]    Script Date: 6/29/2019 5:47:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Dest_Vs_Bandwidth_Tablet](
	[DBT_ID] [bigint] IDENTITY(1,1) NOT NULL,
	[HOUR] [datetime] NOT NULL,
	[RID] [bigint] NOT NULL,
	[DEST_ID] [bigint] NOT NULL,
	[DEST] [nvarchar](96) NOT NULL,
	[USER_ID] [bigint] NULL,
	[USER] [nvarchar](96) NULL,
	[REQUEST_COUNT] [int] NULL,
	[DURATION] [int] NULL,
	[BYTES_INBOUND] [bigint] NULL,
	[BYTES_OUTBOUND] [bigint] NULL,
	[TOTAL_BYTES] [bigint] NULL,
	[BWUSAGETYPE] [int] NULL,
	[DST_CNTRYID] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[DBT_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Index [Dest_Vs_Bandwidth_Tablet_IDX0]    Script Date: 6/29/2019 5:53:30 PM ******/
CREATE NONCLUSTERED INDEX [Dest_Vs_Bandwidth_Tablet_IDX0] ON [dbo].[Dest_Vs_Bandwidth_Tablet]
(
	[DEST_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [Dest_Vs_Bandwidth_Tablet_IDX1]    Script Date: 6/29/2019 5:53:30 PM ******/
CREATE NONCLUSTERED INDEX [Dest_Vs_Bandwidth_Tablet_IDX1] ON [dbo].[Dest_Vs_Bandwidth_Tablet]
(
	[RID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [Dest_Vs_Bandwidth_Tablet_IDX2]    Script Date: 6/29/2019 5:53:30 PM ******/
CREATE NONCLUSTERED INDEX [Dest_Vs_Bandwidth_Tablet_IDX2] ON [dbo].[Dest_Vs_Bandwidth_Tablet]
(
	[USER_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [Dest_Vs_Bandwidth_Tablet_IDX3]    Script Date: 6/29/2019 5:53:30 PM ******/
CREATE NONCLUSTERED INDEX [Dest_Vs_Bandwidth_Tablet_IDX3] ON [dbo].[Dest_Vs_Bandwidth_Tablet]
(
	[DST_CNTRYID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Dest_Vs_Bandwidth_Tablet] ADD  DEFAULT ('1970-01-01 00:00:00') FOR [HOUR]
GO
ALTER TABLE [dbo].[Dest_Vs_Bandwidth_Tablet] ADD  DEFAULT ('') FOR [DEST]
GO
ALTER TABLE [dbo].[Dest_Vs_Bandwidth_Tablet] ADD  DEFAULT (NULL) FOR [USER]
GO
ALTER TABLE [dbo].[Dest_Vs_Bandwidth_Tablet] ADD  DEFAULT (NULL) FOR [REQUEST_COUNT]
GO
ALTER TABLE [dbo].[Dest_Vs_Bandwidth_Tablet] ADD  DEFAULT ('0') FOR [DURATION]
GO
ALTER TABLE [dbo].[Dest_Vs_Bandwidth_Tablet] ADD  DEFAULT ('0') FOR [BYTES_INBOUND]
GO
ALTER TABLE [dbo].[Dest_Vs_Bandwidth_Tablet] ADD  DEFAULT ('0') FOR [BYTES_OUTBOUND]
GO
ALTER TABLE [dbo].[Dest_Vs_Bandwidth_Tablet] ADD  DEFAULT ('0') FOR [TOTAL_BYTES]
GO
ALTER TABLE [dbo].[Dest_Vs_Bandwidth_Tablet] ADD  DEFAULT ('1') FOR [BWUSAGETYPE]
GO
ALTER TABLE [dbo].[Dest_Vs_Bandwidth_Tablet] ADD  DEFAULT (NULL) FOR [DST_CNTRYID]
GO
