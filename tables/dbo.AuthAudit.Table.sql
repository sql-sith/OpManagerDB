USE [OpManagerDB]
GO
/****** Object:  Table [dbo].[AuthAudit]    Script Date: 6/29/2019 5:46:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AuthAudit](
	[USERNAME] [varchar](30) NOT NULL,
	[OPERATION] [varchar](100) NOT NULL,
	[AUDITTIME] [varchar](30) NOT NULL,
	[STATUS] [varchar](10) NOT NULL
) ON [PRIMARY]
GO
