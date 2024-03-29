USE [OpManagerDB]
GO
/****** Object:  Table [dbo].[VNXMirrorView]    Script Date: 6/29/2019 5:52:57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[VNXMirrorView](
	[RAID_ID] [bigint] NOT NULL,
	[NAME] [varchar](250) NOT NULL,
	[DESCRIPTION] [varchar](250) NOT NULL,
	[UID] [varchar](250) NOT NULL,
	[STATE] [varchar](250) NOT NULL,
	[ROLE] [varchar](250) NOT NULL,
	[MIRROR_CONDITION] [varchar](250) NULL,
	[RECOVERY_POLICY] [varchar](250) NULL,
	[NUM_OF_MIRRORS] [varchar](250) NOT NULL,
	[MODE] [varchar](250) NULL,
	[OWNER] [varchar](250) NULL,
	[MIRRORED_DISK] [varchar](250) NULL,
	[LOCAL_CLARIION_ID] [varchar](250) NULL,
	[REMOTE_CLARIION_ID] [varchar](250) NOT NULL,
	[MIRROR_DIRECTION] [varchar](250) NULL,
 CONSTRAINT [VNXMirrorView_PK] PRIMARY KEY CLUSTERED 
(
	[RAID_ID] ASC,
	[NAME] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Index [IDX__769154272]    Script Date: 6/29/2019 5:53:30 PM ******/
CREATE NONCLUSTERED INDEX [IDX__769154272] ON [dbo].[VNXMirrorView]
(
	[RAID_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[VNXMirrorView]  WITH CHECK ADD  CONSTRAINT [VNXMirrorView_FK] FOREIGN KEY([RAID_ID])
REFERENCES [dbo].[Raid] ([DEVICE_ID])
GO
ALTER TABLE [dbo].[VNXMirrorView] CHECK CONSTRAINT [VNXMirrorView_FK]
GO
