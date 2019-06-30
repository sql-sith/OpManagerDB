USE [OpManagerDB]
GO
/****** Object:  Table [dbo].[While_Loop_Tasks]    Script Date: 6/29/2019 5:53:10 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[While_Loop_Tasks](
	[WHILE_TASK_TEMPLATE_ID] [bigint] NOT NULL,
	[STATEMENT_ID] [bigint] NOT NULL,
	[BOOLEAN_EXPRESSION_ID] [bigint] NOT NULL,
	[CHECK_CONDITION_FIRST] [bit] NOT NULL,
 CONSTRAINT [While_Loop_Tasks_PK] PRIMARY KEY CLUSTERED 
(
	[WHILE_TASK_TEMPLATE_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Index [IDX__917352029]    Script Date: 6/29/2019 5:53:30 PM ******/
CREATE NONCLUSTERED INDEX [IDX__917352029] ON [dbo].[While_Loop_Tasks]
(
	[WHILE_TASK_TEMPLATE_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IDX_1626858222]    Script Date: 6/29/2019 5:53:30 PM ******/
CREATE NONCLUSTERED INDEX [IDX_1626858222] ON [dbo].[While_Loop_Tasks]
(
	[STATEMENT_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IDX_1626858223]    Script Date: 6/29/2019 5:53:30 PM ******/
CREATE NONCLUSTERED INDEX [IDX_1626858223] ON [dbo].[While_Loop_Tasks]
(
	[BOOLEAN_EXPRESSION_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[While_Loop_Tasks] ADD  DEFAULT ((0)) FOR [CHECK_CONDITION_FIRST]
GO
ALTER TABLE [dbo].[While_Loop_Tasks]  WITH CHECK ADD  CONSTRAINT [While_Loop_Tasks_FK] FOREIGN KEY([WHILE_TASK_TEMPLATE_ID])
REFERENCES [dbo].[Task_Templates] ([TASK_TEMPLATE_ID])
GO
ALTER TABLE [dbo].[While_Loop_Tasks] CHECK CONSTRAINT [While_Loop_Tasks_FK]
GO
ALTER TABLE [dbo].[While_Loop_Tasks]  WITH CHECK ADD  CONSTRAINT [While_Loop_Tasks_FK1] FOREIGN KEY([STATEMENT_ID])
REFERENCES [dbo].[Statements] ([STATEMENT_ID])
GO
ALTER TABLE [dbo].[While_Loop_Tasks] CHECK CONSTRAINT [While_Loop_Tasks_FK1]
GO
ALTER TABLE [dbo].[While_Loop_Tasks]  WITH CHECK ADD  CONSTRAINT [While_Loop_Tasks_FK2] FOREIGN KEY([BOOLEAN_EXPRESSION_ID])
REFERENCES [dbo].[Boolean_Expressions] ([BOOLEAN_EXPRESSION_ID])
GO
ALTER TABLE [dbo].[While_Loop_Tasks] CHECK CONSTRAINT [While_Loop_Tasks_FK2]
GO
