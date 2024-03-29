USE [OpManagerDB]
GO
/****** Object:  Table [dbo].[DiskStorEdge6920]    Script Date: 6/29/2019 5:47:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DiskStorEdge6920](
	[DISK_ID] [bigint] NOT NULL,
	[DRIVE_ELEMENT_NAME] [varchar](250) NULL,
	[EXTENT_STATUS] [varchar](250) NULL,
	[MAX_PARTITIONS] [varchar](250) NULL,
	[CURRENT_PARTITIONS] [varchar](250) NULL,
 CONSTRAINT [DiskStorEdge6920_PK] PRIMARY KEY CLUSTERED 
(
	[DISK_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Index [IDX__213179956]    Script Date: 6/29/2019 5:53:30 PM ******/
CREATE NONCLUSTERED INDEX [IDX__213179956] ON [dbo].[DiskStorEdge6920]
(
	[DISK_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[DiskStorEdge6920]  WITH CHECK ADD  CONSTRAINT [DiskStorEdge6920_FK1] FOREIGN KEY([DISK_ID])
REFERENCES [dbo].[SANDiskDrive] ([DISK_ID])
GO
ALTER TABLE [dbo].[DiskStorEdge6920] CHECK CONSTRAINT [DiskStorEdge6920_FK1]
GO
