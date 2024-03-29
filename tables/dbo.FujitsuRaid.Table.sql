USE [OpManagerDB]
GO
/****** Object:  Table [dbo].[FujitsuRaid]    Script Date: 6/29/2019 5:47:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FujitsuRaid](
	[RAID_ID] [bigint] NOT NULL,
	[RAID_WWN] [varchar](250) NOT NULL,
	[BATTERY_UNIT_NUM] [varchar](250) NOT NULL,
 CONSTRAINT [FujitsuRaid_PK] PRIMARY KEY CLUSTERED 
(
	[RAID_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Index [IDX__1198104929]    Script Date: 6/29/2019 5:53:30 PM ******/
CREATE NONCLUSTERED INDEX [IDX__1198104929] ON [dbo].[FujitsuRaid]
(
	[RAID_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[FujitsuRaid]  WITH CHECK ADD  CONSTRAINT [FujitsuRaid_FK1] FOREIGN KEY([RAID_ID])
REFERENCES [dbo].[Raid] ([DEVICE_ID])
GO
ALTER TABLE [dbo].[FujitsuRaid] CHECK CONSTRAINT [FujitsuRaid_FK1]
GO
