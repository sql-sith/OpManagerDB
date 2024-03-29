USE [OpManagerDB]
GO
/****** Object:  Table [dbo].[VNXFileSystemStorDevs]    Script Date: 6/29/2019 5:52:57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[VNXFileSystemStorDevs](
	[STOR_DEV_ID] [bigint] NOT NULL,
	[RAID_ID] [bigint] NOT NULL,
	[FS_ID] [varchar](150) NOT NULL,
	[FS_NAME] [varchar](250) NOT NULL,
	[STOR_DEV] [varchar](250) NOT NULL,
 CONSTRAINT [VNXFileSystemStorDevs_PK] PRIMARY KEY CLUSTERED 
(
	[STOR_DEV_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Index [IDX_1698518135]    Script Date: 6/29/2019 5:53:30 PM ******/
CREATE NONCLUSTERED INDEX [IDX_1698518135] ON [dbo].[VNXFileSystemStorDevs]
(
	[RAID_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[VNXFileSystemStorDevs]  WITH CHECK ADD  CONSTRAINT [VNXFileSystemStorDevs_FK] FOREIGN KEY([RAID_ID])
REFERENCES [dbo].[Raid] ([DEVICE_ID])
GO
ALTER TABLE [dbo].[VNXFileSystemStorDevs] CHECK CONSTRAINT [VNXFileSystemStorDevs_FK]
GO
