USE [OpManagerDB]
GO
/****** Object:  Table [dbo].[Iterat_Task_Template]    Script Date: 6/29/2019 5:48:39 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Iterat_Task_Template](
	[ITERATOR_TASK_TEMPLATE_ID] [bigint] NOT NULL,
	[RELVAR_ID] [bigint] NOT NULL,
	[STATEMENT_ID] [bigint] NOT NULL,
	[ITERATE_SERIALLY] [bit] NOT NULL,
 CONSTRAINT [Iterat_Task_Template_PK] PRIMARY KEY CLUSTERED 
(
	[ITERATOR_TASK_TEMPLATE_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Index [IDX_140624151]    Script Date: 6/29/2019 5:53:30 PM ******/
CREATE NONCLUSTERED INDEX [IDX_140624151] ON [dbo].[Iterat_Task_Template]
(
	[ITERATOR_TASK_TEMPLATE_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IDX_64381434]    Script Date: 6/29/2019 5:53:30 PM ******/
CREATE NONCLUSTERED INDEX [IDX_64381434] ON [dbo].[Iterat_Task_Template]
(
	[STATEMENT_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IDX_64381435]    Script Date: 6/29/2019 5:53:30 PM ******/
CREATE NONCLUSTERED INDEX [IDX_64381435] ON [dbo].[Iterat_Task_Template]
(
	[RELVAR_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Iterat_Task_Template]  WITH CHECK ADD  CONSTRAINT [Iter_Task_Template_FK] FOREIGN KEY([ITERATOR_TASK_TEMPLATE_ID])
REFERENCES [dbo].[Task_Templates] ([TASK_TEMPLATE_ID])
GO
ALTER TABLE [dbo].[Iterat_Task_Template] CHECK CONSTRAINT [Iter_Task_Template_FK]
GO
ALTER TABLE [dbo].[Iterat_Task_Template]  WITH CHECK ADD  CONSTRAINT [Iter_Task_Template_FK1] FOREIGN KEY([STATEMENT_ID])
REFERENCES [dbo].[Statements] ([STATEMENT_ID])
GO
ALTER TABLE [dbo].[Iterat_Task_Template] CHECK CONSTRAINT [Iter_Task_Template_FK1]
GO
ALTER TABLE [dbo].[Iterat_Task_Template]  WITH CHECK ADD  CONSTRAINT [Iter_Task_Template_FK2] FOREIGN KEY([RELVAR_ID])
REFERENCES [dbo].[Relvars] ([RELVAR_ID])
GO
ALTER TABLE [dbo].[Iterat_Task_Template] CHECK CONSTRAINT [Iter_Task_Template_FK2]
GO
