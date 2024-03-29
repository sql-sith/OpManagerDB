USE [OpManagerDB]
GO
/****** Object:  Table [dbo].[CLIResponseParser]    Script Date: 6/29/2019 5:46:39 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CLIResponseParser](
	[ResponseParserID] [varchar](50) NOT NULL,
	[ParserType] [int] NULL,
	[ParserFileName] [varchar](100) NOT NULL,
	[ParserRuleName] [varchar](50) NOT NULL,
 CONSTRAINT [ResponseParser_PK] PRIMARY KEY CLUSTERED 
(
	[ResponseParserID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
