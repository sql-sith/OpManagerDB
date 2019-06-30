USE [OpManagerDB]
GO
/****** Object:  Table [dbo].[ReportProfileDetails]    Script Date: 6/29/2019 5:50:57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ReportProfileDetails](
	[PROFILE_ID] [bigint] NOT NULL,
	[PROFILE_NAME] [varbinary](max) NOT NULL,
	[TIMEPERIOD] [int] NOT NULL,
	[REPORT_START_TIME] [varchar](100) NULL,
	[REPORT_END_TIME] [varchar](100) NULL,
	[REPORT_WEEK_DAY] [int] NULL,
	[ROUTER_ID] [int] NULL,
	[PROFILE_TYPE] [varchar](100) NOT NULL,
 CONSTRAINT [ReportProfileDetails_PK] PRIMARY KEY CLUSTERED 
(
	[PROFILE_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Index [IDX_390574967]    Script Date: 6/29/2019 5:53:30 PM ******/
CREATE NONCLUSTERED INDEX [IDX_390574967] ON [dbo].[ReportProfileDetails]
(
	[ROUTER_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[ReportProfileDetails]  WITH CHECK ADD  CONSTRAINT [ReportProfileDetails_FK] FOREIGN KEY([ROUTER_ID])
REFERENCES [dbo].[NetFlow_Router] ([ROUTER_ID])
GO
ALTER TABLE [dbo].[ReportProfileDetails] CHECK CONSTRAINT [ReportProfileDetails_FK]
GO
