USE [OpManagerDB]
GO
/****** Object:  Table [dbo].[AttributeAudit]    Script Date: 6/29/2019 5:46:10 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AttributeAudit](
	[ID] [int] NULL,
	[IDENTIFIER] [varchar](100) NULL,
	[TIMEOFFINISH] [varchar](30) NULL,
	[RETRIES] [int] NULL,
	[STATUS] [varchar](200) NULL
) ON [PRIMARY]
GO
