USE [OpManagerDB]
GO
/****** Object:  Table [dbo].[NetAppSDKDiskToAggr]    Script Date: 6/29/2019 5:49:44 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NetAppSDKDiskToAggr](
	[RAID_ID] [bigint] NOT NULL,
	[DISK_NAME] [varchar](160) NOT NULL,
	[AGGREGATE_NAME] [varchar](160) NOT NULL,
 CONSTRAINT [NetAppSDKDiskToAggr_PK] PRIMARY KEY CLUSTERED 
(
	[RAID_ID] ASC,
	[DISK_NAME] ASC,
	[AGGREGATE_NAME] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Index [IDX__426619060]    Script Date: 6/29/2019 5:53:30 PM ******/
CREATE NONCLUSTERED INDEX [IDX__426619060] ON [dbo].[NetAppSDKDiskToAggr]
(
	[RAID_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[NetAppSDKDiskToAggr]  WITH CHECK ADD  CONSTRAINT [NetAppSDKDiskToAggr_FK1] FOREIGN KEY([RAID_ID])
REFERENCES [dbo].[Raid] ([DEVICE_ID])
GO
ALTER TABLE [dbo].[NetAppSDKDiskToAggr] CHECK CONSTRAINT [NetAppSDKDiskToAggr_FK1]
GO
