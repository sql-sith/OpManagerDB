USE [OpManagerDB]
GO
/****** Object:  Table [dbo].[DataCollectionStatistics]    Script Date: 6/29/2019 5:46:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DataCollectionStatistics](
	[ID] [bigint] NOT NULL,
	[MODULE] [varchar](100) NOT NULL,
	[COLLECTIONTIME] [datetime] NOT NULL,
	[PROBENAME] [varchar](100) NULL,
	[TYPE] [int] NOT NULL,
	[COUNT] [int] NOT NULL,
	[REMARKS] [varchar](4000) NULL,
 CONSTRAINT [DataCollectionStatistics_PK1] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
