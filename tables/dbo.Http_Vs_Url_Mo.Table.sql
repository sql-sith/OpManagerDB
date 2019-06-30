USE [OpManagerDB]
GO
/****** Object:  Table [dbo].[Http_Vs_Url_Mo]    Script Date: 6/29/2019 5:48:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Http_Vs_Url_Mo](
	[HUM_ID] [bigint] IDENTITY(1,1) NOT NULL,
	[HOUR] [datetime] NOT NULL,
	[RID] [bigint] NOT NULL,
	[SRC_ID] [bigint] NOT NULL,
	[SRC] [nvarchar](96) NOT NULL,
	[USER_ID] [bigint] NULL,
	[USER] [nvarchar](96) NULL,
	[DEST_ID] [bigint] NULL,
	[DEST] [nvarchar](96) NULL,
	[HTTP_ID] [bigint] NULL,
	[URL] [nvarchar](2500) NULL,
	[METHOD] [nvarchar](10) NULL,
	[REQUEST_COUNT] [bigint] NULL,
	[DURATION] [bigint] NULL,
	[BYTES_INBOUND] [bigint] NULL,
	[BYTES_OUTBOUND] [bigint] NULL,
	[TOTAL_BYTES] [bigint] NULL,
	[BWUSAGETYPE] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[HUM_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Index [Http_Vs_Url_Mo_IDX1]    Script Date: 6/29/2019 5:53:30 PM ******/
CREATE NONCLUSTERED INDEX [Http_Vs_Url_Mo_IDX1] ON [dbo].[Http_Vs_Url_Mo]
(
	[HOUR] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [Http_Vs_Url_Mo_IDX2]    Script Date: 6/29/2019 5:53:30 PM ******/
CREATE NONCLUSTERED INDEX [Http_Vs_Url_Mo_IDX2] ON [dbo].[Http_Vs_Url_Mo]
(
	[SRC_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [Http_Vs_Url_Mo_IDX3]    Script Date: 6/29/2019 5:53:30 PM ******/
CREATE NONCLUSTERED INDEX [Http_Vs_Url_Mo_IDX3] ON [dbo].[Http_Vs_Url_Mo]
(
	[DEST_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [Http_Vs_Url_Mo_IDX4]    Script Date: 6/29/2019 5:53:30 PM ******/
CREATE NONCLUSTERED INDEX [Http_Vs_Url_Mo_IDX4] ON [dbo].[Http_Vs_Url_Mo]
(
	[RID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [Http_Vs_Url_Mo_IDX5]    Script Date: 6/29/2019 5:53:30 PM ******/
CREATE NONCLUSTERED INDEX [Http_Vs_Url_Mo_IDX5] ON [dbo].[Http_Vs_Url_Mo]
(
	[USER_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [Http_Vs_Url_Mo_IDX6]    Script Date: 6/29/2019 5:53:30 PM ******/
CREATE NONCLUSTERED INDEX [Http_Vs_Url_Mo_IDX6] ON [dbo].[Http_Vs_Url_Mo]
(
	[HTTP_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Http_Vs_Url_Mo] ADD  DEFAULT ('1970-01-01 00:00:00') FOR [HOUR]
GO
ALTER TABLE [dbo].[Http_Vs_Url_Mo] ADD  DEFAULT ('0') FOR [RID]
GO
ALTER TABLE [dbo].[Http_Vs_Url_Mo] ADD  DEFAULT (NULL) FOR [USER_ID]
GO
ALTER TABLE [dbo].[Http_Vs_Url_Mo] ADD  DEFAULT (NULL) FOR [USER]
GO
ALTER TABLE [dbo].[Http_Vs_Url_Mo] ADD  DEFAULT (NULL) FOR [DEST_ID]
GO
ALTER TABLE [dbo].[Http_Vs_Url_Mo] ADD  DEFAULT (NULL) FOR [DEST]
GO
ALTER TABLE [dbo].[Http_Vs_Url_Mo] ADD  DEFAULT (NULL) FOR [HTTP_ID]
GO
ALTER TABLE [dbo].[Http_Vs_Url_Mo] ADD  DEFAULT (NULL) FOR [URL]
GO
ALTER TABLE [dbo].[Http_Vs_Url_Mo] ADD  DEFAULT (NULL) FOR [METHOD]
GO
ALTER TABLE [dbo].[Http_Vs_Url_Mo] ADD  DEFAULT ('0') FOR [REQUEST_COUNT]
GO
ALTER TABLE [dbo].[Http_Vs_Url_Mo] ADD  DEFAULT ('0') FOR [DURATION]
GO
ALTER TABLE [dbo].[Http_Vs_Url_Mo] ADD  DEFAULT ('0') FOR [BYTES_INBOUND]
GO
ALTER TABLE [dbo].[Http_Vs_Url_Mo] ADD  DEFAULT ('0') FOR [BYTES_OUTBOUND]
GO
ALTER TABLE [dbo].[Http_Vs_Url_Mo] ADD  DEFAULT ('0') FOR [TOTAL_BYTES]
GO
ALTER TABLE [dbo].[Http_Vs_Url_Mo] ADD  DEFAULT ('1') FOR [BWUSAGETYPE]
GO
