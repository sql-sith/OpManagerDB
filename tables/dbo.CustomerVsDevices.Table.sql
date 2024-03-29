USE [OpManagerDB]
GO
/****** Object:  Table [dbo].[CustomerVsDevices]    Script Date: 6/29/2019 5:46:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CustomerVsDevices](
	[ID] [int] NOT NULL,
	[DeviceIp] [varchar](25) NOT NULL,
	[IFGroup] [varchar](350) NOT NULL,
 CONSTRAINT [CustomerVsDevices_PK] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
