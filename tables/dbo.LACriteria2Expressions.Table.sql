USE [OpManagerDB]
GO
/****** Object:  Table [dbo].[LACriteria2Expressions]    Script Date: 6/29/2019 5:48:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LACriteria2Expressions](
	[CRIT_ID] [bigint] NOT NULL,
	[EXP_ID] [bigint] NOT NULL,
	[MATCH_ALL] [bit] NULL,
 CONSTRAINT [LACriteria2Expressions_PK] PRIMARY KEY CLUSTERED 
(
	[CRIT_ID] ASC,
	[EXP_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Index [IDX_1992083466]    Script Date: 6/29/2019 5:53:30 PM ******/
CREATE NONCLUSTERED INDEX [IDX_1992083466] ON [dbo].[LACriteria2Expressions]
(
	[CRIT_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IDX_1992083467]    Script Date: 6/29/2019 5:53:30 PM ******/
CREATE NONCLUSTERED INDEX [IDX_1992083467] ON [dbo].[LACriteria2Expressions]
(
	[EXP_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[LACriteria2Expressions]  WITH CHECK ADD  CONSTRAINT [LACriteria2Expressions_FK1] FOREIGN KEY([CRIT_ID])
REFERENCES [dbo].[LACriteria] ([CRIT_ID])
GO
ALTER TABLE [dbo].[LACriteria2Expressions] CHECK CONSTRAINT [LACriteria2Expressions_FK1]
GO
ALTER TABLE [dbo].[LACriteria2Expressions]  WITH CHECK ADD  CONSTRAINT [LACriteria2Expressions_FK2] FOREIGN KEY([EXP_ID])
REFERENCES [dbo].[LAExpression] ([EXP_ID])
GO
ALTER TABLE [dbo].[LACriteria2Expressions] CHECK CONSTRAINT [LACriteria2Expressions_FK2]
GO
