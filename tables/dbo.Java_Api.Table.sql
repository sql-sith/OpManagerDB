USE [OpManagerDB]
GO
/****** Object:  Table [dbo].[Java_Api]    Script Date: 6/29/2019 5:48:39 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Java_Api](
	[TASK_TEMPLATE_ID] [bigint] NOT NULL,
	[CLASS_NAME] [varchar](250) NOT NULL,
	[DESCRIPTION] [varchar](250) NOT NULL,
 CONSTRAINT [Java_Api_PK] PRIMARY KEY CLUSTERED 
(
	[TASK_TEMPLATE_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Index [IDX_1686315463]    Script Date: 6/29/2019 5:53:30 PM ******/
CREATE NONCLUSTERED INDEX [IDX_1686315463] ON [dbo].[Java_Api]
(
	[TASK_TEMPLATE_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Java_Api]  WITH CHECK ADD  CONSTRAINT [Java_Api_FK] FOREIGN KEY([TASK_TEMPLATE_ID])
REFERENCES [dbo].[Task_Templates] ([TASK_TEMPLATE_ID])
GO
ALTER TABLE [dbo].[Java_Api] CHECK CONSTRAINT [Java_Api_FK]
GO
