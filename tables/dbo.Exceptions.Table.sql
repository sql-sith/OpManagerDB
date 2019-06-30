USE [OpManagerDB]
GO
/****** Object:  Table [dbo].[Exceptions]    Script Date: 6/29/2019 5:47:35 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Exceptions](
	[WORKFLOW_TEMPLATE_ID] [bigint] NOT NULL,
	[STATEMENT_ID] [bigint] NOT NULL,
	[ERROR_ID] [bigint] NOT NULL,
	[TEMPLATE_ID] [bigint] NOT NULL,
	[EXIT_ON_EXCEPTION] [bit] NOT NULL,
	[RETRY] [bit] NOT NULL,
 CONSTRAINT [Exceptions_PK] PRIMARY KEY CLUSTERED 
(
	[WORKFLOW_TEMPLATE_ID] ASC,
	[STATEMENT_ID] ASC,
	[ERROR_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Index [IDX__1029135500]    Script Date: 6/29/2019 5:53:30 PM ******/
CREATE NONCLUSTERED INDEX [IDX__1029135500] ON [dbo].[Exceptions]
(
	[TEMPLATE_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IDX__1029135501]    Script Date: 6/29/2019 5:53:30 PM ******/
CREATE NONCLUSTERED INDEX [IDX__1029135501] ON [dbo].[Exceptions]
(
	[ERROR_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IDX__1029135502]    Script Date: 6/29/2019 5:53:30 PM ******/
CREATE NONCLUSTERED INDEX [IDX__1029135502] ON [dbo].[Exceptions]
(
	[STATEMENT_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IDX__1029135503]    Script Date: 6/29/2019 5:53:30 PM ******/
CREATE NONCLUSTERED INDEX [IDX__1029135503] ON [dbo].[Exceptions]
(
	[WORKFLOW_TEMPLATE_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Exceptions]  WITH CHECK ADD  CONSTRAINT [Exceptions_FK1] FOREIGN KEY([WORKFLOW_TEMPLATE_ID])
REFERENCES [dbo].[Workflow_Templates] ([WORKFLOW_TEMPLATE_ID])
GO
ALTER TABLE [dbo].[Exceptions] CHECK CONSTRAINT [Exceptions_FK1]
GO
ALTER TABLE [dbo].[Exceptions]  WITH CHECK ADD  CONSTRAINT [Exceptions_FK2] FOREIGN KEY([STATEMENT_ID])
REFERENCES [dbo].[Statements] ([STATEMENT_ID])
GO
ALTER TABLE [dbo].[Exceptions] CHECK CONSTRAINT [Exceptions_FK2]
GO
ALTER TABLE [dbo].[Exceptions]  WITH CHECK ADD  CONSTRAINT [Exceptions_FK3] FOREIGN KEY([ERROR_ID])
REFERENCES [dbo].[Error_Data] ([ERROR_ID])
GO
ALTER TABLE [dbo].[Exceptions] CHECK CONSTRAINT [Exceptions_FK3]
GO
ALTER TABLE [dbo].[Exceptions]  WITH CHECK ADD  CONSTRAINT [Exceptions_FK4] FOREIGN KEY([TEMPLATE_ID])
REFERENCES [dbo].[Workflow_Templates] ([WORKFLOW_TEMPLATE_ID])
GO
ALTER TABLE [dbo].[Exceptions] CHECK CONSTRAINT [Exceptions_FK4]
GO
