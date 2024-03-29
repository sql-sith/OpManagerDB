USE [OpManagerDB]
GO
/****** Object:  Table [dbo].[Raid]    Script Date: 6/29/2019 5:50:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Raid](
	[DEVICE_ID] [bigint] NOT NULL,
	[SYSTEM_INTERFACE] [varchar](250) NOT NULL,
	[RAID_LEVEL] [varchar](100) NOT NULL,
	[NO_OF_DRIVES] [int] NOT NULL,
	[SYSTEM_CAPACITY] [varchar](100) NOT NULL,
	[CONFIG_CAPACITY] [float] NULL,
	[USED_CAPACITY] [float] NULL,
	[FREE_CAPACITY] [float] NULL,
	[ADDITIONAL_DATA] [text] NULL,
 CONSTRAINT [RAID_PK] PRIMARY KEY CLUSTERED 
(
	[DEVICE_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Index [IDX_890351063]    Script Date: 6/29/2019 5:53:30 PM ******/
CREATE NONCLUSTERED INDEX [IDX_890351063] ON [dbo].[Raid]
(
	[DEVICE_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Raid]  WITH CHECK ADD  CONSTRAINT [RAID_FK1] FOREIGN KEY([DEVICE_ID])
REFERENCES [dbo].[SanManagedObject] ([DEVICE_ID])
GO
ALTER TABLE [dbo].[Raid] CHECK CONSTRAINT [RAID_FK1]
GO
