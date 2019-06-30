USE [OpManagerDB]
GO
/****** Object:  Table [dbo].[ApplicationOutHourly_NFA1]    Script Date: 6/29/2019 5:46:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ApplicationOutHourly_NFA1](
	[ID] [bigint] NOT NULL,
	[IF_ID] [int] NOT NULL,
	[APP_ID] [int] NOT NULL,
	[OCTETS] [bigint] NOT NULL,
	[COLLECTION_TIME] [datetime] NOT NULL,
	[MIN_OCTETS] [bigint] NOT NULL,
	[MAX_OCTETS] [bigint] NOT NULL,
	[AVG_OCTETS] [bigint] NOT NULL,
 CONSTRAINT [ApplicationOutHourly_PKZ_NFA1] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Index [ApplicationOutHourly_IDX0_NFA1]    Script Date: 6/29/2019 5:53:29 PM ******/
CREATE NONCLUSTERED INDEX [ApplicationOutHourly_IDX0_NFA1] ON [dbo].[ApplicationOutHourly_NFA1]
(
	[IF_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [ApplicationOutHourly_IDX1_NFA1]    Script Date: 6/29/2019 5:53:29 PM ******/
CREATE NONCLUSTERED INDEX [ApplicationOutHourly_IDX1_NFA1] ON [dbo].[ApplicationOutHourly_NFA1]
(
	[APP_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
