USE [OpManagerDB]
GO
/****** Object:  Table [dbo].[NCMCMAvaActions]    Script Date: 6/29/2019 5:49:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NCMCMAvaActions](
	[ACTION_ID] [int] NOT NULL,
	[ACTION_NAME] [varchar](100) NOT NULL,
 CONSTRAINT [NCMCMAvaActions_PK] PRIMARY KEY CLUSTERED 
(
	[ACTION_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
