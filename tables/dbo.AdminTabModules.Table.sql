USE [OpManagerDB]
GO
/****** Object:  Table [dbo].[AdminTabModules]    Script Date: 6/29/2019 5:45:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AdminTabModules](
	[MODULEID] [bigint] NOT NULL,
	[MODULENAME] [varchar](100) NOT NULL,
	[LEVEL] [real] NOT NULL,
	[MODULETREENAME] [varchar](100) NOT NULL,
 CONSTRAINT [AdminTabModules_PK1] PRIMARY KEY CLUSTERED 
(
	[MODULEID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
