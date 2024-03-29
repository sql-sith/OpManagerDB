USE [OpManagerDB]
GO
/****** Object:  Table [dbo].[EventLogDeviceInfo]    Script Date: 6/29/2019 5:47:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EventLogDeviceInfo](
	[deviceName] [varchar](150) NOT NULL,
	[active] [varchar](10) NOT NULL,
	[period] [int] NOT NULL,
	[lastPolledTime] [bigint] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[deviceName] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
