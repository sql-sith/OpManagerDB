USE [OpManagerDB]
GO
/****** Object:  Table [dbo].[VHostNetStats]    Script Date: 6/29/2019 5:52:47 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[VHostNetStats](
	[VHOST_UPLINKID] [bigint] NOT NULL,
	[COLLECTIONTIME] [datetime] NOT NULL,
	[UPLINK_STATUS] [int] NULL,
	[RX_TRAFFIC_KBPS] [bigint] NOT NULL,
	[TX_TRAFFIC_KBPS] [bigint] NOT NULL,
	[LINK_SPEED] [int] NULL,
	[RX_NUM_PACKETS] [bigint] NOT NULL,
	[TX_NUM_PACKETS] [bigint] NOT NULL,
 CONSTRAINT [VHostNetStats_PK] PRIMARY KEY CLUSTERED 
(
	[VHOST_UPLINKID] ASC,
	[COLLECTIONTIME] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
