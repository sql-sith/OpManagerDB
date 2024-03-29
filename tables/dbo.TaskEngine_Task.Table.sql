USE [OpManagerDB]
GO
/****** Object:  Table [dbo].[TaskEngine_Task]    Script Date: 6/29/2019 5:52:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TaskEngine_Task](
	[TASK_ID] [bigint] NOT NULL,
	[TASK_NAME] [varchar](250) NOT NULL,
	[CLASS_NAME] [varchar](250) NOT NULL,
 CONSTRAINT [TaskEngine_Task_PK] PRIMARY KEY CLUSTERED 
(
	[TASK_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY],
 CONSTRAINT [TaskEngine_Task_UK0] UNIQUE NONCLUSTERED 
(
	[TASK_NAME] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
