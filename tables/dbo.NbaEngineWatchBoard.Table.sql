USE [OpManagerDB]
GO
/****** Object:  Table [dbo].[NbaEngineWatchBoard]    Script Date: 6/29/2019 5:49:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NbaEngineWatchBoard](
	[ID] [int] NOT NULL,
	[LOGON] [datetime] NOT NULL,
	[METRIC] [varchar](255) NOT NULL,
	[MVALUE] [bigint] NOT NULL,
 CONSTRAINT [NbaEngineWatchBoard_PK] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
