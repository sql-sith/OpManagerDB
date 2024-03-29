USE [OpManagerDB]
GO
/****** Object:  Table [dbo].[DeviceAudit]    Script Date: 6/29/2019 5:47:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DeviceAudit](
	[ID] [int] NULL,
	[USERNAME] [varchar](50) NULL,
	[TASKNAME] [varchar](50) NULL,
	[SUBTASKNAME] [varchar](50) NULL,
	[DEVICENAME] [varchar](50) NULL,
	[TIMEOFSTART] [varchar](30) NULL,
	[TIMEOFFINISH] [varchar](30) NULL,
	[STATUS] [varchar](15) NULL,
	[ROLLBACKSTATUS] [varchar](15) NULL,
	[EXECUTIONID] [int] NULL,
	[DEVICELIST] [varchar](50) NULL
) ON [PRIMARY]
GO
