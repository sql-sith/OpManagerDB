USE [OpManagerDB]
GO
/****** Object:  Table [dbo].[ScheduledReportRelation]    Script Date: 6/29/2019 5:51:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ScheduledReportRelation](
	[ID] [bigint] NOT NULL,
	[REPORT_ID] [bigint] NOT NULL,
	[SC_REPORT_ID] [bigint] NOT NULL,
 CONSTRAINT [ScheduledReportRelation_PK] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Index [IDX__17184245]    Script Date: 6/29/2019 5:53:30 PM ******/
CREATE NONCLUSTERED INDEX [IDX__17184245] ON [dbo].[ScheduledReportRelation]
(
	[SC_REPORT_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IDX__17184246]    Script Date: 6/29/2019 5:53:30 PM ******/
CREATE NONCLUSTERED INDEX [IDX__17184246] ON [dbo].[ScheduledReportRelation]
(
	[REPORT_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[ScheduledReportRelation]  WITH CHECK ADD  CONSTRAINT [ScheduledReportRelation_FK1] FOREIGN KEY([REPORT_ID])
REFERENCES [dbo].[CustomQuery] ([REPORT_ID])
GO
ALTER TABLE [dbo].[ScheduledReportRelation] CHECK CONSTRAINT [ScheduledReportRelation_FK1]
GO
ALTER TABLE [dbo].[ScheduledReportRelation]  WITH CHECK ADD  CONSTRAINT [ScheduledReportRelation_FK2] FOREIGN KEY([SC_REPORT_ID])
REFERENCES [dbo].[ScheduledReportSettings] ([SC_REPORT_ID])
GO
ALTER TABLE [dbo].[ScheduledReportRelation] CHECK CONSTRAINT [ScheduledReportRelation_FK2]
GO
