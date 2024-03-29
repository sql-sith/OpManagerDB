USE [OpManagerDB]
GO
/****** Object:  Table [dbo].[NCMDeviceOSTypeRegEx]    Script Date: 6/29/2019 5:49:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NCMDeviceOSTypeRegEx](
	[REGEXID] [int] NOT NULL,
	[PERSONALITY_NAME] [varchar](250) NOT NULL,
	[REGEX] [varchar](100) NOT NULL,
	[OS_TYPE] [varchar](20) NOT NULL,
	[SEQUENCE_NO] [int] NOT NULL,
 CONSTRAINT [NCMDeviceOSTypeRegEx_PK] PRIMARY KEY CLUSTERED 
(
	[REGEXID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
