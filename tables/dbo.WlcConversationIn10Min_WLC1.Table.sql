USE [OpManagerDB]
GO
/****** Object:  Table [dbo].[WlcConversationIn10Min_WLC1]    Script Date: 6/29/2019 5:53:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[WlcConversationIn10Min_WLC1](
	[ID] [bigint] NOT NULL,
	[APMAC_ID] [bigint] NOT NULL,
	[APMAC] [varchar](50) NOT NULL,
	[CLIENTIP] [varbinary](16) NOT NULL,
	[CLIENTMAC] [varchar](50) NOT NULL,
	[NBAR_APP_ID] [bigint] NOT NULL,
	[WIRELESS_SSID] [varchar](50) NOT NULL,
	[OCTETS] [bigint] NOT NULL,
	[IP_DSCP_OUT] [int] NOT NULL,
	[IP_DSCP] [int] NOT NULL,
	[COLLECTION_TIME] [datetime] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [WlcConversationIn10Min_WLC1_IDX0]    Script Date: 6/29/2019 5:53:30 PM ******/
CREATE NONCLUSTERED INDEX [WlcConversationIn10Min_WLC1_IDX0] ON [dbo].[WlcConversationIn10Min_WLC1]
(
	[APMAC] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [WlcConversationIn10Min_WLC1_IDX1]    Script Date: 6/29/2019 5:53:30 PM ******/
CREATE NONCLUSTERED INDEX [WlcConversationIn10Min_WLC1_IDX1] ON [dbo].[WlcConversationIn10Min_WLC1]
(
	[CLIENTMAC] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [WlcConversationIn10Min_WLC1_IDX2]    Script Date: 6/29/2019 5:53:30 PM ******/
CREATE NONCLUSTERED INDEX [WlcConversationIn10Min_WLC1_IDX2] ON [dbo].[WlcConversationIn10Min_WLC1]
(
	[CLIENTIP] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
