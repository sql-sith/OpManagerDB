USE [OpManagerDB]
GO
/****** Object:  Table [dbo].[ProcessStatisticsHourly]    Script Date: 6/29/2019 5:50:25 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProcessStatisticsHourly](
	[ID] [bigint] NOT NULL,
	[COLLECTIONTIME] [datetime] NOT NULL,
	[MINCPU] [real] NOT NULL,
	[MAXCPU] [real] NOT NULL,
	[PCPU] [real] NOT NULL,
	[MINMEM] [real] NOT NULL,
	[MAXMEM] [real] NOT NULL,
	[PMEM] [real] NOT NULL,
	[MINIC] [int] NOT NULL,
	[MAXIC] [int] NOT NULL,
	[INSTANCECOUNT] [int] NOT NULL,
	[MINABSMEM] [bigint] NOT NULL,
	[MAXABSMEM] [bigint] NOT NULL,
	[ABSPMEM] [bigint] NOT NULL,
 CONSTRAINT [ProcessStatisticsHourly_PK] PRIMARY KEY CLUSTERED 
(
	[ID] ASC,
	[COLLECTIONTIME] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
