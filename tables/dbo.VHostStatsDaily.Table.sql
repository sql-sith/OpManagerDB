USE [OpManagerDB]
GO
/****** Object:  Table [dbo].[VHostStatsDaily]    Script Date: 6/29/2019 5:52:47 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[VHostStatsDaily](
	[VHOST_ID] [bigint] NOT NULL,
	[COLLECTIONTIME] [datetime] NOT NULL,
	[CPU_RESERVED_CAPACITY] [int] NOT NULL,
	[AVG_CPUUSAGE_MHZ] [int] NOT NULL,
	[AVG_CPUUSAGE_PERC] [float] NOT NULL,
	[MEM_UTILPERC] [float] NOT NULL,
	[MEM_USEDKB] [bigint] NOT NULL,
	[MEM_CAPACITYMB] [bigint] NOT NULL,
	[MEM_ACTIVEKB] [bigint] NOT NULL,
	[MEM_OVERHEADKB] [bigint] NOT NULL,
	[MEM_RESERVED_CAPACITY] [bigint] NOT NULL,
	[MEM_SHAREDKB] [bigint] NOT NULL,
	[MEM_SHARED_COMMONKB] [bigint] NOT NULL,
	[MEM_SWAPIN] [bigint] NOT NULL,
	[MEM_SWAPOUT] [bigint] NOT NULL,
	[MEM_SWAPUSEDKB] [bigint] NOT NULL,
	[TOTAL_NUM_VM] [bigint] NOT NULL,
	[NET_USAGE_KBPS] [bigint] NOT NULL,
	[DISK_USAGE_KBPS] [bigint] NOT NULL,
	[VHOST_STATUS] [int] NOT NULL,
	[POWER_STATE] [int] NOT NULL,
	[CONNECTION_STATUS] [int] NOT NULL,
 CONSTRAINT [VHostStatsDaily_PK] PRIMARY KEY CLUSTERED 
(
	[VHOST_ID] ASC,
	[COLLECTIONTIME] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
