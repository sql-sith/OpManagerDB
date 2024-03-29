USE [OpManagerDB]
GO
/****** Object:  Table [dbo].[PendingTasks]    Script Date: 6/29/2019 5:50:10 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PendingTasks](
	[USERNAME] [varchar](50) NULL,
	[TASKNAME] [varchar](50) NULL,
	[SUBTASKNAME] [varchar](50) NULL,
	[DEVICENAME] [varchar](50) NULL,
	[STATUS] [varchar](20) NULL,
	[PORT] [varchar](5) NULL,
	[RETRIES] [int] NULL,
	[TIMEOUT] [int] NULL,
	[AINDEX] [int] NULL,
	[EXECUTIONID] [int] NULL
) ON [PRIMARY]
GO
