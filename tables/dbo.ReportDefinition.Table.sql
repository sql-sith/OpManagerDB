USE [OpManagerDB]
GO
/****** Object:  Table [dbo].[ReportDefinition]    Script Date: 6/29/2019 5:50:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ReportDefinition](
	[ID] [bigint] NOT NULL,
	[NAME] [varchar](100) NOT NULL,
	[DESCRIPTION] [varchar](200) NOT NULL,
	[TYPE] [bigint] NULL,
	[DATASOURCE] [bigint] NOT NULL,
	[TIMEBASED] [bit] NOT NULL,
	[RANGEBASED] [bit] NOT NULL,
 CONSTRAINT [ReportDefinition_PK] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY],
 CONSTRAINT [ReportDefinition_UK0] UNIQUE NONCLUSTERED 
(
	[NAME] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Index [IDX_81116564]    Script Date: 6/29/2019 5:53:30 PM ******/
CREATE NONCLUSTERED INDEX [IDX_81116564] ON [dbo].[ReportDefinition]
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IDX_81116565]    Script Date: 6/29/2019 5:53:30 PM ******/
CREATE NONCLUSTERED INDEX [IDX_81116565] ON [dbo].[ReportDefinition]
(
	[TYPE] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IDX_81116566]    Script Date: 6/29/2019 5:53:30 PM ******/
CREATE NONCLUSTERED INDEX [IDX_81116566] ON [dbo].[ReportDefinition]
(
	[DATASOURCE] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[ReportDefinition]  WITH CHECK ADD  CONSTRAINT [ReportDefinition_FK1] FOREIGN KEY([ID])
REFERENCES [dbo].[ReportWidgetID] ([ID])
GO
ALTER TABLE [dbo].[ReportDefinition] CHECK CONSTRAINT [ReportDefinition_FK1]
GO
ALTER TABLE [dbo].[ReportDefinition]  WITH CHECK ADD  CONSTRAINT [ReportDefinition_FK2] FOREIGN KEY([TYPE])
REFERENCES [dbo].[ReportType] ([ID])
GO
ALTER TABLE [dbo].[ReportDefinition] CHECK CONSTRAINT [ReportDefinition_FK2]
GO
ALTER TABLE [dbo].[ReportDefinition]  WITH CHECK ADD  CONSTRAINT [ReportDefinition_FK3] FOREIGN KEY([DATASOURCE])
REFERENCES [dbo].[ReportDataSource] ([ID])
GO
ALTER TABLE [dbo].[ReportDefinition] CHECK CONSTRAINT [ReportDefinition_FK3]
GO
