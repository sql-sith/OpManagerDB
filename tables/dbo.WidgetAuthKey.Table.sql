USE [OpManagerDB]
GO
/****** Object:  Table [dbo].[WidgetAuthKey]    Script Date: 6/29/2019 5:53:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[WidgetAuthKey](
	[WIDGETID] [bigint] NOT NULL,
	[AUTHKEY] [varchar](50) NOT NULL,
 CONSTRAINT [WidgetAuthKey_PK1] PRIMARY KEY CLUSTERED 
(
	[WIDGETID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Index [IDX__2022613408]    Script Date: 6/29/2019 5:53:30 PM ******/
CREATE NONCLUSTERED INDEX [IDX__2022613408] ON [dbo].[WidgetAuthKey]
(
	[WIDGETID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[WidgetAuthKey]  WITH CHECK ADD  CONSTRAINT [WidgetAuthKey_FK1] FOREIGN KEY([WIDGETID])
REFERENCES [dbo].[ReportWidgetID] ([ID])
GO
ALTER TABLE [dbo].[WidgetAuthKey] CHECK CONSTRAINT [WidgetAuthKey_FK1]
GO
