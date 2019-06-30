USE [OpManagerDB]
GO
/****** Object:  Table [dbo].[Priorities]    Script Date: 6/29/2019 5:50:23 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Priorities](
	[PRIORITY_ID] [bigint] NOT NULL,
	[PRIORITY] [nvarchar](20) NULL,
	[PRIORITY_NAME] [nvarchar](20) NOT NULL,
	[DESCRIPTION] [nvarchar](50) NULL,
 CONSTRAINT [Priority_PK] PRIMARY KEY CLUSTERED 
(
	[PRIORITY_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
