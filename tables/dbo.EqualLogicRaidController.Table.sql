USE [OpManagerDB]
GO
/****** Object:  Table [dbo].[EqualLogicRaidController]    Script Date: 6/29/2019 5:47:30 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EqualLogicRaidController](
	[RAID_CONTROLLER_ID] [bigint] NOT NULL,
	[CONTROLLER_INDEX] [varchar](250) NOT NULL,
	[CONTROLLER_MODEL] [varchar](250) NOT NULL,
	[CM_REVISION] [varchar](250) NOT NULL,
	[SW_REVISION] [varchar](250) NOT NULL,
	[IS_PRIMARY] [varchar](250) NOT NULL,
	[CPU_REVISION] [varchar](250) NOT NULL,
	[CPU_FREQ] [varchar](250) NOT NULL,
	[PHYSICAL_MEMORY] [varchar](250) NOT NULL,
	[BOOTROM_VERSION] [varchar](250) NOT NULL,
	[ATHENA_SATA_REVISION] [varchar](250) NOT NULL,
	[MAJOR_VERSION] [varchar](250) NOT NULL,
	[MINOR_VERSION] [varchar](250) NOT NULL,
	[MAINTENANCE_VERSION] [varchar](250) NOT NULL,
	[SW_COMPATIBILITY_LEVEL] [varchar](250) NOT NULL,
	[SOFTWARE_REVISION] [varchar](250) NOT NULL,
	[CONTROLLER_TYPE] [varchar](250) NOT NULL,
 CONSTRAINT [EqualLogicRaidController_PK] PRIMARY KEY CLUSTERED 
(
	[RAID_CONTROLLER_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Index [IDX__945025699]    Script Date: 6/29/2019 5:53:30 PM ******/
CREATE NONCLUSTERED INDEX [IDX__945025699] ON [dbo].[EqualLogicRaidController]
(
	[RAID_CONTROLLER_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[EqualLogicRaidController]  WITH CHECK ADD  CONSTRAINT [EqualLogicRaidController_FK1] FOREIGN KEY([RAID_CONTROLLER_ID])
REFERENCES [dbo].[RaidController] ([DEVICE_ID])
GO
ALTER TABLE [dbo].[EqualLogicRaidController] CHECK CONSTRAINT [EqualLogicRaidController_FK1]
GO
