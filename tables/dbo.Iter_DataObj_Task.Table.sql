USE [OpManagerDB]
GO
/****** Object:  Table [dbo].[Iter_DataObj_Task]    Script Date: 6/29/2019 5:48:38 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Iter_DataObj_Task](
	[TASK_TEMPLATE_ID] [bigint] NOT NULL,
	[TEMPLATE_ID] [bigint] NOT NULL,
	[VARIABLE_NAME] [varchar](100) NOT NULL,
	[OUT_TEMPLATE_ID] [bigint] NOT NULL,
	[OUT_VARIABLE_NAME] [varchar](100) NOT NULL,
	[STATEMENT_ID] [bigint] NOT NULL,
 CONSTRAINT [Iter_DataObj_Task_PK] PRIMARY KEY CLUSTERED 
(
	[TASK_TEMPLATE_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Index [IDX_1289570598]    Script Date: 6/29/2019 5:53:30 PM ******/
CREATE NONCLUSTERED INDEX [IDX_1289570598] ON [dbo].[Iter_DataObj_Task]
(
	[TASK_TEMPLATE_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IDX_1321982923]    Script Date: 6/29/2019 5:53:30 PM ******/
CREATE NONCLUSTERED INDEX [IDX_1321982923] ON [dbo].[Iter_DataObj_Task]
(
	[STATEMENT_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IDX_1321982924]    Script Date: 6/29/2019 5:53:30 PM ******/
CREATE NONCLUSTERED INDEX [IDX_1321982924] ON [dbo].[Iter_DataObj_Task]
(
	[TEMPLATE_ID] ASC,
	[VARIABLE_NAME] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IDX_1321982925]    Script Date: 6/29/2019 5:53:30 PM ******/
CREATE NONCLUSTERED INDEX [IDX_1321982925] ON [dbo].[Iter_DataObj_Task]
(
	[OUT_TEMPLATE_ID] ASC,
	[OUT_VARIABLE_NAME] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Iter_DataObj_Task]  WITH CHECK ADD  CONSTRAINT [Iter_DataObj_Task_FK] FOREIGN KEY([TASK_TEMPLATE_ID])
REFERENCES [dbo].[Task_Templates] ([TASK_TEMPLATE_ID])
GO
ALTER TABLE [dbo].[Iter_DataObj_Task] CHECK CONSTRAINT [Iter_DataObj_Task_FK]
GO
ALTER TABLE [dbo].[Iter_DataObj_Task]  WITH CHECK ADD  CONSTRAINT [Iter_DataObj_Task_FK1] FOREIGN KEY([STATEMENT_ID])
REFERENCES [dbo].[Statements] ([STATEMENT_ID])
GO
ALTER TABLE [dbo].[Iter_DataObj_Task] CHECK CONSTRAINT [Iter_DataObj_Task_FK1]
GO
ALTER TABLE [dbo].[Iter_DataObj_Task]  WITH CHECK ADD  CONSTRAINT [Iter_DataObj_Task_FK2] FOREIGN KEY([TEMPLATE_ID], [VARIABLE_NAME])
REFERENCES [dbo].[DataObj_Variables] ([TEMPLATE_ID], [VARIABLE_NAME])
GO
ALTER TABLE [dbo].[Iter_DataObj_Task] CHECK CONSTRAINT [Iter_DataObj_Task_FK2]
GO
ALTER TABLE [dbo].[Iter_DataObj_Task]  WITH CHECK ADD  CONSTRAINT [Iter_DataObj_Task_FK3] FOREIGN KEY([OUT_TEMPLATE_ID], [OUT_VARIABLE_NAME])
REFERENCES [dbo].[DataObj_Variables] ([TEMPLATE_ID], [VARIABLE_NAME])
GO
ALTER TABLE [dbo].[Iter_DataObj_Task] CHECK CONSTRAINT [Iter_DataObj_Task_FK3]
GO
