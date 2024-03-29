USE [OpManagerDB]
GO
/****** Object:  Table [dbo].[LAAlertAudit]    Script Date: 6/29/2019 5:48:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LAAlertAudit](
	[AUDIT_ID] [bigint] NOT NULL,
	[NF_ID] [bigint] NOT NULL,
	[NOTIFIEDTIME] [bigint] NULL,
	[TYPE] [nvarchar](20) NOT NULL,
	[SOURCE] [nvarchar](50) NULL,
	[STATUS] [int] NOT NULL,
	[CRITICALITY] [nvarchar](20) NULL,
	[ERROR_DETAILS] [nvarchar](4000) NULL,
	[RECORD_COLUMN] [nvarchar](40) NULL,
	[RECORD_ID] [bigint] NULL,
	[OWNERNAME] [nvarchar](40) NOT NULL,
 CONSTRAINT [LAAlertAudit_PK] PRIMARY KEY CLUSTERED 
(
	[AUDIT_ID] ASC,
	[NF_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[LAAlertAudit] ADD  DEFAULT ('0') FOR [STATUS]
GO
ALTER TABLE [dbo].[LAAlertAudit] ADD  DEFAULT ('-') FOR [OWNERNAME]
GO
