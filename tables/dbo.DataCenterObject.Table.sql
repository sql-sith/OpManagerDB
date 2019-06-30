USE [OpManagerDB]
GO
/****** Object:  Table [dbo].[DataCenterObject]    Script Date: 6/29/2019 5:46:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DataCenterObject](
	[MOID] [bigint] NOT NULL,
	[NAME] [varchar](250) NOT NULL,
	[POWERCAPACITY] [bigint] NOT NULL,
	[TEMPERATURECAPACITY] [bigint] NOT NULL,
	[UNMANAGEEQPOWER] [bigint] NOT NULL,
 CONSTRAINT [DataCenterObject_PK] PRIMARY KEY CLUSTERED 
(
	[MOID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY],
 CONSTRAINT [DataCenterObject_UK0] UNIQUE NONCLUSTERED 
(
	[NAME] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Index [IDX__1043857109]    Script Date: 6/29/2019 5:53:30 PM ******/
CREATE NONCLUSTERED INDEX [IDX__1043857109] ON [dbo].[DataCenterObject]
(
	[MOID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[DataCenterObject] ADD  DEFAULT ('-1') FOR [POWERCAPACITY]
GO
ALTER TABLE [dbo].[DataCenterObject] ADD  DEFAULT ('-1') FOR [TEMPERATURECAPACITY]
GO
ALTER TABLE [dbo].[DataCenterObject] ADD  DEFAULT ('-1') FOR [UNMANAGEEQPOWER]
GO
ALTER TABLE [dbo].[DataCenterObject]  WITH CHECK ADD  CONSTRAINT [DataCenterObject_FK1] FOREIGN KEY([MOID])
REFERENCES [dbo].[MANAGEDOBJECTID] ([MOID])
GO
ALTER TABLE [dbo].[DataCenterObject] CHECK CONSTRAINT [DataCenterObject_FK1]
GO
