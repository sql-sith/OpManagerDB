USE [OpManagerDB]
GO
/****** Object:  Table [dbo].[User_Vs_Protocol_Year]    Script Date: 6/29/2019 5:52:38 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[User_Vs_Protocol_Year](
	[UPY_ID] [bigint] IDENTITY(1,1) NOT NULL,
	[HOUR] [datetime] NOT NULL,
	[RID] [bigint] NOT NULL,
	[SRC_ID] [bigint] NOT NULL,
	[SRC] [nvarchar](96) NOT NULL,
	[USER_ID] [bigint] NULL,
	[USER] [nvarchar](96) NULL,
	[PROTOCOL_ID] [bigint] NULL,
	[PROTOCOL] [nvarchar](30) NULL,
	[DEST_ID] [bigint] NULL,
	[DEST] [nvarchar](96) NULL,
	[REQUEST_COUNT] [int] NULL,
	[DURATION] [int] NULL,
	[BYTES_INBOUND] [bigint] NULL,
	[BYTES_OUTBOUND] [bigint] NULL,
	[TOTAL_BYTES] [bigint] NULL,
	[BWUSAGETYPE] [int] NULL,
	[APP_NAME] [nvarchar](96) NULL,
	[APP_CAT] [nvarchar](96) NULL,
	[SRC_CNTRYID] [int] NULL,
	[DST_CNTRYID] [int] NULL,
	[CLOUD_NAME] [nvarchar](96) NULL,
	[CLOUD_CAT] [nvarchar](96) NULL,
PRIMARY KEY CLUSTERED 
(
	[UPY_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Index [User_Vs_Protocol_Year_IDX1]    Script Date: 6/29/2019 5:53:30 PM ******/
CREATE NONCLUSTERED INDEX [User_Vs_Protocol_Year_IDX1] ON [dbo].[User_Vs_Protocol_Year]
(
	[HOUR] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [User_Vs_Protocol_Year_IDX2]    Script Date: 6/29/2019 5:53:30 PM ******/
CREATE NONCLUSTERED INDEX [User_Vs_Protocol_Year_IDX2] ON [dbo].[User_Vs_Protocol_Year]
(
	[SRC_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [User_Vs_Protocol_Year_IDX3]    Script Date: 6/29/2019 5:53:30 PM ******/
CREATE NONCLUSTERED INDEX [User_Vs_Protocol_Year_IDX3] ON [dbo].[User_Vs_Protocol_Year]
(
	[DEST_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [User_Vs_Protocol_Year_IDX4]    Script Date: 6/29/2019 5:53:30 PM ******/
CREATE NONCLUSTERED INDEX [User_Vs_Protocol_Year_IDX4] ON [dbo].[User_Vs_Protocol_Year]
(
	[RID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [User_Vs_Protocol_Year_IDX5]    Script Date: 6/29/2019 5:53:30 PM ******/
CREATE NONCLUSTERED INDEX [User_Vs_Protocol_Year_IDX5] ON [dbo].[User_Vs_Protocol_Year]
(
	[PROTOCOL_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [User_Vs_Protocol_Year_IDX6]    Script Date: 6/29/2019 5:53:30 PM ******/
CREATE NONCLUSTERED INDEX [User_Vs_Protocol_Year_IDX6] ON [dbo].[User_Vs_Protocol_Year]
(
	[USER_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [User_Vs_Protocol_Year_IDX7]    Script Date: 6/29/2019 5:53:30 PM ******/
CREATE NONCLUSTERED INDEX [User_Vs_Protocol_Year_IDX7] ON [dbo].[User_Vs_Protocol_Year]
(
	[SRC_CNTRYID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [User_Vs_Protocol_Year_IDX8]    Script Date: 6/29/2019 5:53:30 PM ******/
CREATE NONCLUSTERED INDEX [User_Vs_Protocol_Year_IDX8] ON [dbo].[User_Vs_Protocol_Year]
(
	[DST_CNTRYID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[User_Vs_Protocol_Year] ADD  DEFAULT ('1970-01-01 00:00:00') FOR [HOUR]
GO
ALTER TABLE [dbo].[User_Vs_Protocol_Year] ADD  DEFAULT ('0') FOR [SRC_ID]
GO
ALTER TABLE [dbo].[User_Vs_Protocol_Year] ADD  DEFAULT ('') FOR [SRC]
GO
ALTER TABLE [dbo].[User_Vs_Protocol_Year] ADD  DEFAULT (NULL) FOR [USER_ID]
GO
ALTER TABLE [dbo].[User_Vs_Protocol_Year] ADD  DEFAULT (NULL) FOR [USER]
GO
ALTER TABLE [dbo].[User_Vs_Protocol_Year] ADD  DEFAULT (NULL) FOR [PROTOCOL_ID]
GO
ALTER TABLE [dbo].[User_Vs_Protocol_Year] ADD  DEFAULT (NULL) FOR [PROTOCOL]
GO
ALTER TABLE [dbo].[User_Vs_Protocol_Year] ADD  DEFAULT (NULL) FOR [DEST_ID]
GO
ALTER TABLE [dbo].[User_Vs_Protocol_Year] ADD  DEFAULT (NULL) FOR [DEST]
GO
ALTER TABLE [dbo].[User_Vs_Protocol_Year] ADD  DEFAULT ('0') FOR [REQUEST_COUNT]
GO
ALTER TABLE [dbo].[User_Vs_Protocol_Year] ADD  DEFAULT (NULL) FOR [DURATION]
GO
ALTER TABLE [dbo].[User_Vs_Protocol_Year] ADD  DEFAULT ('0') FOR [BYTES_INBOUND]
GO
ALTER TABLE [dbo].[User_Vs_Protocol_Year] ADD  DEFAULT ('0') FOR [BYTES_OUTBOUND]
GO
ALTER TABLE [dbo].[User_Vs_Protocol_Year] ADD  DEFAULT ('0') FOR [TOTAL_BYTES]
GO
ALTER TABLE [dbo].[User_Vs_Protocol_Year] ADD  DEFAULT ('1') FOR [BWUSAGETYPE]
GO
ALTER TABLE [dbo].[User_Vs_Protocol_Year] ADD  DEFAULT (NULL) FOR [APP_NAME]
GO
ALTER TABLE [dbo].[User_Vs_Protocol_Year] ADD  DEFAULT (NULL) FOR [APP_CAT]
GO
ALTER TABLE [dbo].[User_Vs_Protocol_Year] ADD  DEFAULT (NULL) FOR [SRC_CNTRYID]
GO
ALTER TABLE [dbo].[User_Vs_Protocol_Year] ADD  DEFAULT (NULL) FOR [DST_CNTRYID]
GO
ALTER TABLE [dbo].[User_Vs_Protocol_Year] ADD  DEFAULT (NULL) FOR [CLOUD_NAME]
GO
ALTER TABLE [dbo].[User_Vs_Protocol_Year] ADD  DEFAULT (NULL) FOR [CLOUD_CAT]
GO
