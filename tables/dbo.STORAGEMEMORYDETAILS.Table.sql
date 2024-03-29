USE [OpManagerDB]
GO
/****** Object:  Table [dbo].[STORAGEMEMORYDETAILS]    Script Date: 6/29/2019 5:51:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[STORAGEMEMORYDETAILS](
	[ID] [bigint] NOT NULL,
	[RAID_ID] [bigint] NOT NULL,
	[MEMORY_NAME] [varchar](250) NOT NULL,
	[STATUS] [varchar](250) NULL,
	[TYPE] [varchar](250) NULL,
	[SIZE] [varchar](250) NULL,
	[ADDITIONAL_DATA] [text] NULL,
 CONSTRAINT [STORAGEMEMORYDETAILS_PK] PRIMARY KEY CLUSTERED 
(
	[RAID_ID] ASC,
	[MEMORY_NAME] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY],
 CONSTRAINT [STORAGEMEMORYDETAILS_UK0] UNIQUE NONCLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Index [IDX_1384743891]    Script Date: 6/29/2019 5:53:30 PM ******/
CREATE NONCLUSTERED INDEX [IDX_1384743891] ON [dbo].[STORAGEMEMORYDETAILS]
(
	[RAID_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[STORAGEMEMORYDETAILS]  WITH CHECK ADD  CONSTRAINT [STORAGEMEMORYDETAILS_FK1] FOREIGN KEY([RAID_ID])
REFERENCES [dbo].[Raid] ([DEVICE_ID])
GO
ALTER TABLE [dbo].[STORAGEMEMORYDETAILS] CHECK CONSTRAINT [STORAGEMEMORYDETAILS_FK1]
GO
