USE [OpManagerDB]
GO
/****** Object:  Table [dbo].[NCMComplianceRule]    Script Date: 6/29/2019 5:49:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NCMComplianceRule](
	[COMPRULE_ID] [bigint] NOT NULL,
	[COMPRULE_NAME] [varchar](100) NOT NULL,
	[DESCRIPTION] [varchar](250) NOT NULL,
	[CRITERIA_TYPE] [varchar](25) NOT NULL,
	[VIOLATION_SEVERITY] [varchar](30) NOT NULL,
	[REMEDIATION_TEMPLATE_ID] [int] NOT NULL,
	[REMEDIATION_DESCR] [varchar](256) NOT NULL,
	[CREATED_BY] [varchar](50) NOT NULL,
	[LAST_MODIFIED_BY] [varchar](50) NOT NULL,
	[MARKED_FOR_DELETE] [bit] NOT NULL,
	[BLOCK_START] [varchar](200) NULL,
	[BLOCK_END] [varchar](200) NULL,
	[BLOCK_CONDITION] [varchar](20) NOT NULL,
	[BLOCK_COND_VALUE] [varchar](250) NULL,
 CONSTRAINT [NCMComplianceRule_PK] PRIMARY KEY CLUSTERED 
(
	[COMPRULE_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[NCMComplianceRule] ADD  DEFAULT ('NO_DESCRIPTION_AVAILABLE') FOR [DESCRIPTION]
GO
ALTER TABLE [dbo].[NCMComplianceRule] ADD  DEFAULT ('0') FOR [REMEDIATION_TEMPLATE_ID]
GO
ALTER TABLE [dbo].[NCMComplianceRule] ADD  DEFAULT ((0)) FOR [MARKED_FOR_DELETE]
GO
ALTER TABLE [dbo].[NCMComplianceRule] ADD  DEFAULT ('NONE') FOR [BLOCK_CONDITION]
GO
