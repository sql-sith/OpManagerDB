USE [OpManagerDB]
GO
/****** Object:  Table [dbo].[EventLogRule]    Script Date: 6/29/2019 5:47:32 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EventLogRule](
	[ID] [int] NOT NULL,
	[name] [varchar](150) NOT NULL,
	[logFileID] [int] NOT NULL,
	[eventID] [varchar](20) NOT NULL,
	[source] [varchar](100) NOT NULL,
	[category] [varchar](100) NOT NULL,
	[userName] [varchar](100) NOT NULL,
	[message] [varchar](250) NOT NULL,
	[eventType] [int] NOT NULL,
	[status] [int] NOT NULL,
	[FAILURETHRESHOLD] [int] NOT NULL,
	[THRESHOLDINTERVAL] [bigint] NOT NULL,
 CONSTRAINT [EventLogRule_PK] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[EventLogRule] ADD  DEFAULT ('1') FOR [FAILURETHRESHOLD]
GO
ALTER TABLE [dbo].[EventLogRule] ADD  DEFAULT ('-1') FOR [THRESHOLDINTERVAL]
GO
