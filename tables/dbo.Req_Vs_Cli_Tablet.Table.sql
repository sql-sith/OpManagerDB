USE [OpManagerDB]
GO
/****** Object:  Table [dbo].[Req_Vs_Cli_Tablet]    Script Date: 6/29/2019 5:50:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Req_Vs_Cli_Tablet](
	[RVCT_ID] [bigint] IDENTITY(1,1) NOT NULL,
	[HOUR] [datetime] NOT NULL,
	[RID] [bigint] NULL,
	[SRC_ID] [bigint] NOT NULL,
	[SRC] [nvarchar](96) NOT NULL,
	[USER_ID] [bigint] NULL,
	[USER] [nvarchar](96) NULL,
	[DEST_ID] [bigint] NULL,
	[DEST] [nvarchar](100) NULL,
	[EVENT_TYPE] [int] NULL,
	[PROTOCOL_ID] [bigint] NULL,
	[PROTOCOL] [nvarchar](50) NULL,
	[REQUEST] [nvarchar](2500) NULL,
	[REQUEST_COUNT] [int] NULL,
	[ERROR_COUNT] [bigint] NULL,
	[DURATION] [int] NULL,
	[BYTES_INBOUND] [bigint] NULL,
	[BYTES_OUTBOUND] [bigint] NULL,
	[TOTAL_BYTES] [bigint] NULL,
	[BWUSAGETYPE] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[RVCT_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Index [Req_Vs_Cli_Tablet_IDX0]    Script Date: 6/29/2019 5:53:30 PM ******/
CREATE NONCLUSTERED INDEX [Req_Vs_Cli_Tablet_IDX0] ON [dbo].[Req_Vs_Cli_Tablet]
(
	[SRC_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [Req_Vs_Cli_Tablet_IDX1]    Script Date: 6/29/2019 5:53:30 PM ******/
CREATE NONCLUSTERED INDEX [Req_Vs_Cli_Tablet_IDX1] ON [dbo].[Req_Vs_Cli_Tablet]
(
	[DEST_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [Req_Vs_Cli_Tablet_IDX2]    Script Date: 6/29/2019 5:53:30 PM ******/
CREATE NONCLUSTERED INDEX [Req_Vs_Cli_Tablet_IDX2] ON [dbo].[Req_Vs_Cli_Tablet]
(
	[RID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [Req_Vs_Cli_Tablet_IDX3]    Script Date: 6/29/2019 5:53:30 PM ******/
CREATE NONCLUSTERED INDEX [Req_Vs_Cli_Tablet_IDX3] ON [dbo].[Req_Vs_Cli_Tablet]
(
	[USER_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [Req_Vs_Cli_Tablet_IDX4]    Script Date: 6/29/2019 5:53:30 PM ******/
CREATE NONCLUSTERED INDEX [Req_Vs_Cli_Tablet_IDX4] ON [dbo].[Req_Vs_Cli_Tablet]
(
	[PROTOCOL_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Req_Vs_Cli_Tablet] ADD  DEFAULT ('1970-01-01 00:00:00') FOR [HOUR]
GO
ALTER TABLE [dbo].[Req_Vs_Cli_Tablet] ADD  DEFAULT (NULL) FOR [RID]
GO
ALTER TABLE [dbo].[Req_Vs_Cli_Tablet] ADD  DEFAULT ('0') FOR [SRC_ID]
GO
ALTER TABLE [dbo].[Req_Vs_Cli_Tablet] ADD  DEFAULT ('') FOR [SRC]
GO
ALTER TABLE [dbo].[Req_Vs_Cli_Tablet] ADD  DEFAULT (NULL) FOR [USER_ID]
GO
ALTER TABLE [dbo].[Req_Vs_Cli_Tablet] ADD  DEFAULT (NULL) FOR [USER]
GO
ALTER TABLE [dbo].[Req_Vs_Cli_Tablet] ADD  DEFAULT (NULL) FOR [DEST_ID]
GO
ALTER TABLE [dbo].[Req_Vs_Cli_Tablet] ADD  DEFAULT (NULL) FOR [DEST]
GO
ALTER TABLE [dbo].[Req_Vs_Cli_Tablet] ADD  DEFAULT (NULL) FOR [EVENT_TYPE]
GO
ALTER TABLE [dbo].[Req_Vs_Cli_Tablet] ADD  DEFAULT (NULL) FOR [PROTOCOL_ID]
GO
ALTER TABLE [dbo].[Req_Vs_Cli_Tablet] ADD  DEFAULT (NULL) FOR [PROTOCOL]
GO
ALTER TABLE [dbo].[Req_Vs_Cli_Tablet] ADD  DEFAULT (NULL) FOR [REQUEST_COUNT]
GO
ALTER TABLE [dbo].[Req_Vs_Cli_Tablet] ADD  DEFAULT (NULL) FOR [ERROR_COUNT]
GO
ALTER TABLE [dbo].[Req_Vs_Cli_Tablet] ADD  DEFAULT (NULL) FOR [DURATION]
GO
ALTER TABLE [dbo].[Req_Vs_Cli_Tablet] ADD  DEFAULT (NULL) FOR [BYTES_INBOUND]
GO
ALTER TABLE [dbo].[Req_Vs_Cli_Tablet] ADD  DEFAULT (NULL) FOR [BYTES_OUTBOUND]
GO
ALTER TABLE [dbo].[Req_Vs_Cli_Tablet] ADD  DEFAULT (NULL) FOR [TOTAL_BYTES]
GO
ALTER TABLE [dbo].[Req_Vs_Cli_Tablet] ADD  DEFAULT (NULL) FOR [BWUSAGETYPE]
GO
