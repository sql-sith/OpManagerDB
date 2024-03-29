USE [OpManagerDB]
GO
/****** Object:  Table [dbo].[Default_Task_Input]    Script Date: 6/29/2019 5:47:02 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Default_Task_Input](
	[INSTANCE_ID] [bigint] NOT NULL,
	[VARIABLE_NAME] [varchar](100) NOT NULL,
	[VARIABLE_TYPE] [varchar](50) NULL,
	[VARIABLE_VALUE] [varchar](300) NULL,
 CONSTRAINT [Default_Task_Input_PK] PRIMARY KEY CLUSTERED 
(
	[INSTANCE_ID] ASC,
	[VARIABLE_NAME] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Index [IDX_168375739]    Script Date: 6/29/2019 5:53:30 PM ******/
CREATE NONCLUSTERED INDEX [IDX_168375739] ON [dbo].[Default_Task_Input]
(
	[INSTANCE_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Default_Task_Input]  WITH CHECK ADD  CONSTRAINT [Default_Task_Input_FK1] FOREIGN KEY([INSTANCE_ID])
REFERENCES [dbo].[Task_Input] ([INSTANCE_ID])
GO
ALTER TABLE [dbo].[Default_Task_Input] CHECK CONSTRAINT [Default_Task_Input_FK1]
GO
