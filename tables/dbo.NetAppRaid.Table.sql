USE [OpManagerDB]
GO
/****** Object:  Table [dbo].[NetAppRaid]    Script Date: 6/29/2019 5:49:43 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NetAppRaid](
	[RAID_ID] [bigint] NOT NULL,
	[ONTAP_VERSION] [varchar](250) NOT NULL,
	[UPTIME] [varchar](250) NOT NULL,
	[CPU_LOAD] [varchar](250) NOT NULL,
	[ACTIVE_DISK_COUNT] [varchar](250) NOT NULL,
	[FAILED_DISK_COUNT] [varchar](50) NOT NULL,
	[SPARE_DISK_COUNT] [varchar](50) NOT NULL,
	[REBUILDING_COUNT] [varchar](50) NOT NULL,
	[FAN_STATUS] [varchar](100) NOT NULL,
	[POWERSUPPLY_STATUS] [varchar](100) NOT NULL,
	[TEMPERATURE_STATUS] [varchar](100) NOT NULL,
	[BATTERY_STATUS] [varchar](100) NOT NULL,
	[GLOBAL_STATUS] [varchar](400) NOT NULL,
 CONSTRAINT [NETAPPRAID_PK] PRIMARY KEY CLUSTERED 
(
	[RAID_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Index [IDX_1353157947]    Script Date: 6/29/2019 5:53:30 PM ******/
CREATE NONCLUSTERED INDEX [IDX_1353157947] ON [dbo].[NetAppRaid]
(
	[RAID_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[NetAppRaid]  WITH CHECK ADD  CONSTRAINT [NETAPPRAID_FK1] FOREIGN KEY([RAID_ID])
REFERENCES [dbo].[Raid] ([DEVICE_ID])
GO
ALTER TABLE [dbo].[NetAppRaid] CHECK CONSTRAINT [NETAPPRAID_FK1]
GO
