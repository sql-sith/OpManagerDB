USE [OpManagerDB]
GO
/****** Object:  Table [dbo].[RunBookLog]    Script Date: 6/29/2019 5:51:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RunBookLog](
	[EXECUTIONID] [bigint] NOT NULL,
	[LOGID] [bigint] NOT NULL,
 CONSTRAINT [RunBookLog_PK1] PRIMARY KEY CLUSTERED 
(
	[LOGID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
