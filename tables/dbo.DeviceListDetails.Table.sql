USE [OpManagerDB]
GO
/****** Object:  Table [dbo].[DeviceListDetails]    Script Date: 6/29/2019 5:47:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DeviceListDetails](
	[DKEY] [varchar](200) NULL,
	[DEVICENAME] [varchar](50) NULL,
	[PORT] [varchar](5) NULL,
	[RETRIES] [int] NULL,
	[TIMEOUT] [int] NULL,
	[DEVICESEQUENCE] [int] NULL
) ON [PRIMARY]
GO
