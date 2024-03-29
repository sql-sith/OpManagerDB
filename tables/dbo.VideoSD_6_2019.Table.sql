USE [OpManagerDB]
GO
/****** Object:  Table [dbo].[VideoSD_6_2019]    Script Date: 6/29/2019 5:52:48 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[VideoSD_6_2019](
	[PROBE_ID] [bigint] NOT NULL,
	[COLLECTIONTIME] [datetime] NOT NULL,
	[MIN_POS_JITTER] [bigint] NULL,
	[MIN_NEG_JITTER] [bigint] NULL,
	[MAX_POS_JITTER] [bigint] NULL,
	[MAX_NEG_JITTER] [bigint] NULL,
	[AVG_POS_JITTER] [bigint] NULL,
	[AVG_NEG_JITTER] [bigint] NULL,
	[AVG_POS_NEG_JITTER] [bigint] NULL,
	[AVG_IA_OUT_JITTER] [bigint] NULL,
	[AVG_IA_JITTER] [bigint] NULL,
	[AVG_OWTT] [bigint] NULL,
	[MIN_OWTT] [bigint] NULL,
	[MAX_OWTT] [bigint] NULL,
 CONSTRAINT [VideoSD_6_2019_PK] PRIMARY KEY CLUSTERED 
(
	[PROBE_ID] ASC,
	[COLLECTIONTIME] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
