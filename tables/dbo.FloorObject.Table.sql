USE [OpManagerDB]
GO
/****** Object:  Table [dbo].[FloorObject]    Script Date: 6/29/2019 5:47:48 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FloorObject](
	[MOID] [bigint] NOT NULL,
	[NAME] [varchar](250) NOT NULL,
	[FLOORLENGTH] [int] NOT NULL,
	[FLOORWIDTH] [int] NOT NULL,
	[COLOR] [varchar](10) NOT NULL,
	[TILECOLOR] [varchar](10) NOT NULL,
	[TILELENGTH] [int] NOT NULL,
	[TILEWIDTH] [int] NOT NULL,
 CONSTRAINT [FloorObject_PK] PRIMARY KEY CLUSTERED 
(
	[MOID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY],
 CONSTRAINT [FloorObject_UK0] UNIQUE NONCLUSTERED 
(
	[NAME] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Index [IDX__1599388648]    Script Date: 6/29/2019 5:53:30 PM ******/
CREATE NONCLUSTERED INDEX [IDX__1599388648] ON [dbo].[FloorObject]
(
	[MOID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[FloorObject] ADD  DEFAULT ('360') FOR [FLOORLENGTH]
GO
ALTER TABLE [dbo].[FloorObject] ADD  DEFAULT ('360') FOR [FLOORWIDTH]
GO
ALTER TABLE [dbo].[FloorObject] ADD  DEFAULT ('0xFFFFFF') FOR [COLOR]
GO
ALTER TABLE [dbo].[FloorObject] ADD  DEFAULT ('0x003856') FOR [TILECOLOR]
GO
ALTER TABLE [dbo].[FloorObject] ADD  DEFAULT ('30') FOR [TILELENGTH]
GO
ALTER TABLE [dbo].[FloorObject] ADD  DEFAULT ('30') FOR [TILEWIDTH]
GO
ALTER TABLE [dbo].[FloorObject]  WITH CHECK ADD  CONSTRAINT [FloorObject_FK1] FOREIGN KEY([MOID])
REFERENCES [dbo].[MANAGEDOBJECTID] ([MOID])
GO
ALTER TABLE [dbo].[FloorObject] CHECK CONSTRAINT [FloorObject_FK1]
GO
