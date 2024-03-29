USE [OpManagerDB]
GO
/****** Object:  Table [dbo].[AssetProps]    Script Date: 6/29/2019 5:46:09 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AssetProps](
	[PROPERTY] [bigint] NOT NULL,
	[VALUE] [varchar](100) NOT NULL,
 CONSTRAINT [AssetProps_PK] PRIMARY KEY CLUSTERED 
(
	[PROPERTY] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY],
 CONSTRAINT [AssetProps_UK1] UNIQUE NONCLUSTERED 
(
	[VALUE] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
