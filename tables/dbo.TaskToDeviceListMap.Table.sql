USE [OpManagerDB]
GO
/****** Object:  Table [dbo].[TaskToDeviceListMap]    Script Date: 6/29/2019 5:52:14 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TaskToDeviceListMap](
	[USERNAME] [varchar](50) NULL,
	[TASKNAME] [varchar](50) NULL,
	[DEVICELISTNAMES] [varchar](200) NULL
) ON [PRIMARY]
GO
