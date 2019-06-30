USE [OpManagerDB]
GO
/****** Object:  Table [dbo].[NCMExcludeCriteria]    Script Date: 6/29/2019 5:49:25 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NCMExcludeCriteria](
	[CRITERIA_ID] [bigint] NOT NULL,
	[CRITERIA_NAME] [varchar](100) NOT NULL,
	[DESCRIPTION] [varchar](250) NOT NULL,
	[CRITERIA] [varchar](250) NOT NULL,
 CONSTRAINT [NCMExcludeCriteria_PK] PRIMARY KEY CLUSTERED 
(
	[CRITERIA_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[NCMExcludeCriteria] ADD  DEFAULT ('NO_DESCRIPTION_AVAILABLE') FOR [DESCRIPTION]
GO
