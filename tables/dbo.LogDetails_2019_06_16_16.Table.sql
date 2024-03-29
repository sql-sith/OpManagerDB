USE [OpManagerDB]
GO
/****** Object:  Table [dbo].[LogDetails_2019_06_16_16]    Script Date: 6/29/2019 5:48:49 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LogDetails_2019_06_16_16](
	[LOGID] [bigint] NOT NULL,
	[LOGTIME] [datetime] NOT NULL,
	[LOGSEVERITY] [int] NOT NULL,
	[LOGMESSAGE] [text] NOT NULL,
 CONSTRAINT [LogDetails_2019_06_16_16_PK] PRIMARY KEY CLUSTERED 
(
	[LOGID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
