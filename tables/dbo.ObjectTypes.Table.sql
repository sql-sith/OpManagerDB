USE [OpManagerDB]
GO
/****** Object:  Table [dbo].[ObjectTypes]    Script Date: 6/29/2019 5:49:57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ObjectTypes](
	[OBJKEY] [varchar](100) NOT NULL,
	[CLASSNAME] [varchar](50) NULL
) ON [PRIMARY]
GO
