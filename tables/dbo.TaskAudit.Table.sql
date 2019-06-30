USE [OpManagerDB]
GO
/****** Object:  Table [dbo].[TaskAudit]    Script Date: 6/29/2019 5:52:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TaskAudit](
	[EXECUTIONID] [int] NULL,
	[USERNAME] [varchar](50) NULL,
	[TASKNAME] [varchar](50) NULL,
	[DEVICELIST] [text] NULL,
	[DATASOURCE] [varchar](50) NULL,
	[EXECUTEDTIME] [varchar](30) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
