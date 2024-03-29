USE [OpManagerDB]
GO
/****** Object:  Table [dbo].[WidgetThresholdDetails]    Script Date: 6/29/2019 5:53:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[WidgetThresholdDetails](
	[ID] [bigint] NOT NULL,
	[THRESHOLDTYPE] [int] NOT NULL,
	[THRESHOLDVALUE] [real] NOT NULL,
 CONSTRAINT [WidgetThresholdDetails_PK] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Index [IDX_627180456]    Script Date: 6/29/2019 5:53:30 PM ******/
CREATE NONCLUSTERED INDEX [IDX_627180456] ON [dbo].[WidgetThresholdDetails]
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[WidgetThresholdDetails]  WITH CHECK ADD  CONSTRAINT [WidgetThresholdDetails_FK1] FOREIGN KEY([ID])
REFERENCES [dbo].[ReportWidgetID] ([ID])
GO
ALTER TABLE [dbo].[WidgetThresholdDetails] CHECK CONSTRAINT [WidgetThresholdDetails_FK1]
GO
