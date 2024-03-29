USE [OpManagerDB]
GO
/****** Object:  Table [dbo].[ServicesDefinition]    Script Date: 6/29/2019 5:51:26 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ServicesDefinition](
	[SERVICEDEFINITIONID] [int] NOT NULL,
	[SERVICENAME] [varchar](100) NOT NULL,
	[DISPLAYNAME] [varchar](250) NOT NULL,
	[DESCRIPTION] [varchar](4000) NULL,
 CONSTRAINT [ServicesDefinition_PK1] PRIMARY KEY CLUSTERED 
(
	[SERVICEDEFINITIONID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY],
 CONSTRAINT [ServicesDefinition_UK0] UNIQUE NONCLUSTERED 
(
	[SERVICENAME] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
