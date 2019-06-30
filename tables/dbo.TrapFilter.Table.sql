USE [OpManagerDB]
GO
/****** Object:  Table [dbo].[TrapFilter]    Script Date: 6/29/2019 5:52:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TrapFilter](
	[NAME] [varchar](100) NULL,
	[ENTERPRISEOID] [varchar](100) NULL,
	[GT] [varchar](10) NULL,
	[ST] [varchar](10) NULL,
	[TRAPOID] [varchar](100) NULL,
	[CLASSNAME] [varchar](100) NULL,
	[STATE] [varchar](50) NULL
) ON [PRIMARY]
GO
