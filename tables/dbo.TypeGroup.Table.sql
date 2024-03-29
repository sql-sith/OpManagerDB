USE [OpManagerDB]
GO
/****** Object:  Table [dbo].[TypeGroup]    Script Date: 6/29/2019 5:52:30 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TypeGroup](
	[TYPEGROUPNAME] [varchar](50) NOT NULL,
 CONSTRAINT [TypeGrp_PK] PRIMARY KEY CLUSTERED 
(
	[TYPEGROUPNAME] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
