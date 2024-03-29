USE [OpManagerDB]
GO
/****** Object:  Table [dbo].[ProfileToFilterMap]    Script Date: 6/29/2019 5:50:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProfileToFilterMap](
	[PROFILE_ID] [bigint] NOT NULL,
	[FILTER_ID] [bigint] NOT NULL,
 CONSTRAINT [ProfileToFilterMap_PKZ] PRIMARY KEY CLUSTERED 
(
	[PROFILE_ID] ASC,
	[FILTER_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Index [IDX_1290224676]    Script Date: 6/29/2019 5:53:30 PM ******/
CREATE NONCLUSTERED INDEX [IDX_1290224676] ON [dbo].[ProfileToFilterMap]
(
	[PROFILE_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IDX_1342259341]    Script Date: 6/29/2019 5:53:30 PM ******/
CREATE NONCLUSTERED INDEX [IDX_1342259341] ON [dbo].[ProfileToFilterMap]
(
	[FILTER_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[ProfileToFilterMap]  WITH CHECK ADD  CONSTRAINT [ProfileToFilterMap_FK] FOREIGN KEY([PROFILE_ID])
REFERENCES [dbo].[ReportProfileDetails] ([PROFILE_ID])
GO
ALTER TABLE [dbo].[ProfileToFilterMap] CHECK CONSTRAINT [ProfileToFilterMap_FK]
GO
ALTER TABLE [dbo].[ProfileToFilterMap]  WITH CHECK ADD  CONSTRAINT [ProfileToFilterMap_FK1] FOREIGN KEY([FILTER_ID])
REFERENCES [dbo].[FilterDetails] ([FILTER_ID])
GO
ALTER TABLE [dbo].[ProfileToFilterMap] CHECK CONSTRAINT [ProfileToFilterMap_FK1]
GO
