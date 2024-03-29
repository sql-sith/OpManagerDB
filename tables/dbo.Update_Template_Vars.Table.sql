USE [OpManagerDB]
GO
/****** Object:  Table [dbo].[Update_Template_Vars]    Script Date: 6/29/2019 5:52:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Update_Template_Vars](
	[TASK_TEMPLATE_ID] [bigint] NOT NULL,
	[VARIABLE_TEMPLATE_ID] [bigint] NOT NULL,
	[VARIABLE_NAME] [varchar](100) NOT NULL,
 CONSTRAINT [Update_Template_Vars_PK] PRIMARY KEY CLUSTERED 
(
	[TASK_TEMPLATE_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Index [IDX__1362013815]    Script Date: 6/29/2019 5:53:30 PM ******/
CREATE NONCLUSTERED INDEX [IDX__1362013815] ON [dbo].[Update_Template_Vars]
(
	[TASK_TEMPLATE_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IDX_727244744]    Script Date: 6/29/2019 5:53:30 PM ******/
CREATE NONCLUSTERED INDEX [IDX_727244744] ON [dbo].[Update_Template_Vars]
(
	[VARIABLE_TEMPLATE_ID] ASC,
	[VARIABLE_NAME] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Update_Template_Vars]  WITH CHECK ADD  CONSTRAINT [Update_Template_Vars_FK] FOREIGN KEY([TASK_TEMPLATE_ID])
REFERENCES [dbo].[Task_Templates] ([TASK_TEMPLATE_ID])
GO
ALTER TABLE [dbo].[Update_Template_Vars] CHECK CONSTRAINT [Update_Template_Vars_FK]
GO
ALTER TABLE [dbo].[Update_Template_Vars]  WITH CHECK ADD  CONSTRAINT [Update_Template_Vars_FK1] FOREIGN KEY([VARIABLE_TEMPLATE_ID], [VARIABLE_NAME])
REFERENCES [dbo].[Template_Variables] ([TEMPLATE_ID], [VARIABLE_NAME])
GO
ALTER TABLE [dbo].[Update_Template_Vars] CHECK CONSTRAINT [Update_Template_Vars_FK1]
GO
