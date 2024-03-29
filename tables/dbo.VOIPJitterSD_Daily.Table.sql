USE [OpManagerDB]
GO
/****** Object:  Table [dbo].[VOIPJitterSD_Daily]    Script Date: 6/29/2019 5:53:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[VOIPJitterSD_Daily](
	[PROBE_ID] [bigint] NOT NULL,
	[COLLECTIONTIME] [datetime] NOT NULL,
	[PACKETLOSS] [bigint] NOT NULL,
	[PACKETLOSS_PERC] [float] NOT NULL,
	[AVG_JITTER] [bigint] NOT NULL,
	[AVG_POSITIVE_JITTER] [bigint] NOT NULL,
	[MIN_POSITIVE_JITTER] [bigint] NOT NULL,
	[MAX_POSITIVE_JITTER] [bigint] NOT NULL,
	[AVG_NEGATIVE_JITTER] [bigint] NOT NULL,
	[MIN_NEGATIVE_JITTER] [bigint] NOT NULL,
	[MAX_NEGATIVE_JITTER] [bigint] NOT NULL,
	[MIN_OWLATENCY] [bigint] NOT NULL,
	[AVG_OWLATENCY] [bigint] NOT NULL,
	[MAX_OWLATENCY] [bigint] NOT NULL,
 CONSTRAINT [VOIPJitterSD_Daily_PK] PRIMARY KEY CLUSTERED 
(
	[PROBE_ID] ASC,
	[COLLECTIONTIME] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
