USE [OpManagerDB]
GO
/****** Object:  Table [dbo].[Working_Hours]    Script Date: 6/29/2019 5:53:25 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Working_Hours](
	[WORKING_HOURS_ID] [bigint] NOT NULL,
	[WORKING_HOURS_NAME] [varchar](150) NOT NULL,
	[START_TIME] [bigint] NOT NULL,
	[UNIT_OF_START_TIME] [varchar](20) NOT NULL,
	[END_TIME] [bigint] NOT NULL,
	[UNIT_OF_END_TIME] [varchar](20) NOT NULL,
 CONSTRAINT [Working_Hours_PK] PRIMARY KEY CLUSTERED 
(
	[WORKING_HOURS_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY],
 CONSTRAINT [Working_Hours_UK] UNIQUE NONCLUSTERED 
(
	[WORKING_HOURS_NAME] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
