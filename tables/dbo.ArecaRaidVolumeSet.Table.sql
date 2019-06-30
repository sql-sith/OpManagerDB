USE [OpManagerDB]
GO
/****** Object:  Table [dbo].[ArecaRaidVolumeSet]    Script Date: 6/29/2019 5:46:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ArecaRaidVolumeSet](
	[DEVICE_ID] [bigint] NOT NULL,
	[VOL_INDEX] [int] NOT NULL,
	[VOL_NAME] [varchar](250) NULL,
	[VOL_RAIDNAME] [varchar](250) NULL,
	[VOL_CAPACITY] [varchar](250) NULL,
	[VOL_STATE] [varchar](250) NULL,
	[VOL_PROGRESS] [varchar](250) NULL,
	[VOL_CLUSTER] [varchar](250) NULL,
	[VOL_CHANNEL] [int] NULL,
	[VOL_SCSIID] [int] NULL,
	[VOL_SCSI_LUN] [int] NULL,
	[VOL_RAIDLEVEL] [varchar](250) NULL,
	[VOL_STRIPES] [varchar](250) NULL,
	[VOL_NUMDISKS] [int] NULL,
	[VOL_CACHE] [varchar](250) NULL,
	[VOL_TAG] [varchar](250) NULL,
	[VOL_MAXSPEED] [varchar](250) NULL,
	[VOL_CURSPEED] [varchar](250) NULL,
 CONSTRAINT [ArecaRaidVolumeSet_PK] PRIMARY KEY CLUSTERED 
(
	[DEVICE_ID] ASC,
	[VOL_INDEX] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Index [IDX_1912853337]    Script Date: 6/29/2019 5:53:29 PM ******/
CREATE NONCLUSTERED INDEX [IDX_1912853337] ON [dbo].[ArecaRaidVolumeSet]
(
	[DEVICE_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[ArecaRaidVolumeSet]  WITH CHECK ADD  CONSTRAINT [ArecaRaidVolumeSet_FK1] FOREIGN KEY([DEVICE_ID])
REFERENCES [dbo].[ArecaRaid] ([DEVICE_ID])
GO
ALTER TABLE [dbo].[ArecaRaidVolumeSet] CHECK CONSTRAINT [ArecaRaidVolumeSet_FK1]
GO
