USE [OpManagerDB]
GO
/****** Object:  Table [dbo].[ExchangeServiceRuleList]    Script Date: 6/29/2019 5:47:35 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ExchangeServiceRuleList](
	[ID] [bigint] NOT NULL,
	[CRITERIAID] [bigint] NOT NULL,
	[RULEID] [bigint] NOT NULL,
 CONSTRAINT [ExchangeServiceRuleList_PK1] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Index [IDX_38540313]    Script Date: 6/29/2019 5:53:30 PM ******/
CREATE NONCLUSTERED INDEX [IDX_38540313] ON [dbo].[ExchangeServiceRuleList]
(
	[CRITERIAID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[ExchangeServiceRuleList]  WITH CHECK ADD  CONSTRAINT [ExchangeServiceRuleList_FK1] FOREIGN KEY([CRITERIAID])
REFERENCES [dbo].[ProfileCriteria] ([CRITERIAID])
GO
ALTER TABLE [dbo].[ExchangeServiceRuleList] CHECK CONSTRAINT [ExchangeServiceRuleList_FK1]
GO
