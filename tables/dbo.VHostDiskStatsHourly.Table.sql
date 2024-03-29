USE [OpManagerDB]
GO
/****** Object:  Table [dbo].[VHostDiskStatsHourly]    Script Date: 6/29/2019 5:52:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[VHostDiskStatsHourly](
	[VHOSTDISK_ID] [bigint] NOT NULL,
	[COLLECTIONTIME] [datetime] NOT NULL,
	[DEVICE_READ_LATENCY] [bigint] NOT NULL,
	[DEVICE_WRITE_LATENCY] [bigint] NOT NULL,
	[READ_TRAFFIC_KBPS] [bigint] NOT NULL,
	[WRITE_TRAFFIC_KBPS] [bigint] NOT NULL,
	[NO_OF_READS] [bigint] NOT NULL,
	[NO_OF_WRITES] [bigint] NOT NULL,
	[NO_OF_BUSRESET] [bigint] NOT NULL,
	[NO_OF_ABORTS] [bigint] NOT NULL,
	[TOTAL_READ_LATENCY] [bigint] NOT NULL,
	[TOTAL_WRITE_LATENCY] [bigint] NOT NULL,
 CONSTRAINT [VHostDiskStatsHourly_PK] PRIMARY KEY CLUSTERED 
(
	[VHOSTDISK_ID] ASC,
	[COLLECTIONTIME] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
