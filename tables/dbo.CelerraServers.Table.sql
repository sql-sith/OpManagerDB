USE [OpManagerDB]
GO
/****** Object:  Table [dbo].[CelerraServers]    Script Date: 6/29/2019 5:46:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CelerraServers](
	[RAID_ID] [bigint] NOT NULL,
	[NAME] [varchar](250) NOT NULL,
	[DEDICATED] [varchar](250) NOT NULL,
	[OPERATIONAL_STATUS] [varchar](250) NOT NULL,
	[SERVER_TYPE] [varchar](250) NOT NULL,
 CONSTRAINT [CelerraServers_PK] PRIMARY KEY CLUSTERED 
(
	[RAID_ID] ASC,
	[NAME] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Index [IDX__822347209]    Script Date: 6/29/2019 5:53:29 PM ******/
CREATE NONCLUSTERED INDEX [IDX__822347209] ON [dbo].[CelerraServers]
(
	[RAID_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[CelerraServers]  WITH CHECK ADD  CONSTRAINT [CelerraServers_FK1] FOREIGN KEY([RAID_ID])
REFERENCES [dbo].[Raid] ([DEVICE_ID])
GO
ALTER TABLE [dbo].[CelerraServers] CHECK CONSTRAINT [CelerraServers_FK1]
GO
