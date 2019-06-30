USE [OpManagerDB]
GO
/****** Object:  Table [dbo].[EventAlertFilter]    Script Date: 6/29/2019 5:47:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EventAlertFilter](
	[TYPE] [varchar](100) NOT NULL,
	[FILTERNAME] [varchar](100) NOT NULL,
	[ACTIONNAME] [varchar](100) NULL,
	[PROPKEY] [varchar](100) NULL,
	[PROPVALUE] [varchar](1000) NULL
) ON [PRIMARY]
GO
