USE [OpManagerDB]
GO
/****** Object:  Table [dbo].[Radius_Evt_Vs_Pro_Year]    Script Date: 6/29/2019 5:50:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Radius_Evt_Vs_Pro_Year](
	[REPHR] [bigint] NOT NULL,
	[HOUR] [datetime] NOT NULL,
	[RID] [bigint] NOT NULL,
	[SRC_ID] [bigint] NULL,
	[SRC] [nvarchar](30) NULL,
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
 CONSTRAINT [Radius_Evt_Vs_Pro_Year_PK] PRIMARY KEY CLUSTERED 
(
	[REPHR] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Index [Radius_Evt_Vs_Pro_Year_CIDX1]    Script Date: 6/29/2019 5:53:30 PM ******/
CREATE NONCLUSTERED INDEX [Radius_Evt_Vs_Pro_Year_CIDX1] ON [dbo].[Radius_Evt_Vs_Pro_Year]
(
	[HOUR] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [Radius_Evt_Vs_Pro_Year_CIDX2]    Script Date: 6/29/2019 5:53:30 PM ******/
CREATE NONCLUSTERED INDEX [Radius_Evt_Vs_Pro_Year_CIDX2] ON [dbo].[Radius_Evt_Vs_Pro_Year]
(
	[SESSIONID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [Radius_Evt_Vs_Pro_Year_CIDX5]    Script Date: 6/29/2019 5:53:30 PM ******/
CREATE NONCLUSTERED INDEX [Radius_Evt_Vs_Pro_Year_CIDX5] ON [dbo].[Radius_Evt_Vs_Pro_Year]
(
	[SESSION_TIME] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [Radius_Evt_Vs_Pro_Year_CIDX6]    Script Date: 6/29/2019 5:53:30 PM ******/
CREATE NONCLUSTERED INDEX [Radius_Evt_Vs_Pro_Year_CIDX6] ON [dbo].[Radius_Evt_Vs_Pro_Year]
(
	[SRC_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Radius_Evt_Vs_Pro_Year] ADD  DEFAULT ('0') FOR [REQUEST_COUNT]
GO
ALTER TABLE [dbo].[Radius_Evt_Vs_Pro_Year] ADD  DEFAULT ('0') FOR [BYTES_INBOUND]
GO
ALTER TABLE [dbo].[Radius_Evt_Vs_Pro_Year] ADD  DEFAULT ('0') FOR [BYTES_OUTBOUND]
GO
ALTER TABLE [dbo].[Radius_Evt_Vs_Pro_Year] ADD  DEFAULT ('0') FOR [PACKETS_INBOUND]
GO
ALTER TABLE [dbo].[Radius_Evt_Vs_Pro_Year] ADD  DEFAULT ('0') FOR [PACKETS_OUTBOUND]
GO
ALTER TABLE [dbo].[Radius_Evt_Vs_Pro_Year] ADD  DEFAULT ('0') FOR [SESSION_TIME]
GO
