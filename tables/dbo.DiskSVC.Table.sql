USE [OpManagerDB]
GO
/****** Object:  Table [dbo].[DiskSVC]    Script Date: 6/29/2019 5:47:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DiskSVC](
	[DISK_ID] [bigint] NOT NULL,
	[MDISK_ID] [varchar](250) NULL,
	[MDISK_NAME] [varchar](250) NULL,
	[VENDOR_ID] [varchar](250) NULL,
	[FRU_ID] [varchar](250) NULL,
	[DISK_DEVICE_ID] [varchar](250) NULL,
	[MEMBER_ID] [varchar](250) NULL,
	[ENCLODURE_ID] [varchar](250) NULL,
	[SLOT_ID] [varchar](250) NULL,
	[PRODUCT_ID] [varchar](250) NULL,
 CONSTRAINT [DiskSVC_PK] PRIMARY KEY CLUSTERED 
(
	[DISK_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Index [IDX__2114133712]    Script Date: 6/29/2019 5:53:30 PM ******/
CREATE NONCLUSTERED INDEX [IDX__2114133712] ON [dbo].[DiskSVC]
(
	[DISK_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[DiskSVC]  WITH CHECK ADD  CONSTRAINT [DiskSVC_FK1] FOREIGN KEY([DISK_ID])
REFERENCES [dbo].[SANDiskDrive] ([DISK_ID])
GO
ALTER TABLE [dbo].[DiskSVC] CHECK CONSTRAINT [DiskSVC_FK1]
GO
