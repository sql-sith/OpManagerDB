USE [OpManagerDB]
GO
/****** Object:  Table [dbo].[StorEdge6120StorageVolume]    Script Date: 6/29/2019 5:51:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[StorEdge6120StorageVolume](
	[RAID_DEVICE_ID] [bigint] NOT NULL,
	[VOLUME_ID] [varchar](250) NOT NULL,
	[VOLUME_NAME] [varchar](250) NULL,
	[CONSUM_SIZE] [varchar](250) NULL,
	[VOL_ELT_NAME] [varchar](250) NULL,
	[DEVICE_NO] [varchar](250) NULL,
	[ACCESSTYPE] [varchar](250) NULL,
	[PRIMORDIAL] [varchar](250) NULL,
	[STATE] [varchar](250) NULL,
	[SLICE_NAME] [varchar](250) NULL,
	[POOL_NAME] [varchar](250) NULL,
 CONSTRAINT [StorEdge6120StorageVolume_PK] PRIMARY KEY CLUSTERED 
(
	[RAID_DEVICE_ID] ASC,
	[VOLUME_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Index [IDX_1819977640]    Script Date: 6/29/2019 5:53:30 PM ******/
CREATE NONCLUSTERED INDEX [IDX_1819977640] ON [dbo].[StorEdge6120StorageVolume]
(
	[RAID_DEVICE_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[StorEdge6120StorageVolume]  WITH CHECK ADD  CONSTRAINT [StorEdge6120StorageVolume_FK1] FOREIGN KEY([RAID_DEVICE_ID])
REFERENCES [dbo].[SanManagedObject] ([DEVICE_ID])
GO
ALTER TABLE [dbo].[StorEdge6120StorageVolume] CHECK CONSTRAINT [StorEdge6120StorageVolume_FK1]
GO
