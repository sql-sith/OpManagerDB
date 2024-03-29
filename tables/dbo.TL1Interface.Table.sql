USE [OpManagerDB]
GO
/****** Object:  Table [dbo].[TL1Interface]    Script Date: 6/29/2019 5:52:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TL1Interface](
	[STATPOLLCOMMAND] [varchar](254) NULL,
	[CONNECTIONHANDLER] [varchar](150) NULL,
	[DICTIONARY] [varchar](100) NULL,
	[SESSIONID] [varchar](100) NULL,
	[TL1PORT] [int] NULL,
	[NAME] [varchar](100) NOT NULL,
	[OWNERNAME] [varchar](25) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[NAME] ASC,
	[OWNERNAME] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
