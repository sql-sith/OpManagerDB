USE [OpManagerDB]
GO
/****** Object:  Table [dbo].[VOIPJitter]    Script Date: 6/29/2019 5:52:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[VOIPJitter](
	[PROBE_ID] [bigint] NOT NULL,
	[COLLECTIONTIME] [datetime] NOT NULL,
	[JITTER_IN] [bigint] NOT NULL,
	[JITTER_OUT] [bigint] NOT NULL,
	[AVG_JITTER] [bigint] NOT NULL,
	[MIN_MOS] [bigint] NOT NULL,
	[AVG_MOS] [bigint] NOT NULL,
	[MAX_MOS] [bigint] NOT NULL,
	[AVG_RTT] [bigint] NOT NULL,
	[MIN_RTT] [bigint] NOT NULL,
	[MAX_RTT] [bigint] NOT NULL,
 CONSTRAINT [VOIPJitter_PK] PRIMARY KEY CLUSTERED 
(
	[PROBE_ID] ASC,
	[COLLECTIONTIME] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
