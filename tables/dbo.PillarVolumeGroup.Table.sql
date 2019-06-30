USE [OpManagerDB]
GO
/****** Object:  Table [dbo].[PillarVolumeGroup]    Script Date: 6/29/2019 5:50:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PillarVolumeGroup](
	[PILLAR_ID] [bigint] NOT NULL,
	[VOLUME_GROUP_INSTANCE] [int] NOT NULL,
	[ID] [varchar](250) NOT NULL,
	[FQN] [varchar](250) NULL,
	[NAME] [varchar](250) NULL,
	[PARENT_GROUP_ID] [varchar](250) NULL,
	[PARENT_GROUP_FQN] [varchar](250) NULL,
 CONSTRAINT [PillarVolumeGroup_PK] PRIMARY KEY CLUSTERED 
(
	[PILLAR_ID] ASC,
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Index [IDX_1773884841]    Script Date: 6/29/2019 5:53:30 PM ******/
CREATE NONCLUSTERED INDEX [IDX_1773884841] ON [dbo].[PillarVolumeGroup]
(
	[PILLAR_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[PillarVolumeGroup]  WITH CHECK ADD  CONSTRAINT [PillarVolumeGroup_FK] FOREIGN KEY([PILLAR_ID])
REFERENCES [dbo].[PillarRaid] ([PILLAR_ID])
GO
ALTER TABLE [dbo].[PillarVolumeGroup] CHECK CONSTRAINT [PillarVolumeGroup_FK]
GO
