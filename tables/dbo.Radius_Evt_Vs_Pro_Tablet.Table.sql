USE [OpManagerDB]
GO
/****** Object:  Table [dbo].[Radius_Evt_Vs_Pro_Tablet]    Script Date: 6/29/2019 5:50:40 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Radius_Evt_Vs_Pro_Tablet](
	[RASID] [bigint] IDENTITY(1,1) NOT NULL,
	[HOUR] [datetime] NOT NULL,
	[RID] [bigint] NOT NULL,
	[SRC_ID] [bigint] NULL,
	[SRC] [nvarchar](50) NULL,
	[USER_ID] [bigint] NULL,
	[USER] [nvarchar](50) NULL,
	[PROTOCOL_ID] [bigint] NULL,
	[PROTOCOL] [nvarchar](50) NULL,
	[REQUEST_COUNT] [int] NULL,
	[BYTES_INBOUND] [bigint] NULL,
	[BYTES_OUTBOUND] [bigint] NULL,
	[PACKETS_INBOUND] [bigint] NULL,
	[PACKETS_OUTBOUND] [bigint] NULL,
	[SESSION_TIME] [bigint] NULL,
	[OPERATION] [nvarchar](8) NULL,
	[SESSIONID] [bigint] NULL,
PRIMARY KEY CLUSTERED 
(
	[RASID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Index [Radius_Evt_Vs_Pro_Tablet_IDX0]    Script Date: 6/29/2019 5:53:30 PM ******/
CREATE NONCLUSTERED INDEX [Radius_Evt_Vs_Pro_Tablet_IDX0] ON [dbo].[Radius_Evt_Vs_Pro_Tablet]
(
	[RID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [Radius_Evt_Vs_Pro_Tablet_IDX1]    Script Date: 6/29/2019 5:53:30 PM ******/
CREATE NONCLUSTERED INDEX [Radius_Evt_Vs_Pro_Tablet_IDX1] ON [dbo].[Radius_Evt_Vs_Pro_Tablet]
(
	[PROTOCOL_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [Radius_Evt_Vs_Pro_Tablet_IDX2]    Script Date: 6/29/2019 5:53:30 PM ******/
CREATE NONCLUSTERED INDEX [Radius_Evt_Vs_Pro_Tablet_IDX2] ON [dbo].[Radius_Evt_Vs_Pro_Tablet]
(
	[SRC_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [Radius_Evt_Vs_Pro_Tablet_IDX3]    Script Date: 6/29/2019 5:53:30 PM ******/
CREATE NONCLUSTERED INDEX [Radius_Evt_Vs_Pro_Tablet_IDX3] ON [dbo].[Radius_Evt_Vs_Pro_Tablet]
(
	[USER_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Radius_Evt_Vs_Pro_Tablet] ADD  DEFAULT ('1970-01-01 00:00:00') FOR [HOUR]
GO
ALTER TABLE [dbo].[Radius_Evt_Vs_Pro_Tablet] ADD  DEFAULT ('0') FOR [RID]
GO
ALTER TABLE [dbo].[Radius_Evt_Vs_Pro_Tablet] ADD  DEFAULT (NULL) FOR [SRC_ID]
GO
ALTER TABLE [dbo].[Radius_Evt_Vs_Pro_Tablet] ADD  DEFAULT (NULL) FOR [SRC]
GO
ALTER TABLE [dbo].[Radius_Evt_Vs_Pro_Tablet] ADD  DEFAULT (NULL) FOR [USER_ID]
GO
ALTER TABLE [dbo].[Radius_Evt_Vs_Pro_Tablet] ADD  DEFAULT (NULL) FOR [USER]
GO
ALTER TABLE [dbo].[Radius_Evt_Vs_Pro_Tablet] ADD  DEFAULT (NULL) FOR [PROTOCOL_ID]
GO
ALTER TABLE [dbo].[Radius_Evt_Vs_Pro_Tablet] ADD  DEFAULT (NULL) FOR [PROTOCOL]
GO
ALTER TABLE [dbo].[Radius_Evt_Vs_Pro_Tablet] ADD  DEFAULT ('0') FOR [REQUEST_COUNT]
GO
ALTER TABLE [dbo].[Radius_Evt_Vs_Pro_Tablet] ADD  DEFAULT ('0') FOR [BYTES_INBOUND]
GO
ALTER TABLE [dbo].[Radius_Evt_Vs_Pro_Tablet] ADD  DEFAULT ('0') FOR [BYTES_OUTBOUND]
GO
ALTER TABLE [dbo].[Radius_Evt_Vs_Pro_Tablet] ADD  DEFAULT ('0') FOR [PACKETS_INBOUND]
GO
ALTER TABLE [dbo].[Radius_Evt_Vs_Pro_Tablet] ADD  DEFAULT ('0') FOR [PACKETS_OUTBOUND]
GO
ALTER TABLE [dbo].[Radius_Evt_Vs_Pro_Tablet] ADD  DEFAULT ('0') FOR [SESSION_TIME]
GO
ALTER TABLE [dbo].[Radius_Evt_Vs_Pro_Tablet] ADD  DEFAULT (NULL) FOR [OPERATION]
GO
ALTER TABLE [dbo].[Radius_Evt_Vs_Pro_Tablet] ADD  DEFAULT ('0') FOR [SESSIONID]
GO
