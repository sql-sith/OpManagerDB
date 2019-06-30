USE [OpManagerDB]
GO
/****** Object:  Table [dbo].[VACMVIEWTREEFAMILYTABLE]    Script Date: 6/29/2019 5:52:44 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[VACMVIEWTREEFAMILYTABLE](
	[VIEWNAME] [varchar](65) NULL,
	[SUBTREE] [varchar](255) NULL,
	[MASK] [varchar](35) NULL,
	[TYPE] [varchar](5) NULL,
	[STORAGETYPE] [varchar](5) NULL,
	[STATUS] [varchar](5) NULL
) ON [PRIMARY]
GO
