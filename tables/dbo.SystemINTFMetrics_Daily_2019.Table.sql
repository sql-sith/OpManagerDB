USE [OpManagerDB]
GO
/****** Object:  Table [dbo].[SystemINTFMetrics_Daily_2019]    Script Date: 6/29/2019 5:52:09 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SystemINTFMetrics_Daily_2019](
	[SID] [int] NOT NULL,
	[HOPNUMBER] [int] NOT NULL,
	[TTL] [int] NOT NULL,
	[HOPNAME] [varchar](75) NOT NULL,
	[COLLECTIONSTATUS] [bigint] NOT NULL,
	[INGRESS_INTF] [varchar](75) NOT NULL,
	[EGRESS_INTF] [varchar](75) NOT NULL,
	[OCT_IN_INGRESS] [bigint] NULL,
	[OCT_OUT_EGRESS] [bigint] NULL,
	[PKT_RCV_ERR_INGRESS] [bigint] NULL,
	[PKT_ERR_EGRESS] [bigint] NULL,
	[PKT_DIS_INGRESS] [bigint] NULL,
	[PKT_DIS_EGRESS] [bigint] NULL,
	[ERRINLIMIT] [int] NULL,
	[ERROUTLIMIT] [int] NULL,
	[DISINLIMIT] [int] NULL,
	[DISOUTLIMIT] [int] NULL,
	[COLLECTIONTIME] [datetime] NOT NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[SystemINTFMetrics_Daily_2019] ADD  DEFAULT (NULL) FOR [OCT_IN_INGRESS]
GO
ALTER TABLE [dbo].[SystemINTFMetrics_Daily_2019] ADD  DEFAULT (NULL) FOR [OCT_OUT_EGRESS]
GO
ALTER TABLE [dbo].[SystemINTFMetrics_Daily_2019] ADD  DEFAULT (NULL) FOR [PKT_RCV_ERR_INGRESS]
GO
ALTER TABLE [dbo].[SystemINTFMetrics_Daily_2019] ADD  DEFAULT (NULL) FOR [PKT_ERR_EGRESS]
GO
ALTER TABLE [dbo].[SystemINTFMetrics_Daily_2019] ADD  DEFAULT (NULL) FOR [PKT_DIS_INGRESS]
GO
ALTER TABLE [dbo].[SystemINTFMetrics_Daily_2019] ADD  DEFAULT (NULL) FOR [PKT_DIS_EGRESS]
GO
ALTER TABLE [dbo].[SystemINTFMetrics_Daily_2019] ADD  DEFAULT ((0)) FOR [ERRINLIMIT]
GO
ALTER TABLE [dbo].[SystemINTFMetrics_Daily_2019] ADD  DEFAULT ((0)) FOR [ERROUTLIMIT]
GO
ALTER TABLE [dbo].[SystemINTFMetrics_Daily_2019] ADD  DEFAULT ((0)) FOR [DISINLIMIT]
GO
ALTER TABLE [dbo].[SystemINTFMetrics_Daily_2019] ADD  DEFAULT ((0)) FOR [DISOUTLIMIT]
GO
