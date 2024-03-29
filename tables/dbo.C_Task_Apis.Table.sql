USE [OpManagerDB]
GO
/****** Object:  Table [dbo].[C_Task_Apis]    Script Date: 6/29/2019 5:46:25 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[C_Task_Apis](
	[TASK_TEMPLATE_ID] [bigint] NOT NULL,
	[C_LIBRARY_NAME] [varchar](50) NOT NULL,
	[C_API_NAME] [varchar](50) NOT NULL,
	[DESCRIPTION] [varchar](50) NULL,
 CONSTRAINT [C_Task_Apis_PK] PRIMARY KEY CLUSTERED 
(
	[TASK_TEMPLATE_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Index [IDX_106312429]    Script Date: 6/29/2019 5:53:29 PM ******/
CREATE NONCLUSTERED INDEX [IDX_106312429] ON [dbo].[C_Task_Apis]
(
	[TASK_TEMPLATE_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[C_Task_Apis]  WITH CHECK ADD  CONSTRAINT [C_Task_Apis_FK] FOREIGN KEY([TASK_TEMPLATE_ID])
REFERENCES [dbo].[Task_Templates] ([TASK_TEMPLATE_ID])
GO
ALTER TABLE [dbo].[C_Task_Apis] CHECK CONSTRAINT [C_Task_Apis_FK]
GO
