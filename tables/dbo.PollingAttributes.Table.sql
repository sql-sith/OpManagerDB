USE [OpManagerDB]
GO
/****** Object:  Table [dbo].[PollingAttributes]    Script Date: 6/29/2019 5:50:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PollingAttributes](
	[NAME] [varchar](50) NULL,
	[TYPE] [varchar](10) NULL,
	[PROPERTY] [varchar](20) NULL,
	[POLLCONDITION] [varchar](50) NULL,
	[VALUE] [varchar](100) NULL
) ON [PRIMARY]
GO
