USE [OpManagerDB]
GO
/****** Object:  Table [dbo].[InfortrendRaidControllerDiskArrayParams]    Script Date: 6/29/2019 5:48:25 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[InfortrendRaidControllerDiskArrayParams](
	[DEVICE_ID] [bigint] NOT NULL,
	[MAX_REBUILD_PRIORITY_INDEX] [varchar](250) NULL,
	[MIN_REBUILD_PRIORITY_INDEX] [varchar](250) NULL,
	[DEF_REBUILD_PRIORITY_INDEX] [varchar](250) NULL,
	[CUR_REBUILD_PRIORITY_INDEX] [varchar](250) NULL,
	[WRITEVERIFY_NORMALWRITES] [varchar](250) NULL,
	[WRITEVERIFY_INITIALIZATIONWRITES] [varchar](250) NULL,
	[WRITEVERIFY_REBUILDWRITES] [varchar](250) NULL,
 CONSTRAINT [InfortrendRaidControllerDiskArrayParams_PK] PRIMARY KEY CLUSTERED 
(
	[DEVICE_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Index [IDX_1474567937]    Script Date: 6/29/2019 5:53:30 PM ******/
CREATE NONCLUSTERED INDEX [IDX_1474567937] ON [dbo].[InfortrendRaidControllerDiskArrayParams]
(
	[DEVICE_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[InfortrendRaidControllerDiskArrayParams]  WITH CHECK ADD  CONSTRAINT [InfortrendRaidControllerDiskArrayParams_FK] FOREIGN KEY([DEVICE_ID])
REFERENCES [dbo].[RaidController] ([DEVICE_ID])
GO
ALTER TABLE [dbo].[InfortrendRaidControllerDiskArrayParams] CHECK CONSTRAINT [InfortrendRaidControllerDiskArrayParams_FK]
GO
