USE [OpManagerDB]
GO
/****** Object:  Table [dbo].[NCMDisasterExecAudit]    Script Date: 6/29/2019 5:49:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NCMDisasterExecAudit](
	[AUDIT_ID] [bigint] NOT NULL,
	[TYPE] [varchar](15) NOT NULL,
	[EXECUTION_TYPE] [varchar](15) NOT NULL,
	[START_TIME] [datetime] NOT NULL,
	[END_TIME] [datetime] NOT NULL,
	[STATUS] [varchar](15) NOT NULL,
	[ANNOTATION] [varchar](250) NOT NULL,
	[LOGIN_NAME] [varchar](100) NOT NULL,
 CONSTRAINT [NCMDisasterExecAudit_PK] PRIMARY KEY CLUSTERED 
(
	[AUDIT_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[NCMDisasterExecAudit] ADD  DEFAULT ('No Description') FOR [ANNOTATION]
GO
ALTER TABLE [dbo].[NCMDisasterExecAudit] ADD  DEFAULT ('Not Available') FOR [LOGIN_NAME]
GO
