USE [OpManagerDB]
GO
/****** Object:  Table [dbo].[GroupTable]    Script Date: 6/29/2019 5:47:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[GroupTable](
	[NAME] [varchar](150) NOT NULL,
	[OWNERNAME] [varchar](25) NOT NULL,
	[MEMBERNAME] [varchar](100) NOT NULL,
	[MEMBEROWNERNAME] [varchar](25) NOT NULL
) ON [PRIMARY]
GO
