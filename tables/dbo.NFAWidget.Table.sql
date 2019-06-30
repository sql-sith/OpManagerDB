USE [OpManagerDB]
GO
/****** Object:  Table [dbo].[NFAWidget]    Script Date: 6/29/2019 5:49:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NFAWidget](
	[WIDGET_ID] [bigint] NOT NULL,
	[WIDGET_NAME] [varchar](200) NOT NULL,
	[WIDGETDESCRIPTION] [varchar](300) NOT NULL,
	[DATASOURCE_ID] [bigint] NOT NULL,
	[TYPEID] [bigint] NOT NULL,
 CONSTRAINT [NFAWidget_PK] PRIMARY KEY CLUSTERED 
(
	[WIDGET_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Index [IDX__115914246]    Script Date: 6/29/2019 5:53:30 PM ******/
CREATE NONCLUSTERED INDEX [IDX__115914246] ON [dbo].[NFAWidget]
(
	[TYPEID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IDX_1935923479]    Script Date: 6/29/2019 5:53:30 PM ******/
CREATE NONCLUSTERED INDEX [IDX_1935923479] ON [dbo].[NFAWidget]
(
	[DATASOURCE_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[NFAWidget]  WITH CHECK ADD  CONSTRAINT [NFAWidget_FK] FOREIGN KEY([DATASOURCE_ID])
REFERENCES [dbo].[NFAWidgetDataSource] ([DATASOURCE_ID])
GO
ALTER TABLE [dbo].[NFAWidget] CHECK CONSTRAINT [NFAWidget_FK]
GO
ALTER TABLE [dbo].[NFAWidget]  WITH CHECK ADD  CONSTRAINT [NFAWidget_FK1] FOREIGN KEY([TYPEID])
REFERENCES [dbo].[NFAWidgetType] ([TYPEID])
GO
ALTER TABLE [dbo].[NFAWidget] CHECK CONSTRAINT [NFAWidget_FK1]
GO
