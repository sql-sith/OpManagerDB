USE [OpManagerDB]
GO
/****** Object:  Table [dbo].[ComplianceDashboardInfo]    Script Date: 6/29/2019 5:46:43 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ComplianceDashboardInfo](
	[COM_DASH_ID] [bigint] NOT NULL,
	[RID] [bigint] NOT NULL,
	[VERSION_NO] [nvarchar](20) NOT NULL,
	[LAST_GENERATED] [nvarchar](100) NOT NULL,
	[COMPLIANT_PERCENTAGE] [nvarchar](20) NOT NULL,
	[TOTAL_COUNT] [nvarchar](50) NOT NULL,
	[PASS_COUNT] [nvarchar](50) NOT NULL,
	[FAILED_COUNT] [nvarchar](50) NOT NULL,
	[USERCALL_COUNT] [nvarchar](50) NOT NULL,
	[COMPLIANCE_TYPE] [nvarchar](50) NOT NULL,
	[COMPLIANT_DESCRIPTION] [nvarchar](1000) NOT NULL,
 CONSTRAINT [ComplianceDashboardInfo_PK] PRIMARY KEY CLUSTERED 
(
	[RID] ASC,
	[COMPLIANCE_TYPE] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY],
 CONSTRAINT [ComplianceDashboardInfo_UK0] UNIQUE NONCLUSTERED 
(
	[COM_DASH_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Index [IDX_1252457245]    Script Date: 6/29/2019 5:53:29 PM ******/
CREATE NONCLUSTERED INDEX [IDX_1252457245] ON [dbo].[ComplianceDashboardInfo]
(
	[RID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[ComplianceDashboardInfo]  WITH CHECK ADD  CONSTRAINT [ComplianceDashboardInfo_FK] FOREIGN KEY([RID])
REFERENCES [dbo].[Resources] ([RESOURCEID])
GO
ALTER TABLE [dbo].[ComplianceDashboardInfo] CHECK CONSTRAINT [ComplianceDashboardInfo_FK]
GO
