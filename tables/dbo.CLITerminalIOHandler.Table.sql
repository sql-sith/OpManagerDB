USE [OpManagerDB]
GO
/****** Object:  Table [dbo].[CLITerminalIOHandler]    Script Date: 6/29/2019 5:46:40 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CLITerminalIOHandler](
	[TerminalIOID] [varchar](50) NOT NULL,
	[TerminalIOType] [int] NULL,
	[TerminalIOFileName] [varchar](100) NOT NULL,
	[TerminalIOTableName] [varchar](100) NOT NULL,
	[TerminalIOClassName] [varchar](100) NOT NULL,
 CONSTRAINT [TerminalHandler_PK] PRIMARY KEY CLUSTERED 
(
	[TerminalIOID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
