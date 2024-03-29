USE [OpManagerDB]
GO
/****** Object:  Table [dbo].[SystemMEMORYMetrics_6_2019]    Script Date: 6/29/2019 5:52:09 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SystemMEMORYMetrics_6_2019](
	[SID] [int] NOT NULL,
	[HOPNUMBER] [int] NOT NULL,
	[TTL] [int] NOT NULL,
	[HOPNAME] [varchar](75) NOT NULL,
	[COLLECTIONSTATUS] [bigint] NOT NULL,
	[INGRESS_INTF] [varchar](75) NOT NULL,
	[EGRESS_INTF] [varchar](75) NOT NULL,
	[MEM_UTIL] [bigint] NULL,
	[UTILLIMIT] [int] NULL,
	[COLLECTIONTIME] [datetime] NOT NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[SystemMEMORYMetrics_6_2019] ADD  DEFAULT (NULL) FOR [MEM_UTIL]
GO
ALTER TABLE [dbo].[SystemMEMORYMetrics_6_2019] ADD  DEFAULT ((0)) FOR [UTILLIMIT]
GO
