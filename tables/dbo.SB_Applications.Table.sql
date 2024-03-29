USE [OpManagerDB]
GO
/****** Object:  Table [dbo].[SB_Applications]    Script Date: 6/29/2019 5:51:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SB_Applications](
	[APPL_ID] [bigint] NOT NULL,
	[APPL_NAME] [varchar](200) NOT NULL,
	[APPL_DESC] [varchar](1000) NULL,
	[TEMPLATE_META_HANDLER] [varchar](250) NULL,
 CONSTRAINT [SB_Applications_PK] PRIMARY KEY CLUSTERED 
(
	[APPL_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY],
 CONSTRAINT [SB_Applications_UK0] UNIQUE NONCLUSTERED 
(
	[APPL_NAME] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
