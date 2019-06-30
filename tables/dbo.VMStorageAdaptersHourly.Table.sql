USE [OpManagerDB]
GO
/****** Object:  Table [dbo].[VMStorageAdaptersHourly]    Script Date: 6/29/2019 5:52:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[VMStorageAdaptersHourly](
	[ID] [bigint] NOT NULL,
	[STORAGEID] [varchar](50) NOT NULL,
	[STORAGENAME] [varchar](250) NOT NULL,
	[COLLECTIONTIME] [datetime] NOT NULL,
	[MINNUMREADS] [int] NOT NULL,
	[MAXNUMREADS] [int] NOT NULL,
	[NUMREADS] [int] NOT NULL,
	[MINNUMWRITES] [int] NOT NULL,
	[MAXNUMWRITES] [int] NOT NULL,
	[NUMWRITES] [int] NOT NULL,
	[MINKBREADS] [int] NOT NULL,
	[MAXKBREADS] [int] NOT NULL,
	[KBREADS] [int] NOT NULL,
	[MINKBWRITES] [int] NOT NULL,
	[MAXKBWRITES] [int] NOT NULL,
	[KBWRITES] [int] NOT NULL,
 CONSTRAINT [VMStorageAdaptersHourly_PK1] PRIMARY KEY CLUSTERED 
(
	[ID] ASC,
	[STORAGEID] ASC,
	[COLLECTIONTIME] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
