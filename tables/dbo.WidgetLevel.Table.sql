USE [OpManagerDB]
GO
/****** Object:  Table [dbo].[WidgetLevel]    Script Date: 6/29/2019 5:53:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[WidgetLevel](
	[ASSOCIATIONID] [bigint] NOT NULL,
	[LEVEL] [int] NOT NULL,
 CONSTRAINT [WidgetLevel_PK] PRIMARY KEY CLUSTERED 
(
	[ASSOCIATIONID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Index [IDX__177126707]    Script Date: 6/29/2019 5:53:30 PM ******/
CREATE NONCLUSTERED INDEX [IDX__177126707] ON [dbo].[WidgetLevel]
(
	[ASSOCIATIONID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[WidgetLevel]  WITH CHECK ADD  CONSTRAINT [WidgetLevel_FK1] FOREIGN KEY([ASSOCIATIONID])
REFERENCES [dbo].[WidgetAssociation] ([ASSOCIATIONID])
GO
ALTER TABLE [dbo].[WidgetLevel] CHECK CONSTRAINT [WidgetLevel_FK1]
GO
