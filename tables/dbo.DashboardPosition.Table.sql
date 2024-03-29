USE [OpManagerDB]
GO
/****** Object:  Table [dbo].[DashboardPosition]    Script Date: 6/29/2019 5:46:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DashboardPosition](
	[ID] [bigint] NOT NULL,
	[DASH_PROP_ID] [bigint] NOT NULL,
	[ROW_POSITION] [int] NOT NULL,
	[COLUMN_POSITION] [int] NOT NULL,
	[WIDTH] [int] NOT NULL,
	[HEIGHT] [int] NOT NULL,
	[WIDGET_TYPE] [varchar](50) NOT NULL,
	[ASSOCIATIONID] [bigint] NOT NULL,
 CONSTRAINT [DashboardPosition_PK] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Index [IDX__487297909]    Script Date: 6/29/2019 5:53:30 PM ******/
CREATE NONCLUSTERED INDEX [IDX__487297909] ON [dbo].[DashboardPosition]
(
	[ASSOCIATIONID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IDX__487297910]    Script Date: 6/29/2019 5:53:30 PM ******/
CREATE NONCLUSTERED INDEX [IDX__487297910] ON [dbo].[DashboardPosition]
(
	[DASH_PROP_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[DashboardPosition]  WITH CHECK ADD  CONSTRAINT [DashboardPosition_FK1] FOREIGN KEY([DASH_PROP_ID])
REFERENCES [dbo].[DashboardProperties] ([DASH_PROP_ID])
GO
ALTER TABLE [dbo].[DashboardPosition] CHECK CONSTRAINT [DashboardPosition_FK1]
GO
ALTER TABLE [dbo].[DashboardPosition]  WITH CHECK ADD  CONSTRAINT [DashboardPosition_FK2] FOREIGN KEY([ASSOCIATIONID])
REFERENCES [dbo].[WidgetAssociation] ([ASSOCIATIONID])
GO
ALTER TABLE [dbo].[DashboardPosition] CHECK CONSTRAINT [DashboardPosition_FK2]
GO
