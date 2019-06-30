USE [OpManagerDB]
GO
/****** Object:  Table [dbo].[WlcSSIDIn10Min_WLC1]    Script Date: 6/29/2019 5:53:20 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[WlcSSIDIn10Min_WLC1](
	[ID] [bigint] NOT NULL,
	[APMAC_ID] [int] NOT NULL,
	[WIRELESS_SSID] [varchar](50) NOT NULL,
	[OCTETS] [bigint] NOT NULL,
	[COLLECTION_TIME] [datetime] NOT NULL,
	[SSID_ID] [int] NOT NULL,
 CONSTRAINT [WlcSSIDIn10Min_PKZ_WLC1] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Index [WlcSSIDIn10Min_IDX0_WLC1]    Script Date: 6/29/2019 5:53:30 PM ******/
CREATE NONCLUSTERED INDEX [WlcSSIDIn10Min_IDX0_WLC1] ON [dbo].[WlcSSIDIn10Min_WLC1]
(
	[APMAC_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [WlcSSIDIn10Min_IDX1_WLC1]    Script Date: 6/29/2019 5:53:30 PM ******/
CREATE NONCLUSTERED INDEX [WlcSSIDIn10Min_IDX1_WLC1] ON [dbo].[WlcSSIDIn10Min_WLC1]
(
	[SSID_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
