USE [OpManagerDB]
GO
/****** Object:  Table [dbo].[VMNICStats]    Script Date: 6/29/2019 5:52:54 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[VMNICStats](
	[VMNIC_ID] [bigint] NOT NULL,
	[COLLECTIONTIME] [datetime] NOT NULL,
	[RX_TRAFFIC_KBPS] [bigint] NOT NULL,
	[TX_TRAFFIC_KBPS] [bigint] NOT NULL,
	[RX_NUM_PACKETS] [bigint] NOT NULL,
	[TX_NUM_PACKETS] [bigint] NOT NULL,
 CONSTRAINT [VMNICStats_PK] PRIMARY KEY CLUSTERED 
(
	[VMNIC_ID] ASC,
	[COLLECTIONTIME] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
