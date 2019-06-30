USE [OpManagerDB]
GO
/****** Object:  Table [dbo].[STATSDATA_CACHE]    Script Date: 6/29/2019 5:51:47 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[STATSDATA_CACHE](
	[CACHE_ID] [bigint] NOT NULL,
	[DEVICE_ID] [bigint] NOT NULL,
	[INSTANCE] [varchar](250) NULL,
	[STATS_NAME] [varchar](100) NULL,
	[VALUE] [varchar](250) NULL,
	[TTIME] [bigint] NOT NULL,
 CONSTRAINT [STATSDATA_CACHE_PK] PRIMARY KEY CLUSTERED 
(
	[CACHE_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
