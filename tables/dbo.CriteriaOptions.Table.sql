USE [OpManagerDB]
GO
/****** Object:  Table [dbo].[CriteriaOptions]    Script Date: 6/29/2019 5:46:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CriteriaOptions](
	[RULEID] [bigint] NOT NULL,
	[TASK] [varchar](250) NOT NULL,
	[ALARMCODE] [varchar](250) NOT NULL,
 CONSTRAINT [CriteriaOptions_PK1] PRIMARY KEY CLUSTERED 
(
	[RULEID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
