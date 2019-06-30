USE [OpManagerDB]
GO
/****** Object:  Table [dbo].[IBMDSDiskDrive]    Script Date: 6/29/2019 5:48:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[IBMDSDiskDrive](
	[RAID_ID] [bigint] NOT NULL,
	[DRIVE_ID] [varchar](250) NOT NULL,
	[DRIVE_NAME] [varchar](250) NOT NULL,
	[HEALTH_STATE] [varchar](250) NOT NULL,
	[DDM_SPEED] [varchar](250) NOT NULL,
	[DAPAIR_ID] [int] NOT NULL,
	[DEVICE_ADAPTER] [varchar](250) NOT NULL,
	[LOCATION] [varchar](250) NOT NULL,
	[BLOCK_SIZE] [bigint] NOT NULL,
	[NO_OF_BLOCKS] [bigint] NOT NULL,
	[CONSUMABLE_BLOCKS] [bigint] NOT NULL,
	[PRIMORDIAL] [varchar](250) NOT NULL,
	[ACCESS] [varchar](250) NOT NULL,
	[MANUFACTURER] [varchar](250) NOT NULL,
	[VERSION] [varchar](250) NOT NULL,
	[REMOVAL_CONDITIONS] [varchar](250) NOT NULL,
 CONSTRAINT [IBMDSDiskDrive_PK1] PRIMARY KEY CLUSTERED 
(
	[RAID_ID] ASC,
	[DRIVE_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Index [IDX_1904693655]    Script Date: 6/29/2019 5:53:30 PM ******/
CREATE NONCLUSTERED INDEX [IDX_1904693655] ON [dbo].[IBMDSDiskDrive]
(
	[RAID_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[IBMDSDiskDrive]  WITH CHECK ADD  CONSTRAINT [IBMDSDiskDrive_FK1] FOREIGN KEY([RAID_ID])
REFERENCES [dbo].[Raid] ([DEVICE_ID])
GO
ALTER TABLE [dbo].[IBMDSDiskDrive] CHECK CONSTRAINT [IBMDSDiskDrive_FK1]
GO
