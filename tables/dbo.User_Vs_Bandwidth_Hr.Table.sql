USE [OpManagerDB]
GO
/****** Object:  Table [dbo].[User_Vs_Bandwidth_Hr]    Script Date: 6/29/2019 5:52:37 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[User_Vs_Bandwidth_Hr](
	[UBT_ID] [bigint] IDENTITY(1,1) NOT NULL,
	[HOUR] [datetime] NOT NULL,
	[RID] [bigint] NOT NULL,
	[SRC_ID] [bigint] NOT NULL,
	[SRC] [nvarchar](96) NOT NULL,
	[USER_ID] [bigint] NULL,
	[USER] [nvarchar](96) NULL,
	[REQUEST_COUNT] [int] NULL,
	[DURATION] [int] NULL,
	[BYTES_INBOUND] [bigint] NULL,
	[BYTES_OUTBOUND] [bigint] NULL,
	[TOTAL_BYTES] [bigint] NULL,
	[BWUSAGETYPE] [int] NULL,
	[SRC_CNTRYID] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[UBT_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Index [User_Vs_Bandwidth_Hr_IDX1]    Script Date: 6/29/2019 5:53:30 PM ******/
CREATE NONCLUSTERED INDEX [User_Vs_Bandwidth_Hr_IDX1] ON [dbo].[User_Vs_Bandwidth_Hr]
(
	[HOUR] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [User_Vs_Bandwidth_Hr_IDX2]    Script Date: 6/29/2019 5:53:30 PM ******/
CREATE NONCLUSTERED INDEX [User_Vs_Bandwidth_Hr_IDX2] ON [dbo].[User_Vs_Bandwidth_Hr]
(
	[SRC_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [User_Vs_Bandwidth_Hr_IDX3]    Script Date: 6/29/2019 5:53:30 PM ******/
CREATE NONCLUSTERED INDEX [User_Vs_Bandwidth_Hr_IDX3] ON [dbo].[User_Vs_Bandwidth_Hr]
(
	[RID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [User_Vs_Bandwidth_Hr_IDX4]    Script Date: 6/29/2019 5:53:30 PM ******/
CREATE NONCLUSTERED INDEX [User_Vs_Bandwidth_Hr_IDX4] ON [dbo].[User_Vs_Bandwidth_Hr]
(
	[USER_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [User_Vs_Bandwidth_Hr_IDX5]    Script Date: 6/29/2019 5:53:30 PM ******/
CREATE NONCLUSTERED INDEX [User_Vs_Bandwidth_Hr_IDX5] ON [dbo].[User_Vs_Bandwidth_Hr]
(
	[SRC_CNTRYID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[User_Vs_Bandwidth_Hr] ADD  DEFAULT ('1970-01-01 00:00:00') FOR [HOUR]
GO
ALTER TABLE [dbo].[User_Vs_Bandwidth_Hr] ADD  DEFAULT ('') FOR [SRC]
GO
ALTER TABLE [dbo].[User_Vs_Bandwidth_Hr] ADD  DEFAULT (NULL) FOR [USER_ID]
GO
ALTER TABLE [dbo].[User_Vs_Bandwidth_Hr] ADD  DEFAULT (NULL) FOR [USER]
GO
ALTER TABLE [dbo].[User_Vs_Bandwidth_Hr] ADD  DEFAULT ('0') FOR [REQUEST_COUNT]
GO
ALTER TABLE [dbo].[User_Vs_Bandwidth_Hr] ADD  DEFAULT ('0') FOR [DURATION]
GO
ALTER TABLE [dbo].[User_Vs_Bandwidth_Hr] ADD  DEFAULT ('0') FOR [BYTES_INBOUND]
GO
ALTER TABLE [dbo].[User_Vs_Bandwidth_Hr] ADD  DEFAULT ('0') FOR [BYTES_OUTBOUND]
GO
ALTER TABLE [dbo].[User_Vs_Bandwidth_Hr] ADD  DEFAULT ('0') FOR [TOTAL_BYTES]
GO
ALTER TABLE [dbo].[User_Vs_Bandwidth_Hr] ADD  DEFAULT ('1') FOR [BWUSAGETYPE]
GO
ALTER TABLE [dbo].[User_Vs_Bandwidth_Hr] ADD  DEFAULT (NULL) FOR [SRC_CNTRYID]
GO
