USE [OpManagerDB]
GO
/****** Object:  Table [dbo].[TotalStatistics_Daily_2019]    Script Date: 6/29/2019 5:52:26 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TotalStatistics_Daily_2019](
	[TOTALATTEMPTS] [bigint] NOT NULL,
	[TOTALCOMPLETIONS] [bigint] NOT NULL,
	[TOTALERRORS] [bigint] NOT NULL,
	[COLLECTIONTIME] [datetime] NOT NULL,
	[TOTALOVERTHRESHOLD] [bigint] NOT NULL,
	[PROBE_ID] [bigint] NOT NULL,
 CONSTRAINT [TotalStatistics_Daily_2019_PK] PRIMARY KEY CLUSTERED 
(
	[COLLECTIONTIME] ASC,
	[PROBE_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
