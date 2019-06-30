USE [OpManagerDB]
GO
/****** Object:  Table [dbo].[PluginIntegration]    Script Date: 6/29/2019 5:50:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PluginIntegration](
	[PLUGIN_ID] [int] NOT NULL,
	[PLUGIN_NAME] [varchar](50) NOT NULL,
 CONSTRAINT [PluginIntegration_PK] PRIMARY KEY CLUSTERED 
(
	[PLUGIN_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY],
 CONSTRAINT [PluginIntegration_UK1] UNIQUE NONCLUSTERED 
(
	[PLUGIN_NAME] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
