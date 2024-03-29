USE [OpManagerDB]
GO
/****** Object:  Table [dbo].[Email_Task_Input]    Script Date: 6/29/2019 5:47:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Email_Task_Input](
	[INPUT_ID] [bigint] NOT NULL,
	[FROM_ADDRESS] [varchar](250) NULL,
	[SUBJECT] [varchar](250) NULL,
	[MESSAGE] [varchar](250) NULL,
	[MSGTYPE] [varchar](5) NULL,
 CONSTRAINT [EMail_Task_Input_PK] PRIMARY KEY CLUSTERED 
(
	[INPUT_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Email_Task_Input] ADD  DEFAULT ('HTML') FOR [MSGTYPE]
GO
