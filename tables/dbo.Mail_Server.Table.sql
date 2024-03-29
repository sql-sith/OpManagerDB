USE [OpManagerDB]
GO
/****** Object:  Table [dbo].[Mail_Server]    Script Date: 6/29/2019 5:48:54 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Mail_Server](
	[SERVER_ID] [bigint] NOT NULL,
	[NAME] [varchar](250) NOT NULL,
	[SERVER_NAME] [varchar](250) NOT NULL,
	[PORT] [int] NOT NULL,
	[USER_NAME] [varchar](250) NULL,
	[PASSWORD] [varchar](250) NULL,
 CONSTRAINT [Mail_Server_PK] PRIMARY KEY CLUSTERED 
(
	[SERVER_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Mail_Server] ADD  DEFAULT ('default-server') FOR [NAME]
GO
ALTER TABLE [dbo].[Mail_Server] ADD  DEFAULT ('smtp') FOR [SERVER_NAME]
GO
ALTER TABLE [dbo].[Mail_Server] ADD  DEFAULT ('25') FOR [PORT]
GO
