USE [OpManagerDB]
GO
/****** Object:  Table [dbo].[LocationProperty]    Script Date: 6/29/2019 5:48:49 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LocationProperty](
	[KEY] [varchar](50) NOT NULL,
	[VALUE] [varchar](500) NOT NULL,
 CONSTRAINT [LocationProperty_PK] PRIMARY KEY CLUSTERED 
(
	[KEY] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
