USE [OpManagerDB]
GO
/****** Object:  Table [dbo].[CLIMultiplePromptAction]    Script Date: 6/29/2019 5:46:39 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CLIMultiplePromptAction](
	[PromptActionUniqueID] [bigint] NOT NULL,
	[PromptActionID] [varchar](50) NOT NULL,
	[Prompt] [varchar](50) NOT NULL,
	[Command] [varchar](50) NOT NULL,
 CONSTRAINT [PromptAction_PK] PRIMARY KEY CLUSTERED 
(
	[PromptActionUniqueID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
