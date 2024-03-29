USE [OpManagerDB]
GO
/****** Object:  Table [dbo].[SANPort]    Script Date: 6/29/2019 5:51:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SANPort](
	[RAID_ID] [bigint] NOT NULL,
	[PORT_ID] [bigint] NOT NULL,
	[ID] [varchar](250) NOT NULL,
	[NAME] [varchar](250) NULL,
	[PARENTNAME] [varchar](250) NULL,
	[STATUS] [varchar](250) NULL,
	[TYPE] [varchar](250) NULL,
	[SPEED] [varchar](250) NULL,
	[WWN] [varchar](250) NULL,
 CONSTRAINT [SANPort_PK] PRIMARY KEY CLUSTERED 
(
	[RAID_ID] ASC,
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Index [IDX__1460759761]    Script Date: 6/29/2019 5:53:30 PM ******/
CREATE NONCLUSTERED INDEX [IDX__1460759761] ON [dbo].[SANPort]
(
	[PORT_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IDX__1460759762]    Script Date: 6/29/2019 5:53:30 PM ******/
CREATE NONCLUSTERED INDEX [IDX__1460759762] ON [dbo].[SANPort]
(
	[RAID_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[SANPort] ADD  DEFAULT ('0') FOR [ID]
GO
ALTER TABLE [dbo].[SANPort]  WITH CHECK ADD  CONSTRAINT [SANPort_FK1] FOREIGN KEY([RAID_ID])
REFERENCES [dbo].[Raid] ([DEVICE_ID])
GO
ALTER TABLE [dbo].[SANPort] CHECK CONSTRAINT [SANPort_FK1]
GO
ALTER TABLE [dbo].[SANPort]  WITH CHECK ADD  CONSTRAINT [SANPort_FK2] FOREIGN KEY([PORT_ID])
REFERENCES [dbo].[SanManagedObject] ([DEVICE_ID])
GO
ALTER TABLE [dbo].[SANPort] CHECK CONSTRAINT [SANPort_FK2]
GO
