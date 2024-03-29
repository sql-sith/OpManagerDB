USE [OpManagerDB]
GO
/****** Object:  Table [dbo].[HPEVARaidVDisk]    Script Date: 6/29/2019 5:48:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HPEVARaidVDisk](
	[DEVICE_ID] [bigint] NOT NULL,
	[VDISK_NAME] [varchar](250) NOT NULL,
	[FAMILY_NAME] [varchar](250) NULL,
	[HEX_UUID] [varchar](250) NULL,
	[WWLUN_NAME] [varchar](250) NULL,
	[DISK_TYPE] [varchar](250) NULL,
	[DISK_GROUP] [varchar](250) NULL,
	[CAPACITY_REQ] [varchar](250) NULL,
	[CAPACITY_USED] [varchar](250) NULL,
	[OS_UNITID] [varchar](250) NULL,
	[REDUNDANCY] [varchar](250) NULL,
	[READ_CACHE] [varchar](250) NULL,
	[WRITE_CACHE] [varchar](250) NULL,
	[WRITE_PROTECT] [varchar](250) NULL,
	[REMOTE_VDISK] [varchar](250) NULL,
	[CREATED_TIME] [varchar](250) NULL,
	[OPER_STATE] [varchar](250) NULL,
	[COMMENTS] [varchar](250) NULL,
	[ID] [varchar](250) NULL,
	[PREFERRED_PATH] [varchar](250) NULL,
	[SHARING_RELATIONSHIP] [varchar](250) NULL,
	[ENABLE_DISABLE] [varchar](250) NULL,
	[BLOCK_SIZE] [int] NULL,
	[THIN_PROVISIONED] [bit] NULL,
	[CONTROLLER_NAME] [varchar](250) NULL,
	[TOTAL_BLOCKS] [bigint] NULL,
	[ALLOCATED_BLOCKS] [bigint] NULL,
	[CONSUMABLE_BLOCKS] [bigint] NULL,
 CONSTRAINT [HPEVARAIDVDISK_PK] PRIMARY KEY CLUSTERED 
(
	[DEVICE_ID] ASC,
	[VDISK_NAME] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Index [IDX__1801242162]    Script Date: 6/29/2019 5:53:30 PM ******/
CREATE NONCLUSTERED INDEX [IDX__1801242162] ON [dbo].[HPEVARaidVDisk]
(
	[DEVICE_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[HPEVARaidVDisk]  WITH CHECK ADD  CONSTRAINT [HPEVARAIDVDISK_FK1] FOREIGN KEY([DEVICE_ID])
REFERENCES [dbo].[HPEVARaid] ([DEVICE_ID])
GO
ALTER TABLE [dbo].[HPEVARaidVDisk] CHECK CONSTRAINT [HPEVARAIDVDISK_FK1]
GO
