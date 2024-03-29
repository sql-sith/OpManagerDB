USE [OpManagerDB]
GO
/****** Object:  Table [dbo].[HP3PARStorageVolume]    Script Date: 6/29/2019 5:48:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HP3PARStorageVolume](
	[RAID_ID] [bigint] NOT NULL,
	[POOL_ID] [varchar](150) NOT NULL,
	[VOLUME_ID] [varchar](150) NOT NULL,
	[ELEMENT_NAME] [varchar](250) NOT NULL,
	[RAW_CAPACITY] [varchar](250) NOT NULL,
	[TOTAL_CAPACITY] [varchar](250) NOT NULL,
	[CONSUMABLE_CAPACITY] [varchar](250) NOT NULL,
	[NAME] [varchar](250) NOT NULL,
	[THINLY_PROVISIONED] [varchar](250) NOT NULL,
	[RAID_TYPE] [varchar](250) NOT NULL,
	[VOLUME_TYPE] [varchar](250) NOT NULL,
	[CONSUMABLE_ADMIN_CAPACITY] [varchar](250) NOT NULL,
	[RAW_COPY_CAPACITY] [varchar](250) NOT NULL,
	[CONSUMABLE_COPY_CAPACITY] [varchar](250) NOT NULL,
	[USED_SNAPSHOT_ADMIN_CAPACITY] [varchar](250) NOT NULL,
	[USED_SNAPSHOT_DATA_CAPACITY] [varchar](250) NOT NULL,
	[MASTER_NODE] [varchar](250) NOT NULL,
	[BACKUP_NODE1] [varchar](250) NOT NULL,
	[BACKUP_NODE2] [varchar](250) NOT NULL,
	[POLICY] [varchar](250) NOT NULL,
	[GEOMETRY_SECTORS_PER_TRACK] [varchar](250) NOT NULL,
	[GEOMETRY_HEADS_PER_CYLINDER] [varchar](250) NOT NULL,
	[GEOMETRY_SECTOR_SIZE] [varchar](250) NOT NULL,
	[PREFERRED_AVAILABILITY] [varchar](250) NOT NULL,
	[CURRENT_AVAILABILITY] [varchar](250) NOT NULL,
	[EXPORT_STATE] [varchar](250) NOT NULL,
	[DISK_DEVICE_TYPE] [varchar](250) NOT NULL,
	[SNAP_SPACE_ALLOCATION_WARNING] [varchar](250) NOT NULL,
	[SNAP_SPACE_ALLOCATION_LIMIT] [varchar](250) NOT NULL,
	[USER_SPACE_ALLOCATION_WARNING] [varchar](250) NOT NULL,
	[USER_SPACE_ALLOCATION_LIMIT] [varchar](250) NOT NULL,
	[SNAP_DSP_NAME] [varchar](250) NOT NULL,
	[USER_DSP_NAME] [varchar](250) NOT NULL,
	[PROVISIONED_CONSUMABLE_CAPACITY] [varchar](250) NOT NULL,
	[DOMAIN] [varchar](250) NOT NULL,
	[PARITY_SET_SIZE] [varchar](250) NOT NULL,
	[SET_DATA] [varchar](250) NOT NULL,
	[PROVISIONING_TYPE] [varchar](250) NOT NULL,
	[ACTIVITY] [varchar](250) NOT NULL,
	[STATE] [varchar](250) NOT NULL,
	[CREATED_DATE] [varchar](250) NOT NULL,
 CONSTRAINT [HP3PARStorageVolume_PK] PRIMARY KEY CLUSTERED 
(
	[RAID_ID] ASC,
	[VOLUME_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Index [IDX_444051557]    Script Date: 6/29/2019 5:53:30 PM ******/
CREATE NONCLUSTERED INDEX [IDX_444051557] ON [dbo].[HP3PARStorageVolume]
(
	[RAID_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[HP3PARStorageVolume]  WITH CHECK ADD  CONSTRAINT [HP3PARStorageVolume_FK] FOREIGN KEY([RAID_ID])
REFERENCES [dbo].[HP3PARRaid] ([RAID_ID])
GO
ALTER TABLE [dbo].[HP3PARStorageVolume] CHECK CONSTRAINT [HP3PARStorageVolume_FK]
GO
