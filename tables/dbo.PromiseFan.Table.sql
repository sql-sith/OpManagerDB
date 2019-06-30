USE [OpManagerDB]
GO
/****** Object:  Table [dbo].[PromiseFan]    Script Date: 6/29/2019 5:50:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PromiseFan](
	[RAID_ID] [bigint] NOT NULL,
	[ENCLOSURE_ID] [int] NOT NULL,
	[FAN_ID] [int] NOT NULL,
	[TYPE] [varchar](250) NOT NULL,
	[OPERATIONAL_STATUS] [varchar](250) NOT NULL,
	[SPEED] [int] NOT NULL,
 CONSTRAINT [PromiseFan_PK] PRIMARY KEY CLUSTERED 
(
	[RAID_ID] ASC,
	[ENCLOSURE_ID] ASC,
	[FAN_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Index [IDX_1920421734]    Script Date: 6/29/2019 5:53:30 PM ******/
CREATE NONCLUSTERED INDEX [IDX_1920421734] ON [dbo].[PromiseFan]
(
	[RAID_ID] ASC,
	[ENCLOSURE_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[PromiseFan]  WITH CHECK ADD  CONSTRAINT [PromiseFan_FK2] FOREIGN KEY([RAID_ID], [ENCLOSURE_ID])
REFERENCES [dbo].[PromiseEnclosure] ([RAID_ID], [ENCLOSURE_ID])
GO
ALTER TABLE [dbo].[PromiseFan] CHECK CONSTRAINT [PromiseFan_FK2]
GO
