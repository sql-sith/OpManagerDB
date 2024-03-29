USE [OpManagerDB]
GO
/****** Object:  Table [dbo].[VPN_Hr_Trend_Tmp]    Script Date: 6/29/2019 5:53:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[VPN_Hr_Trend_Tmp](
	[HOUROFDAY] [int] NOT NULL,
	[RID] [bigint] NOT NULL,
	[SRC_ID] [bigint] NULL,
	[USER_ID] [bigint] NULL,
	[SRC] [bigint] NULL,
	[USER] [nvarchar](90) NULL,
	[VPN_NAME] [nvarchar](96) NOT NULL,
	[EVENT_COUNT] [int] NULL,
	[BYTES_INBOUND] [bigint] NULL,
	[BYTES_OUTBOUND] [bigint] NULL,
	[PACKETS_INBOUND] [bigint] NULL,
	[PACKETS_OUTBOUND] [bigint] NULL,
	[TRAN_IP] [nvarchar](96) NOT NULL,
	[SRC_INT] [nvarchar](20) NULL
) ON [PRIMARY]
GO
