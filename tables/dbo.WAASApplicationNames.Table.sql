USE [OpManagerDB]
GO
/****** Object:  Table [dbo].[WAASApplicationNames]    Script Date: 6/29/2019 5:53:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[WAASApplicationNames](
	[ID] [int] NOT NULL,
	[WAAS_APP_NAME] [varchar](100) NOT NULL,
 CONSTRAINT [WAASApplicationNames_PK] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
