USE [OpManagerDB]
GO
/****** Object:  Table [dbo].[SVCDiskDrive]    Script Date: 6/29/2019 5:52:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SVCDiskDrive](
	[DEVICE_ID] [bigint] NOT NULL,
	[NAME] [varchar](250) NOT NULL,
	[MDISK_ID] [varchar](250) NOT NULL,
	[MDISK_NAME] [varchar](250) NOT NULL,
	[VENDOR_ID] [varchar](250) NOT NULL,
	[CAPACITY] [varchar](250) NOT NULL,
	[MANUFACTURER] [varchar](250) NOT NULL,
	[SERIAL_NO] [varchar](250) NOT NULL,
	[DISK_ID] [varchar](250) NOT NULL,
	[DISK_UID] [varchar](250) NOT NULL,
	[MEMBER_ID] [varchar](250) NOT NULL,
	[ENCLOSURE_ID] [varchar](250) NOT NULL,
	[SLOT_ID] [varchar](250) NOT NULL,
	[PRODUCT_ID] [varchar](250) NOT NULL,
	[FRU_PART_NUMBER] [varchar](250) NOT NULL,
	[RPM] [varchar](250) NOT NULL,
	[FIRMWARE] [varchar](250) NOT NULL,
 CONSTRAINT [SVCDiskDrive_PK] PRIMARY KEY CLUSTERED 
(
	[DEVICE_ID] ASC,
	[DISK_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Index [IDX_354331738]    Script Date: 6/29/2019 5:53:30 PM ******/
CREATE NONCLUSTERED INDEX [IDX_354331738] ON [dbo].[SVCDiskDrive]
(
	[DEVICE_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[SVCDiskDrive]  WITH CHECK ADD  CONSTRAINT [SVCDiskDrive_FK1] FOREIGN KEY([DEVICE_ID])
REFERENCES [dbo].[Raid] ([DEVICE_ID])
GO
ALTER TABLE [dbo].[SVCDiskDrive] CHECK CONSTRAINT [SVCDiskDrive_FK1]
GO
