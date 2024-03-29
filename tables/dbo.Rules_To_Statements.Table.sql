USE [OpManagerDB]
GO
/****** Object:  Table [dbo].[Rules_To_Statements]    Script Date: 6/29/2019 5:51:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Rules_To_Statements](
	[RULE_ID] [bigint] NOT NULL,
	[BOOLEAN_EXPRESSION_ID] [bigint] NOT NULL,
	[SEQUENCE_NUMBER] [bigint] NOT NULL,
	[TRUE_STATEMENT_ID] [bigint] NOT NULL,
	[FALSE_STATEMENT_ID] [bigint] NULL,
 CONSTRAINT [Rules_To_Tasks_PK] PRIMARY KEY CLUSTERED 
(
	[RULE_ID] ASC,
	[BOOLEAN_EXPRESSION_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Index [IDX__1430812286]    Script Date: 6/29/2019 5:53:30 PM ******/
CREATE NONCLUSTERED INDEX [IDX__1430812286] ON [dbo].[Rules_To_Statements]
(
	[FALSE_STATEMENT_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IDX__1430812287]    Script Date: 6/29/2019 5:53:30 PM ******/
CREATE NONCLUSTERED INDEX [IDX__1430812287] ON [dbo].[Rules_To_Statements]
(
	[BOOLEAN_EXPRESSION_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IDX__1430812288]    Script Date: 6/29/2019 5:53:30 PM ******/
CREATE NONCLUSTERED INDEX [IDX__1430812288] ON [dbo].[Rules_To_Statements]
(
	[TRUE_STATEMENT_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IDX__1430812289]    Script Date: 6/29/2019 5:53:30 PM ******/
CREATE NONCLUSTERED INDEX [IDX__1430812289] ON [dbo].[Rules_To_Statements]
(
	[RULE_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Rules_To_Statements]  WITH CHECK ADD  CONSTRAINT [Rules_To_Tasks_FK1] FOREIGN KEY([RULE_ID])
REFERENCES [dbo].[Rules] ([RULE_ID])
GO
ALTER TABLE [dbo].[Rules_To_Statements] CHECK CONSTRAINT [Rules_To_Tasks_FK1]
GO
ALTER TABLE [dbo].[Rules_To_Statements]  WITH CHECK ADD  CONSTRAINT [Rules_To_Tasks_FK2] FOREIGN KEY([TRUE_STATEMENT_ID])
REFERENCES [dbo].[Statements] ([STATEMENT_ID])
GO
ALTER TABLE [dbo].[Rules_To_Statements] CHECK CONSTRAINT [Rules_To_Tasks_FK2]
GO
ALTER TABLE [dbo].[Rules_To_Statements]  WITH CHECK ADD  CONSTRAINT [Rules_To_Tasks_FK3] FOREIGN KEY([BOOLEAN_EXPRESSION_ID])
REFERENCES [dbo].[Boolean_Expressions] ([BOOLEAN_EXPRESSION_ID])
GO
ALTER TABLE [dbo].[Rules_To_Statements] CHECK CONSTRAINT [Rules_To_Tasks_FK3]
GO
ALTER TABLE [dbo].[Rules_To_Statements]  WITH CHECK ADD  CONSTRAINT [Rules_To_Tasks_FK4] FOREIGN KEY([FALSE_STATEMENT_ID])
REFERENCES [dbo].[Statements] ([STATEMENT_ID])
GO
ALTER TABLE [dbo].[Rules_To_Statements] CHECK CONSTRAINT [Rules_To_Tasks_FK4]
GO
