USE [OpManagerDB]
GO
/****** Object:  Table [dbo].[VNXStoragePoolFSLink]    Script Date: 6/29/2019 5:52:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[VNXStoragePoolFSLink](
	[RAID_ID] [bigint] NOT NULL,
	[POOL_ID] [varchar](150) NOT NULL,
	[FS_NAME] [varchar](150) NOT NULL,
 CONSTRAINT [VNXStoragePoolFSLink_PK] PRIMARY KEY CLUSTERED 
(
	[RAID_ID] ASC,
	[POOL_ID] ASC,
	[FS_NAME] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Index [IDX__1892071674]    Script Date: 6/29/2019 5:53:30 PM ******/
CREATE NONCLUSTERED INDEX [IDX__1892071674] ON [dbo].[VNXStoragePoolFSLink]
(
	[RAID_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[VNXStoragePoolFSLink]  WITH CHECK ADD  CONSTRAINT [VNXStoragePoolFSLink_FK] FOREIGN KEY([RAID_ID])
REFERENCES [dbo].[Raid] ([DEVICE_ID])
GO
ALTER TABLE [dbo].[VNXStoragePoolFSLink] CHECK CONSTRAINT [VNXStoragePoolFSLink_FK]
GO
