USE [OpManagerDB]
GO
/****** Object:  Table [dbo].[NamedViewToAuthorizedViewTable]    Script Date: 6/29/2019 5:49:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NamedViewToAuthorizedViewTable](
	[NAMEDVIEWNAME] [varchar](50) NOT NULL,
	[AUTHORIZEDVIEWNAME] [varchar](50) NOT NULL
) ON [PRIMARY]
GO
