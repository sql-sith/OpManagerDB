USE [OpManagerDB]
GO
/****** Object:  Table [dbo].[DefaultFavouriteReports]    Script Date: 6/29/2019 5:47:02 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DefaultFavouriteReports](
	[ID] [bigint] NOT NULL,
 CONSTRAINT [DefaultFavouriteReports_PK] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Index [IDX__2067131164]    Script Date: 6/29/2019 5:53:30 PM ******/
CREATE NONCLUSTERED INDEX [IDX__2067131164] ON [dbo].[DefaultFavouriteReports]
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[DefaultFavouriteReports]  WITH CHECK ADD  CONSTRAINT [DefaultFavouriteReports_FK1] FOREIGN KEY([ID])
REFERENCES [dbo].[ReportWidgetID] ([ID])
GO
ALTER TABLE [dbo].[DefaultFavouriteReports] CHECK CONSTRAINT [DefaultFavouriteReports_FK1]
GO
