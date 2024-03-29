USE [OpManagerDB]
GO
/****** Object:  Table [dbo].[ConsentModules]    Script Date: 6/29/2019 5:46:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ConsentModules](
	[MODULEID] [bigint] NOT NULL,
	[MODULENAME] [varchar](255) NOT NULL,
 CONSTRAINT [ConsentModules_PK1] PRIMARY KEY CLUSTERED 
(
	[MODULEID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY],
 CONSTRAINT [ConsentModules_UK0] UNIQUE NONCLUSTERED 
(
	[MODULENAME] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
