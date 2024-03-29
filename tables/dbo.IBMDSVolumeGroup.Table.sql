USE [OpManagerDB]
GO
/****** Object:  Table [dbo].[IBMDSVolumeGroup]    Script Date: 6/29/2019 5:48:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[IBMDSVolumeGroup](
	[RAID_ID] [bigint] NOT NULL,
	[VGROUP_NO] [varchar](160) NOT NULL,
	[VGROUP_NAME] [varchar](250) NOT NULL,
	[VDEVICE_IDS] [varchar](2000) NOT NULL,
	[VGROUP_TYPE] [varchar](250) NOT NULL,
 CONSTRAINT [IBMDSVolumeGroup_PK1] PRIMARY KEY CLUSTERED 
(
	[RAID_ID] ASC,
	[VGROUP_NO] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Index [IDX__366908433]    Script Date: 6/29/2019 5:53:30 PM ******/
CREATE NONCLUSTERED INDEX [IDX__366908433] ON [dbo].[IBMDSVolumeGroup]
(
	[RAID_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[IBMDSVolumeGroup]  WITH CHECK ADD  CONSTRAINT [IBMDSVolumeGroup_FK1] FOREIGN KEY([RAID_ID])
REFERENCES [dbo].[Raid] ([DEVICE_ID])
GO
ALTER TABLE [dbo].[IBMDSVolumeGroup] CHECK CONSTRAINT [IBMDSVolumeGroup_FK1]
GO
