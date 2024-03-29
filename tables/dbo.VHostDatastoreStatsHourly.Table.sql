USE [OpManagerDB]
GO
/****** Object:  Table [dbo].[VHostDatastoreStatsHourly]    Script Date: 6/29/2019 5:52:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[VHostDatastoreStatsHourly](
	[VDATASTORE_ID] [bigint] NOT NULL,
	[COLLECTIONTIME] [datetime] NOT NULL,
	[READ_KBPS] [float] NULL,
	[WRITE_KBPS] [float] NULL,
	[NUM_READ] [bigint] NULL,
	[NUM_WRITE] [bigint] NULL,
	[READ_LATENCY] [float] NULL,
	[WRITE_LATENCY] [float] NULL,
	[NORMALIZED_LATENCY] [float] NULL,
	[AGG_IO_OPERS] [bigint] NULL,
 CONSTRAINT [VHostDatastoreStatsHourly_PK] PRIMARY KEY CLUSTERED 
(
	[VDATASTORE_ID] ASC,
	[COLLECTIONTIME] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
