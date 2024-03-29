USE [OpManagerDB]
GO
/****** Object:  Table [dbo].[ScriptDetails]    Script Date: 6/29/2019 5:51:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ScriptDetails](
	[SCRIPTID] [bigint] NOT NULL,
	[SCRIPTBODY] [text] NOT NULL,
	[COMMANDLINE] [varchar](4000) NOT NULL,
	[TIMEOUT] [int] NOT NULL,
	[EXECUTEFROM] [int] NOT NULL,
	[WORKINGDIRECTORY] [varchar](4000) NOT NULL,
 CONSTRAINT [ScriptDetails_PK] PRIMARY KEY CLUSTERED 
(
	[SCRIPTID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
