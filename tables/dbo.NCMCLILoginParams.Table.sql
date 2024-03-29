USE [OpManagerDB]
GO
/****** Object:  Table [dbo].[NCMCLILoginParams]    Script Date: 6/29/2019 5:49:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NCMCLILoginParams](
	[LOGINPARAMSID] [bigint] NOT NULL,
	[PERSONALITYID] [bigint] NOT NULL,
	[MODEL] [varchar](25) NULL,
	[DEVICETEMPLATENAME] [varchar](100) NULL,
	[LOGINPREFIXPROMPT] [varchar](50) NULL,
	[LOGINPREFIXCOMMAND] [varchar](25) NULL,
	[POSTLOGINPROMPT] [varchar](50) NULL,
	[POSTLOGINCOMMAND] [varchar](25) NULL,
	[COMMANDSUFFIX] [varchar](25) NULL,
	[ENABLECOMMAND] [varchar](50) NULL,
 CONSTRAINT [NCMCLILoginParams_PK1] PRIMARY KEY CLUSTERED 
(
	[LOGINPARAMSID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY],
 CONSTRAINT [NCMCLILoginParams_UNQ1] UNIQUE NONCLUSTERED 
(
	[PERSONALITYID] ASC,
	[MODEL] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Index [IDX_1366672436]    Script Date: 6/29/2019 5:53:30 PM ******/
CREATE NONCLUSTERED INDEX [IDX_1366672436] ON [dbo].[NCMCLILoginParams]
(
	[PERSONALITYID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[NCMCLILoginParams]  WITH CHECK ADD  CONSTRAINT [NCMCLILoginParams_FK1] FOREIGN KEY([PERSONALITYID])
REFERENCES [dbo].[NCMPersonality] ([PERSONALITYID])
GO
ALTER TABLE [dbo].[NCMCLILoginParams] CHECK CONSTRAINT [NCMCLILoginParams_FK1]
GO
