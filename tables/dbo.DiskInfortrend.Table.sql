USE [OpManagerDB]
GO
/****** Object:  Table [dbo].[DiskInfortrend]    Script Date: 6/29/2019 5:47:14 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DiskInfortrend](
	[DISK_ID] [bigint] NOT NULL,
	[LOGICAL_CHANNEL_NUMBER] [varchar](250) NULL,
	[PHYSICAL_CHANNEL_NUMBER] [varchar](250) NULL,
	[SCSI_ID] [varchar](250) NULL,
	[SCSI_LUN] [varchar](250) NULL,
	[DRIVE_BELONGS_TO_LD] [varchar](250) NULL,
	[DATA_TRANSFER_WIDTH] [varchar](250) NULL,
	[DRIVE_STATE] [varchar](250) NULL,
	[SLOT_NO] [varchar](250) NULL,
	[RESERVED_SPACE] [varchar](250) NULL,
 CONSTRAINT [DiskInfortrend_PK] PRIMARY KEY CLUSTERED 
(
	[DISK_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Index [IDX__1906742141]    Script Date: 6/29/2019 5:53:30 PM ******/
CREATE NONCLUSTERED INDEX [IDX__1906742141] ON [dbo].[DiskInfortrend]
(
	[DISK_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[DiskInfortrend]  WITH CHECK ADD  CONSTRAINT [DiskInfortrend_FK1] FOREIGN KEY([DISK_ID])
REFERENCES [dbo].[SANDiskDrive] ([DISK_ID])
GO
ALTER TABLE [dbo].[DiskInfortrend] CHECK CONSTRAINT [DiskInfortrend_FK1]
GO
