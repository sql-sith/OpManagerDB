USE [OpManagerDB]
GO
/****** Object:  Table [dbo].[WidgetMOIDDetails]    Script Date: 6/29/2019 5:53:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[WidgetMOIDDetails](
	[ID] [bigint] NOT NULL,
	[MOID] [bigint] NOT NULL,
 CONSTRAINT [WidgetMOIDDetails_PK] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Index [IDX_1929282350]    Script Date: 6/29/2019 5:53:30 PM ******/
CREATE NONCLUSTERED INDEX [IDX_1929282350] ON [dbo].[WidgetMOIDDetails]
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IDX_1929282351]    Script Date: 6/29/2019 5:53:30 PM ******/
CREATE NONCLUSTERED INDEX [IDX_1929282351] ON [dbo].[WidgetMOIDDetails]
(
	[MOID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[WidgetMOIDDetails]  WITH CHECK ADD  CONSTRAINT [WidgetMOIDDetails_FK1] FOREIGN KEY([ID])
REFERENCES [dbo].[ReportWidgetID] ([ID])
GO
ALTER TABLE [dbo].[WidgetMOIDDetails] CHECK CONSTRAINT [WidgetMOIDDetails_FK1]
GO
ALTER TABLE [dbo].[WidgetMOIDDetails]  WITH CHECK ADD  CONSTRAINT [WidgetMOIDDetails_FK2] FOREIGN KEY([MOID])
REFERENCES [dbo].[MANAGEDOBJECTID] ([MOID])
GO
ALTER TABLE [dbo].[WidgetMOIDDetails] CHECK CONSTRAINT [WidgetMOIDDetails_FK2]
GO
