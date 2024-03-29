USE [OpManagerDB]
GO
/****** Object:  Table [dbo].[CapacityPlanningTemplate]    Script Date: 6/29/2019 5:46:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CapacityPlanningTemplate](
	[ID] [bigint] NOT NULL,
	[GRAPHNAME] [varchar](250) NOT NULL,
	[DBQUERY] [varchar](800) NOT NULL,
	[MESSAGE] [varchar](250) NOT NULL,
	[TYPE] [varchar](100) NOT NULL,
	[SCALE] [int] NOT NULL,
	[BOUNDARY] [varchar](100) NOT NULL,
 CONSTRAINT [CapacityPlanningTemplate_PK1] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
