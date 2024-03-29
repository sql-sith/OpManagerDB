USE [OpManagerDB]
GO
/****** Object:  Table [dbo].[Workflow_Templates]    Script Date: 6/29/2019 5:53:25 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Workflow_Templates](
	[WORKFLOW_TEMPLATE_ID] [bigint] NOT NULL,
	[HUMAN_IN_THE_LOOP] [bit] NOT NULL,
	[PRINT_FLAG] [bit] NOT NULL,
	[ADMIN_STATUS] [int] NOT NULL,
 CONSTRAINT [Workflow_Templates_PK] PRIMARY KEY CLUSTERED 
(
	[WORKFLOW_TEMPLATE_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Index [IDX_163624971]    Script Date: 6/29/2019 5:53:30 PM ******/
CREATE NONCLUSTERED INDEX [IDX_163624971] ON [dbo].[Workflow_Templates]
(
	[WORKFLOW_TEMPLATE_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Workflow_Templates] ADD  DEFAULT ((0)) FOR [HUMAN_IN_THE_LOOP]
GO
ALTER TABLE [dbo].[Workflow_Templates] ADD  DEFAULT ((0)) FOR [PRINT_FLAG]
GO
ALTER TABLE [dbo].[Workflow_Templates] ADD  DEFAULT ('1') FOR [ADMIN_STATUS]
GO
ALTER TABLE [dbo].[Workflow_Templates]  WITH CHECK ADD  CONSTRAINT [Workflow_Templates_FK] FOREIGN KEY([WORKFLOW_TEMPLATE_ID])
REFERENCES [dbo].[Templates] ([TEMPLATE_ID])
GO
ALTER TABLE [dbo].[Workflow_Templates] CHECK CONSTRAINT [Workflow_Templates_FK]
GO
