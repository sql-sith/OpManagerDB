USE [OpManagerDB]
GO
/****** Object:  Table [dbo].[FujitsuRaidCEFan]    Script Date: 6/29/2019 5:47:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FujitsuRaidCEFan](
	[RAID_ID] [bigint] NOT NULL,
	[CEFAN_ID] [varchar](250) NOT NULL,
	[CEFAN_STATUS] [varchar](250) NOT NULL,
 CONSTRAINT [FujitsuRaidCEFan_PK] PRIMARY KEY CLUSTERED 
(
	[RAID_ID] ASC,
	[CEFAN_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Index [IDX_1548577292]    Script Date: 6/29/2019 5:53:30 PM ******/
CREATE NONCLUSTERED INDEX [IDX_1548577292] ON [dbo].[FujitsuRaidCEFan]
(
	[RAID_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[FujitsuRaidCEFan]  WITH CHECK ADD  CONSTRAINT [FujitsuRaidCEFan_FK1] FOREIGN KEY([RAID_ID])
REFERENCES [dbo].[Raid] ([DEVICE_ID])
GO
ALTER TABLE [dbo].[FujitsuRaidCEFan] CHECK CONSTRAINT [FujitsuRaidCEFan_FK1]
GO
