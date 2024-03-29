USE [OpManagerDB]
GO
/****** Object:  Table [dbo].[CruncherState]    Script Date: 6/29/2019 5:46:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CruncherState](
	[TABLE_NAME] [nvarchar](32) NOT NULL,
	[CRUNCHER_POINTER] [bigint] NOT NULL,
 CONSTRAINT [CruncherState_PK] PRIMARY KEY CLUSTERED 
(
	[TABLE_NAME] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
