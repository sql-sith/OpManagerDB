USE [OpManagerDB]
GO
/****** Object:  Table [dbo].[CLISettings]    Script Date: 6/29/2019 5:46:39 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CLISettings](
	[ID] [bigint] NOT NULL,
	[SYS_PROMT] [varchar](10) NOT NULL,
	[LOGIN_PROMT] [varchar](10) NOT NULL,
	[PASSWD_PROMT] [varchar](10) NOT NULL,
 CONSTRAINT [CLISettings_PK] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Index [IDX_2043190593]    Script Date: 6/29/2019 5:53:29 PM ******/
CREATE NONCLUSTERED INDEX [IDX_2043190593] ON [dbo].[CLISettings]
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[CLISettings]  WITH CHECK ADD  CONSTRAINT [CLISettings_FK] FOREIGN KEY([ID])
REFERENCES [dbo].[Settings] ([ID])
GO
ALTER TABLE [dbo].[CLISettings] CHECK CONSTRAINT [CLISettings_FK]
GO
