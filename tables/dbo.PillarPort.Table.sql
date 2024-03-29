USE [OpManagerDB]
GO
/****** Object:  Table [dbo].[PillarPort]    Script Date: 6/29/2019 5:50:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PillarPort](
	[RAID_ID] [bigint] NOT NULL,
	[PORT_ID] [bigint] NOT NULL,
	[PILLAR_PORT_NAME] [varchar](250) NULL,
	[PILLAR_PORT_TYPE] [varchar](250) NULL,
 CONSTRAINT [PillarPort_PK] PRIMARY KEY CLUSTERED 
(
	[PORT_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Index [IDX_1041250488]    Script Date: 6/29/2019 5:53:30 PM ******/
CREATE NONCLUSTERED INDEX [IDX_1041250488] ON [dbo].[PillarPort]
(
	[PORT_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IDX_1041250489]    Script Date: 6/29/2019 5:53:30 PM ******/
CREATE NONCLUSTERED INDEX [IDX_1041250489] ON [dbo].[PillarPort]
(
	[RAID_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[PillarPort]  WITH CHECK ADD  CONSTRAINT [PillarPort_FK1] FOREIGN KEY([PORT_ID])
REFERENCES [dbo].[Port] ([DEVICE_ID])
GO
ALTER TABLE [dbo].[PillarPort] CHECK CONSTRAINT [PillarPort_FK1]
GO
ALTER TABLE [dbo].[PillarPort]  WITH CHECK ADD  CONSTRAINT [PillarPort_FK2] FOREIGN KEY([RAID_ID])
REFERENCES [dbo].[Raid] ([DEVICE_ID])
GO
ALTER TABLE [dbo].[PillarPort] CHECK CONSTRAINT [PillarPort_FK2]
GO
