USE [OpManagerDB]
GO
/****** Object:  Table [dbo].[ConfigProvider]    Script Date: 6/29/2019 5:46:45 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ConfigProvider](
	[PROTOCOL] [varchar](100) NOT NULL,
	[CONFIGPROVIDER] [varchar](100) NOT NULL
) ON [PRIMARY]
GO
