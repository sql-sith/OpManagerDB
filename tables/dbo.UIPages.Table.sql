USE [OpManagerDB]
GO
/****** Object:  Table [dbo].[UIPages]    Script Date: 6/29/2019 5:52:35 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UIPages](
	[PAGE_ID] [int] NOT NULL,
	[PAGE_NAME] [varchar](100) NOT NULL,
 CONSTRAINT [UIPages_PK] PRIMARY KEY CLUSTERED 
(
	[PAGE_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
