USE [OpManagerDB]
GO
/****** Object:  Table [dbo].[ConfigAttributes]    Script Date: 6/29/2019 5:46:45 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ConfigAttributes](
	[AKEY] [varchar](120) NULL,
	[NAME] [varchar](100) NULL,
	[VALUE] [varchar](250) NULL
) ON [PRIMARY]
GO
