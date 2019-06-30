USE [OpManagerDB]
GO
/****** Object:  Table [dbo].[VMMemStatsDaily]    Script Date: 6/29/2019 5:52:54 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[VMMemStatsDaily](
	[VM_ID] [bigint] NOT NULL,
	[COLLECTIONTIME] [datetime] NOT NULL,
	[MEM_USAGEPERC] [float] NULL,
	[MEM_ACTIVEKB] [bigint] NULL,
	[MEM_CTRLKB] [bigint] NULL,
	[MEM_OVERHEADKB] [bigint] NULL,
	[MEM_CONSUMEDKB] [bigint] NULL,
	[MEM_GRANTEDKB] [bigint] NULL,
	[MEM_SHAREDKB] [bigint] NULL,
	[MEM_SWAPPEDKB] [bigint] NULL,
 CONSTRAINT [VMMemStatsDaily_PK] PRIMARY KEY CLUSTERED 
(
	[VM_ID] ASC,
	[COLLECTIONTIME] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
