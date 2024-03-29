USE [OpManagerDB]
GO
/****** Object:  Table [dbo].[ScheduleReportTypeDetails]    Script Date: 6/29/2019 5:51:17 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ScheduleReportTypeDetails](
	[SCHEDULEID] [bigint] NOT NULL,
	[TimePeriod] [varchar](250) NOT NULL,
	[ReportType] [varchar](250) NOT NULL,
	[TIMEWINDOW] [varchar](50) NOT NULL,
 CONSTRAINT [ScheduleReportTypeDetails_PK1] PRIMARY KEY CLUSTERED 
(
	[SCHEDULEID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Index [IDX__343364155]    Script Date: 6/29/2019 5:53:30 PM ******/
CREATE NONCLUSTERED INDEX [IDX__343364155] ON [dbo].[ScheduleReportTypeDetails]
(
	[SCHEDULEID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[ScheduleReportTypeDetails] ADD  DEFAULT ('0-24') FOR [TIMEWINDOW]
GO
ALTER TABLE [dbo].[ScheduleReportTypeDetails]  WITH CHECK ADD  CONSTRAINT [ScheduleReportTyepeDetails_FK1] FOREIGN KEY([SCHEDULEID])
REFERENCES [dbo].[ScheduleReports] ([SCHEDULEID])
GO
ALTER TABLE [dbo].[ScheduleReportTypeDetails] CHECK CONSTRAINT [ScheduleReportTyepeDetails_FK1]
GO
