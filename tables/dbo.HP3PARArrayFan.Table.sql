USE [OpManagerDB]
GO
/****** Object:  Table [dbo].[HP3PARArrayFan]    Script Date: 6/29/2019 5:48:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HP3PARArrayFan](
	[RAID_ID] [bigint] NOT NULL,
	[FAN_ID] [varchar](250) NOT NULL,
	[FAN_NAME] [varchar](250) NOT NULL,
	[POSITION] [varchar](250) NOT NULL,
	[SPEED] [varchar](250) NOT NULL,
	[STATUS] [varchar](250) NOT NULL,
 CONSTRAINT [HP3PARArrayFan_PK] PRIMARY KEY CLUSTERED 
(
	[RAID_ID] ASC,
	[FAN_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Index [IDX_653088468]    Script Date: 6/29/2019 5:53:30 PM ******/
CREATE NONCLUSTERED INDEX [IDX_653088468] ON [dbo].[HP3PARArrayFan]
(
	[RAID_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[HP3PARArrayFan]  WITH CHECK ADD  CONSTRAINT [HP3PARArrayFan_FK] FOREIGN KEY([RAID_ID])
REFERENCES [dbo].[HP3PARRaid] ([RAID_ID])
GO
ALTER TABLE [dbo].[HP3PARArrayFan] CHECK CONSTRAINT [HP3PARArrayFan_FK]
GO
