USE [OpManagerDB]
GO
/****** Object:  Table [dbo].[DataCollectionAttributes]    Script Date: 6/29/2019 5:46:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DataCollectionAttributes](
	[NAME] [varchar](50) NULL,
	[PROPKEY] [varchar](50) NULL,
	[PROPNAME] [varchar](30) NULL,
	[PROPVAL] [varchar](200) NULL
) ON [PRIMARY]
GO
