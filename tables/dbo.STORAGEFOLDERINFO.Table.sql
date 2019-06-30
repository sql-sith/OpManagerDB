USE [OpManagerDB]
GO
/****** Object:  Table [dbo].[STORAGEFOLDERINFO]    Script Date: 6/29/2019 5:51:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[STORAGEFOLDERINFO](
	[ID] [bigint] NOT NULL,
	[RAID_ID] [bigint] NOT NULL,
	[FOLDER_ID] [varchar](250) NULL,
	[FOLDER_NAME] [varchar](250) NOT NULL,
	[POOL_NAME] [varchar](250) NULL,
	[TOTAL_CAPACITY] [varchar](250) NULL,
	[USED_CAPACITY] [varchar](250) NULL,
	[FREE_CAPACITY] [varchar](250) NULL,
	[NO_OF_VOLUMES] [int] NULL,
	[NO_OF_SNAPSHOT] [int] NULL,
	[ADDITIONAL_DATA] [text] NULL,
 CONSTRAINT [STORAGEFOLDERINFO_PK] PRIMARY KEY CLUSTERED 
(
	[RAID_ID] ASC,
	[FOLDER_NAME] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY],
 CONSTRAINT [STORAGEFOLDERINFO_UK0] UNIQUE NONCLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Index [IDX__1990825340]    Script Date: 6/29/2019 5:53:30 PM ******/
CREATE NONCLUSTERED INDEX [IDX__1990825340] ON [dbo].[STORAGEFOLDERINFO]
(
	[RAID_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[STORAGEFOLDERINFO] ADD  DEFAULT ('0') FOR [NO_OF_VOLUMES]
GO
ALTER TABLE [dbo].[STORAGEFOLDERINFO] ADD  DEFAULT ('0') FOR [NO_OF_SNAPSHOT]
GO
ALTER TABLE [dbo].[STORAGEFOLDERINFO]  WITH CHECK ADD  CONSTRAINT [STORAGEFOLDERINFO_FK1] FOREIGN KEY([RAID_ID])
REFERENCES [dbo].[Raid] ([DEVICE_ID])
GO
ALTER TABLE [dbo].[STORAGEFOLDERINFO] CHECK CONSTRAINT [STORAGEFOLDERINFO_FK1]
GO
