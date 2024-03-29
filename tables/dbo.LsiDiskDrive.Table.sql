USE [OpManagerDB]
GO
/****** Object:  Table [dbo].[LsiDiskDrive]    Script Date: 6/29/2019 5:48:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LsiDiskDrive](
	[RAID_ID] [bigint] NOT NULL,
	[DISK_IDENTIFIER] [varchar](250) NOT NULL,
	[WWN] [varchar](250) NULL,
	[DRIVE_PATH_REDUNDANCY] [varchar](250) NULL,
	[FIRMWARE_VERSION] [varchar](250) NULL,
	[SERIAL_NUMBER] [varchar](250) NULL,
	[MODE] [varchar](250) NULL,
	[ASSOC_VOLUME_GROUP] [varchar](250) NULL,
	[USABLE_CAPACITY] [varchar](250) NULL,
	[PRODUCT_ID] [varchar](250) NULL,
 CONSTRAINT [LSIDISKDRIVE_PK] PRIMARY KEY CLUSTERED 
(
	[RAID_ID] ASC,
	[DISK_IDENTIFIER] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Index [IDX_981329496]    Script Date: 6/29/2019 5:53:30 PM ******/
CREATE NONCLUSTERED INDEX [IDX_981329496] ON [dbo].[LsiDiskDrive]
(
	[RAID_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[LsiDiskDrive]  WITH CHECK ADD  CONSTRAINT [LSIDISKDRIVE_FK1] FOREIGN KEY([RAID_ID])
REFERENCES [dbo].[Raid] ([DEVICE_ID])
GO
ALTER TABLE [dbo].[LsiDiskDrive] CHECK CONSTRAINT [LSIDISKDRIVE_FK1]
GO
