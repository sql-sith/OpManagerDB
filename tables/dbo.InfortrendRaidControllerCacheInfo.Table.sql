USE [OpManagerDB]
GO
/****** Object:  Table [dbo].[InfortrendRaidControllerCacheInfo]    Script Date: 6/29/2019 5:48:25 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[InfortrendRaidControllerCacheInfo](
	[DEVICE_ID] [bigint] NOT NULL,
	[WRITE_MODE_STATUS] [varchar](250) NULL,
	[CACHE_OPTIMIZATION] [varchar](250) NULL,
	[CACHE_BLOCKSIZE] [bigint] NULL,
	[CACHE_TOTALBLOCKS] [varchar](250) NULL,
	[CACHE_DIRTYBLOCKS] [varchar](250) NULL,
 CONSTRAINT [InfortrendRaidControllerCacheInfo_PK] PRIMARY KEY CLUSTERED 
(
	[DEVICE_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Index [IDX__979417346]    Script Date: 6/29/2019 5:53:30 PM ******/
CREATE NONCLUSTERED INDEX [IDX__979417346] ON [dbo].[InfortrendRaidControllerCacheInfo]
(
	[DEVICE_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[InfortrendRaidControllerCacheInfo]  WITH CHECK ADD  CONSTRAINT [InfortrendRaidControllerCacheInfo_FK1] FOREIGN KEY([DEVICE_ID])
REFERENCES [dbo].[RaidController] ([DEVICE_ID])
GO
ALTER TABLE [dbo].[InfortrendRaidControllerCacheInfo] CHECK CONSTRAINT [InfortrendRaidControllerCacheInfo_FK1]
GO
