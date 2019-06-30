USE [OpManagerDB]
GO
/****** Object:  Table [dbo].[WlcApplicationIn6Hour_WLC1]    Script Date: 6/29/2019 5:53:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[WlcApplicationIn6Hour_WLC1](
	[ID] [bigint] NOT NULL,
	[APMAC_ID] [int] NOT NULL,
	[NBAR_APP_ID] [bigint] NOT NULL,
	[OCTETS] [bigint] NOT NULL,
	[MIN_OCTETS] [bigint] NOT NULL,
	[MAX_OCTETS] [bigint] NOT NULL,
	[AVG_OCTETS] [bigint] NOT NULL,
	[COLLECTION_TIME] [datetime] NOT NULL,
 CONSTRAINT [WlcApplicationIn6Hour_PKZ_WLC1] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Index [WlcApplicationIn6Hour_IDX0_WLC1]    Script Date: 6/29/2019 5:53:30 PM ******/
CREATE NONCLUSTERED INDEX [WlcApplicationIn6Hour_IDX0_WLC1] ON [dbo].[WlcApplicationIn6Hour_WLC1]
(
	[APMAC_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [WlcApplicationIn6Hour_IDX1_WLC1]    Script Date: 6/29/2019 5:53:30 PM ******/
CREATE NONCLUSTERED INDEX [WlcApplicationIn6Hour_IDX1_WLC1] ON [dbo].[WlcApplicationIn6Hour_WLC1]
(
	[NBAR_APP_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
