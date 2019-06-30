USE [OpManagerDB]
GO
/****** Object:  Table [dbo].[WLCDstIf6Hour_WLC1]    Script Date: 6/29/2019 5:53:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[WLCDstIf6Hour_WLC1](
	[ID] [bigint] NOT NULL,
	[DST_IF] [int] NOT NULL,
	[OCTETS] [bigint] NOT NULL,
	[PACKETS] [bigint] NOT NULL,
	[COLLECTION_TIME] [datetime] NOT NULL,
	[MIN_OCTETS] [bigint] NOT NULL,
	[MAX_OCTETS] [bigint] NOT NULL,
	[AVG_OCTETS] [bigint] NOT NULL,
 CONSTRAINT [WLCDstIf6Hour_PKZ_WLC1] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Index [WLCdstIf6hour_IDX0_WLC1]    Script Date: 6/29/2019 5:53:30 PM ******/
CREATE NONCLUSTERED INDEX [WLCdstIf6hour_IDX0_WLC1] ON [dbo].[WLCDstIf6Hour_WLC1]
(
	[DST_IF] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
