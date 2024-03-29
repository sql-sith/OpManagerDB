USE [OpManagerDB]
GO
/****** Object:  Table [dbo].[WidgetAssociation]    Script Date: 6/29/2019 5:53:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[WidgetAssociation](
	[ASSOCIATIONID] [bigint] NOT NULL,
	[DASHBOARDID] [bigint] NOT NULL,
	[WIDGETID] [bigint] NOT NULL,
	[NAME] [varchar](200) NOT NULL,
	[DESCRIPTION] [varchar](300) NOT NULL,
 CONSTRAINT [WidgetAssociation_PK] PRIMARY KEY CLUSTERED 
(
	[ASSOCIATIONID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Index [IDX__24293300]    Script Date: 6/29/2019 5:53:30 PM ******/
CREATE NONCLUSTERED INDEX [IDX__24293300] ON [dbo].[WidgetAssociation]
(
	[DASHBOARDID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IDX__24293301]    Script Date: 6/29/2019 5:53:30 PM ******/
CREATE NONCLUSTERED INDEX [IDX__24293301] ON [dbo].[WidgetAssociation]
(
	[WIDGETID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IDX__24293302]    Script Date: 6/29/2019 5:53:30 PM ******/
CREATE NONCLUSTERED INDEX [IDX__24293302] ON [dbo].[WidgetAssociation]
(
	[ASSOCIATIONID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[WidgetAssociation]  WITH CHECK ADD  CONSTRAINT [WidgetAssociation_FK1] FOREIGN KEY([ASSOCIATIONID])
REFERENCES [dbo].[ReportWidgetID] ([ID])
GO
ALTER TABLE [dbo].[WidgetAssociation] CHECK CONSTRAINT [WidgetAssociation_FK1]
GO
ALTER TABLE [dbo].[WidgetAssociation]  WITH CHECK ADD  CONSTRAINT [WidgetAssociation_FK2] FOREIGN KEY([WIDGETID])
REFERENCES [dbo].[Widget] ([WIDGETID])
GO
ALTER TABLE [dbo].[WidgetAssociation] CHECK CONSTRAINT [WidgetAssociation_FK2]
GO
ALTER TABLE [dbo].[WidgetAssociation]  WITH CHECK ADD  CONSTRAINT [WidgetAssociation_FK3] FOREIGN KEY([DASHBOARDID])
REFERENCES [dbo].[Dashboard] ([DASHBOARDID])
GO
ALTER TABLE [dbo].[WidgetAssociation] CHECK CONSTRAINT [WidgetAssociation_FK3]
GO
