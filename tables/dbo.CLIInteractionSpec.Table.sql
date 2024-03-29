USE [OpManagerDB]
GO
/****** Object:  Table [dbo].[CLIInteractionSpec]    Script Date: 6/29/2019 5:46:39 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CLIInteractionSpec](
	[InteractionID] [varchar](150) NOT NULL,
	[InteractionVerb] [int] NULL,
	[RequestTimeout] [int] NULL,
	[Prompt] [varchar](50) NOT NULL,
	[CommandEcho] [bit] NULL,
	[PromptEcho] [bit] NULL,
	[ResponseParserID] [varchar](50) NULL,
	[PromptActionID] [varchar](50) NULL,
 CONSTRAINT [CLIINTSPEC_PK] PRIMARY KEY CLUSTERED 
(
	[InteractionID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IDX__1698987797]    Script Date: 6/29/2019 5:53:29 PM ******/
CREATE NONCLUSTERED INDEX [IDX__1698987797] ON [dbo].[CLIInteractionSpec]
(
	[ResponseParserID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IDX__922635750]    Script Date: 6/29/2019 5:53:29 PM ******/
CREATE NONCLUSTERED INDEX [IDX__922635750] ON [dbo].[CLIInteractionSpec]
(
	[InteractionID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[CLIInteractionSpec]  WITH CHECK ADD  CONSTRAINT [CLIINTSPEC_FK] FOREIGN KEY([InteractionID])
REFERENCES [dbo].[InteractionSpec] ([InteractionID])
GO
ALTER TABLE [dbo].[CLIInteractionSpec] CHECK CONSTRAINT [CLIINTSPEC_FK]
GO
ALTER TABLE [dbo].[CLIInteractionSpec]  WITH CHECK ADD  CONSTRAINT [CLIISPEC_RP_FK] FOREIGN KEY([ResponseParserID])
REFERENCES [dbo].[CLIResponseParser] ([ResponseParserID])
GO
ALTER TABLE [dbo].[CLIInteractionSpec] CHECK CONSTRAINT [CLIISPEC_RP_FK]
GO
