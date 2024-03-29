USE [OpManagerDB]
GO
/****** Object:  Table [dbo].[InitiatorMetrics_6_2019]    Script Date: 6/29/2019 5:48:26 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[InitiatorMetrics_6_2019](
	[SID] [int] NOT NULL,
	[HOPS_RESPONDED] [int] NOT NULL,
	[HOPS_INPATH] [int] NOT NULL,
	[STATE] [varchar](75) NOT NULL,
	[COLLECTIONTIME] [datetime] NOT NULL,
	[VALIDREPORT] [int] NOT NULL,
	[ERRORREPORT] [int] NOT NULL,
	[NODATA] [int] NOT NULL
) ON [PRIMARY]
GO
