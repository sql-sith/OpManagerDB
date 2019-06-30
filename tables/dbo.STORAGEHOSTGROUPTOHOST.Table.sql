USE [OpManagerDB]
GO
/****** Object:  Table [dbo].[STORAGEHOSTGROUPTOHOST]    Script Date: 6/29/2019 5:51:54 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[STORAGEHOSTGROUPTOHOST](
	[ID] [bigint] NOT NULL,
	[RAID_ID] [bigint] NOT NULL,
	[HOSTGROUP_ID] [bigint] NOT NULL,
	[HOST_ID] [bigint] NOT NULL,
 CONSTRAINT [STORAGEHOSTGROUPTOHOST_PK] PRIMARY KEY CLUSTERED 
(
	[RAID_ID] ASC,
	[HOSTGROUP_ID] ASC,
	[HOST_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY],
 CONSTRAINT [STORAGEHOSTGROUPTOHOST_UK0] UNIQUE NONCLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Index [IDX_1029373740]    Script Date: 6/29/2019 5:53:30 PM ******/
CREATE NONCLUSTERED INDEX [IDX_1029373740] ON [dbo].[STORAGEHOSTGROUPTOHOST]
(
	[RAID_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IDX_1029373741]    Script Date: 6/29/2019 5:53:30 PM ******/
CREATE NONCLUSTERED INDEX [IDX_1029373741] ON [dbo].[STORAGEHOSTGROUPTOHOST]
(
	[HOSTGROUP_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IDX_1029373742]    Script Date: 6/29/2019 5:53:30 PM ******/
CREATE NONCLUSTERED INDEX [IDX_1029373742] ON [dbo].[STORAGEHOSTGROUPTOHOST]
(
	[HOST_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[STORAGEHOSTGROUPTOHOST]  WITH CHECK ADD  CONSTRAINT [STORAGEHOSTGROUPTOHOST_FK1] FOREIGN KEY([RAID_ID])
REFERENCES [dbo].[Raid] ([DEVICE_ID])
GO
ALTER TABLE [dbo].[STORAGEHOSTGROUPTOHOST] CHECK CONSTRAINT [STORAGEHOSTGROUPTOHOST_FK1]
GO
ALTER TABLE [dbo].[STORAGEHOSTGROUPTOHOST]  WITH CHECK ADD  CONSTRAINT [STORAGEHOSTGROUPTOHOST_FK2] FOREIGN KEY([HOSTGROUP_ID])
REFERENCES [dbo].[STORAGEHOSTGROUP] ([ID])
GO
ALTER TABLE [dbo].[STORAGEHOSTGROUPTOHOST] CHECK CONSTRAINT [STORAGEHOSTGROUPTOHOST_FK2]
GO
ALTER TABLE [dbo].[STORAGEHOSTGROUPTOHOST]  WITH CHECK ADD  CONSTRAINT [STORAGEHOSTGROUPTOHOST_FK3] FOREIGN KEY([HOST_ID])
REFERENCES [dbo].[STORAGEHOSTNAME] ([ID])
GO
ALTER TABLE [dbo].[STORAGEHOSTGROUPTOHOST] CHECK CONSTRAINT [STORAGEHOSTGROUPTOHOST_FK3]
GO
