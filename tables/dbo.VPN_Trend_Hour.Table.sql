USE [OpManagerDB]
GO
/****** Object:  Table [dbo].[VPN_Trend_Hour]    Script Date: 6/29/2019 5:53:02 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[VPN_Trend_Hour](
	[VPNTHID] [bigint] NOT NULL,
	[HOUROFDAY] [datetime] NOT NULL,
	[RID] [bigint] NOT NULL,
	[SRC_ID] [bigint] NULL,
	[USER_ID] [bigint] NULL,
	[SRC] [nvarchar](50) NULL,
	[USER] [nvarchar](90) NULL,
	[VPN_NAME] [nvarchar](96) NULL,
	[EVENT_COUNT] [int] NULL,
	[BYTES_INBOUND] [bigint] NULL,
	[BYTES_OUTBOUND] [bigint] NULL,
	[PACKETS_INBOUND] [bigint] NULL,
	[PACKETS_OUTBOUND] [bigint] NULL,
	[TRAN_IP] [nvarchar](96) NULL,
	[SRC_INT] [nvarchar](20) NULL,
PRIMARY KEY CLUSTERED 
(
	[VPNTHID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Index [VPN_Trend_Hour_CIDX1]    Script Date: 6/29/2019 5:53:30 PM ******/
CREATE NONCLUSTERED INDEX [VPN_Trend_Hour_CIDX1] ON [dbo].[VPN_Trend_Hour]
(
	[HOUROFDAY] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [VPN_Trend_Hour_CIDX2]    Script Date: 6/29/2019 5:53:30 PM ******/
CREATE NONCLUSTERED INDEX [VPN_Trend_Hour_CIDX2] ON [dbo].[VPN_Trend_Hour]
(
	[RID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[VPN_Trend_Hour] ADD  DEFAULT ('0') FOR [BYTES_INBOUND]
GO
ALTER TABLE [dbo].[VPN_Trend_Hour] ADD  DEFAULT ('0') FOR [BYTES_OUTBOUND]
GO
ALTER TABLE [dbo].[VPN_Trend_Hour] ADD  DEFAULT ('0') FOR [PACKETS_INBOUND]
GO
ALTER TABLE [dbo].[VPN_Trend_Hour] ADD  DEFAULT ('0') FOR [PACKETS_OUTBOUND]
GO
