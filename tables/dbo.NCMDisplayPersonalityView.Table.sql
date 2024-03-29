USE [OpManagerDB]
GO
/****** Object:  Table [dbo].[NCMDisplayPersonalityView]    Script Date: 6/29/2019 5:49:23 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NCMDisplayPersonalityView](
	[PERSONALITY] [varchar](50) NOT NULL,
	[VIEWTYPE] [varchar](30) NOT NULL,
	[VIEWNAME] [varchar](50) NOT NULL,
 CONSTRAINT [NCMDisplayPersonalityView_PK] PRIMARY KEY CLUSTERED 
(
	[PERSONALITY] ASC,
	[VIEWTYPE] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
