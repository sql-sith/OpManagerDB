USE [OpManagerDB]
GO
/****** Object:  Table [dbo].[Cache_Vs_Cli_Tablet]    Script Date: 6/29/2019 5:46:26 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Cache_Vs_Cli_Tablet](
	[CACLI_ID] [bigint] IDENTITY(1,1) NOT NULL,
	[HOUR] [datetime] NOT NULL,
	[RID] [bigint] NOT NULL,
	[SRC_ID] [bigint] NULL,
	[SRC] [nvarchar](96) NULL,
	[USER_ID] [bigint] NULL,
	[USER] [nvarchar](96) NULL,
	[CACHE_ID] [bigint] NULL,
	[PEER_ID] [bigint] NULL,
	[HTTP_ID] [bigint] NULL,
	[OPERATION] [nvarchar](19) NULL,
	[DURATION] [bigint] NULL,
	[DEST_ID] [bigint] NULL,
	[DEST] [nvarchar](96) NULL,
	[URL] [nvarchar](2500) NULL,
	[REQUEST_COUNT] [bigint] NULL,
	[BYTES] [bigint] NULL,
	[BWUSAGETYPE] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[CACLI_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Index [Cache_Vs_Cli_Tablet_IDX0]    Script Date: 6/29/2019 5:53:29 PM ******/
CREATE NONCLUSTERED INDEX [Cache_Vs_Cli_Tablet_IDX0] ON [dbo].[Cache_Vs_Cli_Tablet]
(
	[RID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [Cache_Vs_Cli_Tablet_IDX1]    Script Date: 6/29/2019 5:53:29 PM ******/
CREATE NONCLUSTERED INDEX [Cache_Vs_Cli_Tablet_IDX1] ON [dbo].[Cache_Vs_Cli_Tablet]
(
	[SRC_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [Cache_Vs_Cli_Tablet_IDX2]    Script Date: 6/29/2019 5:53:29 PM ******/
CREATE NONCLUSTERED INDEX [Cache_Vs_Cli_Tablet_IDX2] ON [dbo].[Cache_Vs_Cli_Tablet]
(
	[CACHE_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [Cache_Vs_Cli_Tablet_IDX3]    Script Date: 6/29/2019 5:53:29 PM ******/
CREATE NONCLUSTERED INDEX [Cache_Vs_Cli_Tablet_IDX3] ON [dbo].[Cache_Vs_Cli_Tablet]
(
	[PEER_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [Cache_Vs_Cli_Tablet_IDX4]    Script Date: 6/29/2019 5:53:29 PM ******/
CREATE NONCLUSTERED INDEX [Cache_Vs_Cli_Tablet_IDX4] ON [dbo].[Cache_Vs_Cli_Tablet]
(
	[HTTP_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [Cache_Vs_Cli_Tablet_IDX5]    Script Date: 6/29/2019 5:53:29 PM ******/
CREATE NONCLUSTERED INDEX [Cache_Vs_Cli_Tablet_IDX5] ON [dbo].[Cache_Vs_Cli_Tablet]
(
	[DEST_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Cache_Vs_Cli_Tablet] ADD  DEFAULT ('1970-01-01 00:00:00') FOR [HOUR]
GO
ALTER TABLE [dbo].[Cache_Vs_Cli_Tablet] ADD  DEFAULT ('0') FOR [RID]
GO
ALTER TABLE [dbo].[Cache_Vs_Cli_Tablet] ADD  DEFAULT (NULL) FOR [SRC_ID]
GO
ALTER TABLE [dbo].[Cache_Vs_Cli_Tablet] ADD  DEFAULT (NULL) FOR [SRC]
GO
ALTER TABLE [dbo].[Cache_Vs_Cli_Tablet] ADD  DEFAULT (NULL) FOR [USER_ID]
GO
ALTER TABLE [dbo].[Cache_Vs_Cli_Tablet] ADD  DEFAULT (NULL) FOR [USER]
GO
ALTER TABLE [dbo].[Cache_Vs_Cli_Tablet] ADD  DEFAULT (NULL) FOR [CACHE_ID]
GO
ALTER TABLE [dbo].[Cache_Vs_Cli_Tablet] ADD  DEFAULT (NULL) FOR [PEER_ID]
GO
ALTER TABLE [dbo].[Cache_Vs_Cli_Tablet] ADD  DEFAULT (NULL) FOR [HTTP_ID]
GO
ALTER TABLE [dbo].[Cache_Vs_Cli_Tablet] ADD  DEFAULT (NULL) FOR [OPERATION]
GO
ALTER TABLE [dbo].[Cache_Vs_Cli_Tablet] ADD  DEFAULT (NULL) FOR [DURATION]
GO
ALTER TABLE [dbo].[Cache_Vs_Cli_Tablet] ADD  DEFAULT (NULL) FOR [DEST_ID]
GO
ALTER TABLE [dbo].[Cache_Vs_Cli_Tablet] ADD  DEFAULT (NULL) FOR [DEST]
GO
ALTER TABLE [dbo].[Cache_Vs_Cli_Tablet] ADD  DEFAULT ('0') FOR [REQUEST_COUNT]
GO
ALTER TABLE [dbo].[Cache_Vs_Cli_Tablet] ADD  DEFAULT ('0') FOR [BYTES]
GO
ALTER TABLE [dbo].[Cache_Vs_Cli_Tablet] ADD  DEFAULT ('1') FOR [BWUSAGETYPE]
GO
