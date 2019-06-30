USE [OpManagerDB]
GO
/****** Object:  Table [dbo].[VPN_Evt_Vs_Pro_Year]    Script Date: 6/29/2019 5:53:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[VPN_Evt_Vs_Pro_Year](
	[VPNVP_ID] [bigint] IDENTITY(1,1) NOT NULL,
	[HOUR] [datetime] NOT NULL,
	[RID] [bigint] NOT NULL,
	[SRC_ID] [bigint] NULL,
	[SRC] [nvarchar](96) NULL,
	[USER_ID] [bigint] NULL,
	[USER] [nvarchar](96) NULL,
	[DEST_ID] [bigint] NULL,
	[DEST] [nvarchar](96) NULL,
	[VPN_NAME] [nvarchar](96) NULL,
	[GATEWAY] [nvarchar](96) NULL,
	[PROTOCOL_ID] [bigint] NULL,
	[PROTOCOL] [nvarchar](48) NULL,
	[EVENT_CODE] [nvarchar](10) NULL,
	[REQUEST_COUNT] [int] NULL,
	[DURATION] [int] NULL,
	[BYTES_INBOUND] [bigint] NULL,
	[BYTES_OUTBOUND] [bigint] NULL,
	[TOTAL_BYTES] [bigint] NULL,
	[TRAN_IP] [nvarchar](96) NULL,
	[SRC_INT] [nvarchar](20) NULL,
	[GROUP_VPN] [nvarchar](150) NULL,
PRIMARY KEY CLUSTERED 
(
	[VPNVP_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Index [VPN_Evt_Vs_Pro_Year_IDX1]    Script Date: 6/29/2019 5:53:30 PM ******/
CREATE NONCLUSTERED INDEX [VPN_Evt_Vs_Pro_Year_IDX1] ON [dbo].[VPN_Evt_Vs_Pro_Year]
(
	[HOUR] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [VPN_Evt_Vs_Pro_Year_IDX2]    Script Date: 6/29/2019 5:53:30 PM ******/
CREATE NONCLUSTERED INDEX [VPN_Evt_Vs_Pro_Year_IDX2] ON [dbo].[VPN_Evt_Vs_Pro_Year]
(
	[SRC_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [VPN_Evt_Vs_Pro_Year_IDX3]    Script Date: 6/29/2019 5:53:30 PM ******/
CREATE NONCLUSTERED INDEX [VPN_Evt_Vs_Pro_Year_IDX3] ON [dbo].[VPN_Evt_Vs_Pro_Year]
(
	[DEST_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [VPN_Evt_Vs_Pro_Year_IDX4]    Script Date: 6/29/2019 5:53:30 PM ******/
CREATE NONCLUSTERED INDEX [VPN_Evt_Vs_Pro_Year_IDX4] ON [dbo].[VPN_Evt_Vs_Pro_Year]
(
	[RID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [VPN_Evt_Vs_Pro_Year_IDX5]    Script Date: 6/29/2019 5:53:30 PM ******/
CREATE NONCLUSTERED INDEX [VPN_Evt_Vs_Pro_Year_IDX5] ON [dbo].[VPN_Evt_Vs_Pro_Year]
(
	[PROTOCOL_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [VPN_Evt_Vs_Pro_Year_IDX6]    Script Date: 6/29/2019 5:53:30 PM ******/
CREATE NONCLUSTERED INDEX [VPN_Evt_Vs_Pro_Year_IDX6] ON [dbo].[VPN_Evt_Vs_Pro_Year]
(
	[USER_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[VPN_Evt_Vs_Pro_Year] ADD  DEFAULT ('1970-01-01 00:00:00') FOR [HOUR]
GO
ALTER TABLE [dbo].[VPN_Evt_Vs_Pro_Year] ADD  DEFAULT ('0') FOR [RID]
GO
ALTER TABLE [dbo].[VPN_Evt_Vs_Pro_Year] ADD  DEFAULT (NULL) FOR [SRC_ID]
GO
ALTER TABLE [dbo].[VPN_Evt_Vs_Pro_Year] ADD  DEFAULT (NULL) FOR [SRC]
GO
ALTER TABLE [dbo].[VPN_Evt_Vs_Pro_Year] ADD  DEFAULT (NULL) FOR [USER_ID]
GO
ALTER TABLE [dbo].[VPN_Evt_Vs_Pro_Year] ADD  DEFAULT (NULL) FOR [USER]
GO
ALTER TABLE [dbo].[VPN_Evt_Vs_Pro_Year] ADD  DEFAULT (NULL) FOR [DEST_ID]
GO
ALTER TABLE [dbo].[VPN_Evt_Vs_Pro_Year] ADD  DEFAULT (NULL) FOR [DEST]
GO
ALTER TABLE [dbo].[VPN_Evt_Vs_Pro_Year] ADD  DEFAULT (NULL) FOR [VPN_NAME]
GO
ALTER TABLE [dbo].[VPN_Evt_Vs_Pro_Year] ADD  DEFAULT (NULL) FOR [GATEWAY]
GO
ALTER TABLE [dbo].[VPN_Evt_Vs_Pro_Year] ADD  DEFAULT (NULL) FOR [PROTOCOL_ID]
GO
ALTER TABLE [dbo].[VPN_Evt_Vs_Pro_Year] ADD  DEFAULT (NULL) FOR [PROTOCOL]
GO
ALTER TABLE [dbo].[VPN_Evt_Vs_Pro_Year] ADD  DEFAULT (NULL) FOR [EVENT_CODE]
GO
ALTER TABLE [dbo].[VPN_Evt_Vs_Pro_Year] ADD  DEFAULT ('0') FOR [REQUEST_COUNT]
GO
ALTER TABLE [dbo].[VPN_Evt_Vs_Pro_Year] ADD  DEFAULT ('0') FOR [DURATION]
GO
ALTER TABLE [dbo].[VPN_Evt_Vs_Pro_Year] ADD  DEFAULT ('0') FOR [BYTES_INBOUND]
GO
ALTER TABLE [dbo].[VPN_Evt_Vs_Pro_Year] ADD  DEFAULT ('0') FOR [BYTES_OUTBOUND]
GO
ALTER TABLE [dbo].[VPN_Evt_Vs_Pro_Year] ADD  DEFAULT ('0') FOR [TOTAL_BYTES]
GO
ALTER TABLE [dbo].[VPN_Evt_Vs_Pro_Year] ADD  DEFAULT (NULL) FOR [TRAN_IP]
GO
ALTER TABLE [dbo].[VPN_Evt_Vs_Pro_Year] ADD  DEFAULT (NULL) FOR [SRC_INT]
GO
ALTER TABLE [dbo].[VPN_Evt_Vs_Pro_Year] ADD  DEFAULT (NULL) FOR [GROUP_VPN]
GO
