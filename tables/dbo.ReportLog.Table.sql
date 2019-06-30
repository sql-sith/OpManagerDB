USE [OpManagerDB]
GO
/****** Object:  Table [dbo].[ReportLog]    Script Date: 6/29/2019 5:50:57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ReportLog](
	[SCHEDULEID] [bigint] NOT NULL,
	[COLLECTIONTIME] [datetime] NOT NULL,
	[TYPE] [bigint] NOT NULL,
	[LOGMESSAGE] [varchar](250) NOT NULL,
 CONSTRAINT [ReportLog_PK] PRIMARY KEY CLUSTERED 
(
	[COLLECTIONTIME] ASC,
	[SCHEDULEID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
