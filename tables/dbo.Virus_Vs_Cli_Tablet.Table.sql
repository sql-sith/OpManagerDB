USE [OpManagerDB]
GO
/****** Object:  Table [dbo].[Virus_Vs_Cli_Tablet]    Script Date: 6/29/2019 5:52:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Virus_Vs_Cli_Tablet](
	[VVCT_ID] [bigint] IDENTITY(1,1) NOT NULL,
	[HOUR] [datetime] NOT NULL,
	[RID] [bigint] NOT NULL,
	[SRC_ID] [bigint] NULL,
	[DEST_ID] [bigint] NULL,
	[SRC] [nvarchar](96) NULL,
	[DEST] [nvarchar](96) NULL,
	[PRIORITY_ID] [bigint] NULL,
	[VIRUS] [nvarchar](96) NULL,
	[FILENAME] [nvarchar](96) NULL,
	[EXTENSION] [nvarchar](24) NULL,
	[PROTOCOL] [nvarchar](48) NULL,
	[REQUEST_COUNT] [bigint] NULL,
	[SUBTYPE] [nvarchar](48) NULL,
	[STATUS] [nvarchar](48) NULL,
	[MSG] [nvarchar](1) NULL,
	[SRC_CNTRYID] [int] NULL,
	[DST_CNTRYID] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[VVCT_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Index [HOUR]    Script Date: 6/29/2019 5:53:30 PM ******/
CREATE NONCLUSTERED INDEX [HOUR] ON [dbo].[Virus_Vs_Cli_Tablet]
(
	[HOUR] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [Virus_Vs_Cli_Tablet_IDX0]    Script Date: 6/29/2019 5:53:30 PM ******/
CREATE NONCLUSTERED INDEX [Virus_Vs_Cli_Tablet_IDX0] ON [dbo].[Virus_Vs_Cli_Tablet]
(
	[RID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [Virus_Vs_Cli_Tablet_IDX1]    Script Date: 6/29/2019 5:53:30 PM ******/
CREATE NONCLUSTERED INDEX [Virus_Vs_Cli_Tablet_IDX1] ON [dbo].[Virus_Vs_Cli_Tablet]
(
	[SRC_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [Virus_Vs_Cli_Tablet_IDX2]    Script Date: 6/29/2019 5:53:30 PM ******/
CREATE NONCLUSTERED INDEX [Virus_Vs_Cli_Tablet_IDX2] ON [dbo].[Virus_Vs_Cli_Tablet]
(
	[DEST_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [Virus_Vs_Cli_Tablet_IDX3]    Script Date: 6/29/2019 5:53:30 PM ******/
CREATE NONCLUSTERED INDEX [Virus_Vs_Cli_Tablet_IDX3] ON [dbo].[Virus_Vs_Cli_Tablet]
(
	[PROTOCOL] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [Virus_Vs_Cli_Tablet_IDX4]    Script Date: 6/29/2019 5:53:30 PM ******/
CREATE NONCLUSTERED INDEX [Virus_Vs_Cli_Tablet_IDX4] ON [dbo].[Virus_Vs_Cli_Tablet]
(
	[PRIORITY_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [Virus_Vs_Cli_Tablet_IDX5]    Script Date: 6/29/2019 5:53:30 PM ******/
CREATE NONCLUSTERED INDEX [Virus_Vs_Cli_Tablet_IDX5] ON [dbo].[Virus_Vs_Cli_Tablet]
(
	[SRC_CNTRYID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [Virus_Vs_Cli_Tablet_IDX6]    Script Date: 6/29/2019 5:53:30 PM ******/
CREATE NONCLUSTERED INDEX [Virus_Vs_Cli_Tablet_IDX6] ON [dbo].[Virus_Vs_Cli_Tablet]
(
	[DST_CNTRYID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Virus_Vs_Cli_Tablet] ADD  DEFAULT ('1970-01-01 00:00:00') FOR [HOUR]
GO
ALTER TABLE [dbo].[Virus_Vs_Cli_Tablet] ADD  DEFAULT ('0') FOR [RID]
GO
ALTER TABLE [dbo].[Virus_Vs_Cli_Tablet] ADD  DEFAULT (NULL) FOR [SRC_ID]
GO
ALTER TABLE [dbo].[Virus_Vs_Cli_Tablet] ADD  DEFAULT (NULL) FOR [DEST_ID]
GO
ALTER TABLE [dbo].[Virus_Vs_Cli_Tablet] ADD  DEFAULT (NULL) FOR [SRC]
GO
ALTER TABLE [dbo].[Virus_Vs_Cli_Tablet] ADD  DEFAULT (NULL) FOR [DEST]
GO
ALTER TABLE [dbo].[Virus_Vs_Cli_Tablet] ADD  DEFAULT (NULL) FOR [PRIORITY_ID]
GO
ALTER TABLE [dbo].[Virus_Vs_Cli_Tablet] ADD  DEFAULT (NULL) FOR [VIRUS]
GO
ALTER TABLE [dbo].[Virus_Vs_Cli_Tablet] ADD  DEFAULT (NULL) FOR [FILENAME]
GO
ALTER TABLE [dbo].[Virus_Vs_Cli_Tablet] ADD  DEFAULT (NULL) FOR [EXTENSION]
GO
ALTER TABLE [dbo].[Virus_Vs_Cli_Tablet] ADD  DEFAULT (NULL) FOR [PROTOCOL]
GO
ALTER TABLE [dbo].[Virus_Vs_Cli_Tablet] ADD  DEFAULT ('0') FOR [REQUEST_COUNT]
GO
ALTER TABLE [dbo].[Virus_Vs_Cli_Tablet] ADD  DEFAULT (NULL) FOR [SUBTYPE]
GO
ALTER TABLE [dbo].[Virus_Vs_Cli_Tablet] ADD  DEFAULT (NULL) FOR [STATUS]
GO
ALTER TABLE [dbo].[Virus_Vs_Cli_Tablet] ADD  DEFAULT (NULL) FOR [MSG]
GO
ALTER TABLE [dbo].[Virus_Vs_Cli_Tablet] ADD  DEFAULT (NULL) FOR [SRC_CNTRYID]
GO
ALTER TABLE [dbo].[Virus_Vs_Cli_Tablet] ADD  DEFAULT (NULL) FOR [DST_CNTRYID]
GO
