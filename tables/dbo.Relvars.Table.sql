USE [OpManagerDB]
GO
/****** Object:  Table [dbo].[Relvars]    Script Date: 6/29/2019 5:50:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Relvars](
	[RELVAR_ID] [bigint] NOT NULL,
	[RELVAR_NAME] [varchar](100) NOT NULL,
 CONSTRAINT [Relvars_PK] PRIMARY KEY CLUSTERED 
(
	[RELVAR_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY],
 CONSTRAINT [Relvars_UK0] UNIQUE NONCLUSTERED 
(
	[RELVAR_NAME] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
