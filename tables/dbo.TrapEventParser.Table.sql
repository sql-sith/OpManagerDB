USE [OpManagerDB]
GO
/****** Object:  Table [dbo].[TrapEventParser]    Script Date: 6/29/2019 5:52:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TrapEventParser](
	[TYPE] [varchar](100) NOT NULL,
	[NAME] [varchar](100) NOT NULL,
	[PROPKEY] [varchar](100) NULL,
	[PROPVALUE] [varchar](1000) NULL
) ON [PRIMARY]
GO
