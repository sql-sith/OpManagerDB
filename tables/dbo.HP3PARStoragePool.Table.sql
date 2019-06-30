USE [OpManagerDB]
GO
/****** Object:  Table [dbo].[HP3PARStoragePool]    Script Date: 6/29/2019 5:48:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HP3PARStoragePool](
	[RAID_ID] [bigint] NOT NULL,
	[POOL_ID] [varchar](150) NOT NULL,
	[INSTANCE_ID] [varchar](250) NOT NULL,
	[CAPTION] [varchar](250) NOT NULL,
	[ELEMENT_NAME] [varchar](250) NOT NULL,
	[NAME] [varchar](250) NOT NULL,
	[PRIMORDIAL] [varchar](250) NOT NULL,
	[TOTAL_CAPACITY] [varchar](250) NOT NULL,
	[FREE_CAPACITY] [varchar](250) NOT NULL,
	[USED_CAPACITY] [varchar](250) NOT NULL,
	[SPACE_LIMIT] [varchar](250) NOT NULL,
	[SPACE_LIMIT_DETERMINATION] [varchar](250) NOT NULL,
	[DISK_DEVICE_TYPE] [varchar](250) NOT NULL,
	[THINPROVISION_METADATASPACE] [varchar](250) NOT NULL,
	[RAID_TYPE] [varchar](250) NOT NULL,
	[POOL_TYPE] [varchar](250) NOT NULL,
 CONSTRAINT [HP3PARStoragePool_PK] PRIMARY KEY CLUSTERED 
(
	[RAID_ID] ASC,
	[POOL_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Index [IDX_1211998947]    Script Date: 6/29/2019 5:53:30 PM ******/
CREATE NONCLUSTERED INDEX [IDX_1211998947] ON [dbo].[HP3PARStoragePool]
(
	[RAID_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[HP3PARStoragePool]  WITH CHECK ADD  CONSTRAINT [HP3PARStoragePool_FK] FOREIGN KEY([RAID_ID])
REFERENCES [dbo].[HP3PARRaid] ([RAID_ID])
GO
ALTER TABLE [dbo].[HP3PARStoragePool] CHECK CONSTRAINT [HP3PARStoragePool_FK]
GO
