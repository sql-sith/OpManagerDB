USE [OpManagerDB]
GO
/****** Object:  Table [dbo].[DeviceList]    Script Date: 6/29/2019 5:47:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DeviceList](
	[USERNAME] [varchar](50) NULL,
	[PROTOCOL] [varchar](10) NULL,
	[DEVICELISTNAME] [varchar](50) NULL
) ON [PRIMARY]
GO
