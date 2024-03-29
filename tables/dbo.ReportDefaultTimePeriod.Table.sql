USE [OpManagerDB]
GO
/****** Object:  Table [dbo].[ReportDefaultTimePeriod]    Script Date: 6/29/2019 5:50:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ReportDefaultTimePeriod](
	[REPORTID] [bigint] NOT NULL,
	[TIMEPERIOD] [varchar](50) NOT NULL,
	[TIMEWINDOW] [varchar](50) NOT NULL,
 CONSTRAINT [ReportDefaultTimePeriod_PK] PRIMARY KEY CLUSTERED 
(
	[REPORTID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Index [IDX__1718630680]    Script Date: 6/29/2019 5:53:30 PM ******/
CREATE NONCLUSTERED INDEX [IDX__1718630680] ON [dbo].[ReportDefaultTimePeriod]
(
	[REPORTID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[ReportDefaultTimePeriod] ADD  DEFAULT ('twfourhours') FOR [TIMEPERIOD]
GO
ALTER TABLE [dbo].[ReportDefaultTimePeriod] ADD  DEFAULT ('0-24') FOR [TIMEWINDOW]
GO
ALTER TABLE [dbo].[ReportDefaultTimePeriod]  WITH CHECK ADD  CONSTRAINT [ReportDefaultTimePeriod_FK1] FOREIGN KEY([REPORTID])
REFERENCES [dbo].[ReportWidgetID] ([ID])
GO
ALTER TABLE [dbo].[ReportDefaultTimePeriod] CHECK CONSTRAINT [ReportDefaultTimePeriod_FK1]
GO
