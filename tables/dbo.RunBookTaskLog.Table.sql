USE [OpManagerDB]
GO
/****** Object:  Table [dbo].[RunBookTaskLog]    Script Date: 6/29/2019 5:51:09 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RunBookTaskLog](
	[LOGID] [bigint] NOT NULL,
	[EXECUTIONID] [bigint] NOT NULL,
	[ASSOCID] [bigint] NOT NULL,
	[MOID] [bigint] NOT NULL,
	[TASKNAME] [varchar](100) NOT NULL,
 CONSTRAINT [RunBookTaskLog_PK1] PRIMARY KEY CLUSTERED 
(
	[LOGID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
