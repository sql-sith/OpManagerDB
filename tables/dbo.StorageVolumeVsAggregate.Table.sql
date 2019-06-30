USE [OpManagerDB]
GO
/****** Object:  Table [dbo].[StorageVolumeVsAggregate]    Script Date: 6/29/2019 5:51:57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[StorageVolumeVsAggregate](
	[VOLUME_ID] [bigint] NOT NULL,
	[AGGREGATE_ID] [bigint] NOT NULL,
 CONSTRAINT [StorageVolumeVsAggregate_PK] PRIMARY KEY CLUSTERED 
(
	[VOLUME_ID] ASC,
	[AGGREGATE_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Index [IDX__589723717]    Script Date: 6/29/2019 5:53:30 PM ******/
CREATE NONCLUSTERED INDEX [IDX__589723717] ON [dbo].[StorageVolumeVsAggregate]
(
	[AGGREGATE_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IDX__589723718]    Script Date: 6/29/2019 5:53:30 PM ******/
CREATE NONCLUSTERED INDEX [IDX__589723718] ON [dbo].[StorageVolumeVsAggregate]
(
	[VOLUME_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[StorageVolumeVsAggregate]  WITH CHECK ADD  CONSTRAINT [StorageVolumeVsAggregate_FK1] FOREIGN KEY([VOLUME_ID])
REFERENCES [dbo].[StorageVolumes] ([VOLUME_ID])
GO
ALTER TABLE [dbo].[StorageVolumeVsAggregate] CHECK CONSTRAINT [StorageVolumeVsAggregate_FK1]
GO
ALTER TABLE [dbo].[StorageVolumeVsAggregate]  WITH CHECK ADD  CONSTRAINT [StorageVolumeVsAggregate_FK2] FOREIGN KEY([AGGREGATE_ID])
REFERENCES [dbo].[StorageAggregates] ([AGGREGATE_ID])
GO
ALTER TABLE [dbo].[StorageVolumeVsAggregate] CHECK CONSTRAINT [StorageVolumeVsAggregate_FK2]
GO
