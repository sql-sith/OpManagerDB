USE [OpManagerDB]
GO
/****** Object:  Table [dbo].[MediatraceSession]    Script Date: 6/29/2019 5:48:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MediatraceSession](
	[SESSION_ID] [varchar](25) NOT NULL,
	[PROFILE_NAME] [varchar](100) NOT NULL,
	[INITIATOR_IP] [varchar](100) NOT NULL,
	[PROFILE] [varchar](100) NOT NULL,
	[PROFILE_TYPE] [varchar](100) NOT NULL,
	[PATH_PROFILE] [varchar](100) NOT NULL,
	[FLOW_PROFILE] [varchar](100) NOT NULL,
	[SESSIONPARAM_PROFILE] [varchar](100) NOT NULL,
	[STATE] [varchar](25) NOT NULL,
 CONSTRAINT [MediatraceSession_PK] PRIMARY KEY CLUSTERED 
(
	[SESSION_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
