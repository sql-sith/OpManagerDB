USE [OpManagerDB]
GO
/****** Object:  Table [dbo].[PolicyReportScheduleDetails]    Script Date: 6/29/2019 5:50:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PolicyReportScheduleDetails](
	[REPORTID] [bigint] NOT NULL,
	[REPORTNAME] [nvarchar](250) NOT NULL,
	[DISPLAYNAME] [nvarchar](250) NOT NULL,
	[POLICYNAME] [nvarchar](1000) NULL,
	[POLICYID] [nvarchar](2500) NULL,
	[RULE_CATEGORY] [nvarchar](100) NULL,
	[CRITERIA] [ntext] NULL,
	[CRITERIA_ORAL] [ntext] NULL,
	[EMAIL_ID] [nvarchar](150) NULL,
	[SCHEDULE_DETAILS] [nvarchar](250) NULL,
	[REPORT_TYPE] [nvarchar](10) NOT NULL,
	[CREATED_ON] [nvarchar](100) NULL,
	[LAST_GENERATED] [nvarchar](100) NULL,
	[COL_LIST] [nvarchar](4000) NULL,
	[STATUS] [bit] NULL,
	[ENABLE] [bit] NULL,
	[SHOW_RULE_SUMMARY] [nvarchar](10) NULL,
 CONSTRAINT [PolicyReportScheduleDetails_PK] PRIMARY KEY CLUSTERED 
(
	[REPORTID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Index [IDX__2001754721]    Script Date: 6/29/2019 5:53:30 PM ******/
CREATE NONCLUSTERED INDEX [IDX__2001754721] ON [dbo].[PolicyReportScheduleDetails]
(
	[REPORTID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[PolicyReportScheduleDetails]  WITH CHECK ADD  CONSTRAINT [PolicyReportScheduleDetails_FK] FOREIGN KEY([REPORTID])
REFERENCES [dbo].[ReportConfig] ([REPORTID])
GO
ALTER TABLE [dbo].[PolicyReportScheduleDetails] CHECK CONSTRAINT [PolicyReportScheduleDetails_FK]
GO
