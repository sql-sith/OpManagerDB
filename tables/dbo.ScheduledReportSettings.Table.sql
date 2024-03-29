USE [OpManagerDB]
GO
/****** Object:  Table [dbo].[ScheduledReportSettings]    Script Date: 6/29/2019 5:51:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ScheduledReportSettings](
	[SC_REPORT_ID] [bigint] NOT NULL,
	[TOOL_ID] [varchar](30) NOT NULL,
	[REPORTNAME] [varchar](150) NULL,
	[CREATED_TIME] [datetime] NOT NULL,
	[REPORTFORMAT] [int] NOT NULL,
	[DELIVERYFORMAT] [int] NOT NULL,
	[ATTACHMENT_SIZE] [int] NOT NULL,
	[SIZE_FLAG] [bit] NOT NULL,
	[EMAIL_ADDRESS] [varchar](250) NULL,
	[SUBJECT] [varchar](100) NULL,
	[CONTENT] [varchar](1000) NULL,
 CONSTRAINT [ScheduledReportSettings_PK] PRIMARY KEY CLUSTERED 
(
	[SC_REPORT_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[ScheduledReportSettings] ADD  DEFAULT ('1') FOR [REPORTFORMAT]
GO
ALTER TABLE [dbo].[ScheduledReportSettings] ADD  DEFAULT ('1') FOR [DELIVERYFORMAT]
GO
ALTER TABLE [dbo].[ScheduledReportSettings] ADD  DEFAULT ('0') FOR [ATTACHMENT_SIZE]
GO
ALTER TABLE [dbo].[ScheduledReportSettings] ADD  DEFAULT ((0)) FOR [SIZE_FLAG]
GO
