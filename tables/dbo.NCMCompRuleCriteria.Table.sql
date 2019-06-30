USE [OpManagerDB]
GO
/****** Object:  Table [dbo].[NCMCompRuleCriteria]    Script Date: 6/29/2019 5:49:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NCMCompRuleCriteria](
	[COMPRULE_ID] [bigint] NOT NULL,
	[SEQUENCE_NO] [int] NOT NULL,
	[OPERATOR] [varchar](10) NOT NULL,
	[CONDITION] [int] NOT NULL,
	[PATTERN] [varchar](4000) NOT NULL,
	[ALLOWED_COUNT] [varchar](5) NOT NULL,
 CONSTRAINT [NCMCompRuleCriteria_PK] PRIMARY KEY CLUSTERED 
(
	[COMPRULE_ID] ASC,
	[SEQUENCE_NO] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Index [IDX_227553999]    Script Date: 6/29/2019 5:53:30 PM ******/
CREATE NONCLUSTERED INDEX [IDX_227553999] ON [dbo].[NCMCompRuleCriteria]
(
	[COMPRULE_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[NCMCompRuleCriteria] ADD  DEFAULT ('NA') FOR [OPERATOR]
GO
ALTER TABLE [dbo].[NCMCompRuleCriteria] ADD  DEFAULT ('0') FOR [ALLOWED_COUNT]
GO
ALTER TABLE [dbo].[NCMCompRuleCriteria]  WITH CHECK ADD  CONSTRAINT [NCMCompRuleCriteria_FK1] FOREIGN KEY([COMPRULE_ID])
REFERENCES [dbo].[NCMComplianceRule] ([COMPRULE_ID])
GO
ALTER TABLE [dbo].[NCMCompRuleCriteria] CHECK CONSTRAINT [NCMCompRuleCriteria_FK1]
GO
