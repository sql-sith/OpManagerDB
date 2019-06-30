USE [OpManagerDB]
GO
/****** Object:  Table [dbo].[PureStorageLUNHostMap]    Script Date: 6/29/2019 5:50:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PureStorageLUNHostMap](
	[RAID_ID] [bigint] NOT NULL,
	[MAP_ID] [bigint] NOT NULL,
	[LUN_HOST_MAP_INSTANCE] [varchar](1000) NULL,
	[HOST_NAME] [varchar](500) NULL,
	[HOST_WWN] [varchar](500) NULL,
	[HOST_IQN] [varchar](500) NULL,
	[HOST_GROUP] [varchar](500) NULL,
	[LUN] [varchar](500) NULL,
	[VOL] [varchar](500) NULL,
	[TARGET_PORT] [varchar](500) NULL,
 CONSTRAINT [PureStorageLUNHostMap_PK] PRIMARY KEY CLUSTERED 
(
	[MAP_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Index [IDX__1694736206]    Script Date: 6/29/2019 5:53:30 PM ******/
CREATE NONCLUSTERED INDEX [IDX__1694736206] ON [dbo].[PureStorageLUNHostMap]
(
	[MAP_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[PureStorageLUNHostMap]  WITH CHECK ADD  CONSTRAINT [PureStorageLUNHostMap_FK] FOREIGN KEY([MAP_ID])
REFERENCES [dbo].[SanManagedObject] ([DEVICE_ID])
GO
ALTER TABLE [dbo].[PureStorageLUNHostMap] CHECK CONSTRAINT [PureStorageLUNHostMap_FK]
GO
