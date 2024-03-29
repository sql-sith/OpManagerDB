USE [OpManagerDB]
GO
/****** Object:  Table [dbo].[FWAAToResources]    Script Date: 6/29/2019 5:47:52 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FWAAToResources](
	[RID] [bigint] NOT NULL,
	[FAA_ID] [bigint] NOT NULL,
 CONSTRAINT [FWAAToResources_PK] PRIMARY KEY CLUSTERED 
(
	[RID] ASC,
	[FAA_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Index [IDX__1584323769]    Script Date: 6/29/2019 5:53:30 PM ******/
CREATE NONCLUSTERED INDEX [IDX__1584323769] ON [dbo].[FWAAToResources]
(
	[FAA_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IDX__1584323770]    Script Date: 6/29/2019 5:53:30 PM ******/
CREATE NONCLUSTERED INDEX [IDX__1584323770] ON [dbo].[FWAAToResources]
(
	[RID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[FWAAToResources]  WITH CHECK ADD  CONSTRAINT [FWAAToResources_FK1] FOREIGN KEY([RID])
REFERENCES [dbo].[Resources] ([RESOURCEID])
GO
ALTER TABLE [dbo].[FWAAToResources] CHECK CONSTRAINT [FWAAToResources_FK1]
GO
ALTER TABLE [dbo].[FWAAToResources]  WITH CHECK ADD  CONSTRAINT [FWAAToResources_FK2] FOREIGN KEY([FAA_ID])
REFERENCES [dbo].[FWAvailabilityAlert] ([FAA_ID])
GO
ALTER TABLE [dbo].[FWAAToResources] CHECK CONSTRAINT [FWAAToResources_FK2]
GO
