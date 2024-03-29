USE [OpManagerDB]
GO
/****** Object:  Table [dbo].[ThresholdRuleList]    Script Date: 6/29/2019 5:52:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ThresholdRuleList](
	[ID] [bigint] NOT NULL,
	[CRITERIAID] [bigint] NOT NULL,
	[POLLEDDATA] [varchar](250) NOT NULL,
 CONSTRAINT [ThresholdRuleList_PK1] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Index [IDX_256700402]    Script Date: 6/29/2019 5:53:30 PM ******/
CREATE NONCLUSTERED INDEX [IDX_256700402] ON [dbo].[ThresholdRuleList]
(
	[CRITERIAID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[ThresholdRuleList]  WITH CHECK ADD  CONSTRAINT [ThresholdRuleList_FK1] FOREIGN KEY([CRITERIAID])
REFERENCES [dbo].[ProfileCriteria] ([CRITERIAID])
GO
ALTER TABLE [dbo].[ThresholdRuleList] CHECK CONSTRAINT [ThresholdRuleList_FK1]
GO
