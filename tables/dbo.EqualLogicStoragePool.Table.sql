USE [OpManagerDB]
GO
/****** Object:  Table [dbo].[EqualLogicStoragePool]    Script Date: 6/29/2019 5:47:30 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EqualLogicStoragePool](
	[RAID_ID] [bigint] NOT NULL,
	[POOL_NAME] [varchar](250) NOT NULL,
	[POOL_INDEX] [varchar](250) NOT NULL,
	[STATUS] [varchar](250) NOT NULL,
	[LEAD_MEMBER_ID] [varchar](250) NOT NULL,
	[TOTAL_SPACE] [varchar](250) NOT NULL,
	[USED_SPACE] [varchar](250) NOT NULL,
	[FREE_SPACE] [varchar](250) NOT NULL,
	[MEMBER_COUNT] [varchar](250) NOT NULL,
	[SNAPSHOT_COUNT] [varchar](250) NOT NULL,
	[VOLUME_COUNT] [varchar](250) NOT NULL,
	[CONNECTION_COUNT] [varchar](250) NOT NULL,
 CONSTRAINT [EqualLogicStoragePool_PK] PRIMARY KEY CLUSTERED 
(
	[RAID_ID] ASC,
	[POOL_NAME] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Index [IDX_398597882]    Script Date: 6/29/2019 5:53:30 PM ******/
CREATE NONCLUSTERED INDEX [IDX_398597882] ON [dbo].[EqualLogicStoragePool]
(
	[RAID_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[EqualLogicStoragePool]  WITH CHECK ADD  CONSTRAINT [EqualLogicStoragePool_FK1] FOREIGN KEY([RAID_ID])
REFERENCES [dbo].[Raid] ([DEVICE_ID])
GO
ALTER TABLE [dbo].[EqualLogicStoragePool] CHECK CONSTRAINT [EqualLogicStoragePool_FK1]
GO
