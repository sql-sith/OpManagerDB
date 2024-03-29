USE [OpManagerDB]
GO
/****** Object:  Table [dbo].[ElementAvailabilityHourly]    Script Date: 6/29/2019 5:47:20 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ElementAvailabilityHourly](
	[ELEMENTID] [bigint] NOT NULL,
	[COLLECTIONTIME] [datetime] NOT NULL,
	[ELEMENTDOWN] [bigint] NOT NULL,
	[DEPENDENTUNAVAILABLE] [bigint] NOT NULL,
	[ONHOLD] [bigint] NOT NULL,
	[ONMAINTENANCE] [bigint] NOT NULL,
	[PARENTDOWN] [bigint] NOT NULL,
	[NOTMONITORED] [bigint] NOT NULL,
	[UPTIME] [bigint] NOT NULL,
 CONSTRAINT [ElementAvailabilityHourly_PK] PRIMARY KEY CLUSTERED 
(
	[ELEMENTID] ASC,
	[COLLECTIONTIME] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Index [EAHourly0_ndx]    Script Date: 6/29/2019 5:53:30 PM ******/
CREATE NONCLUSTERED INDEX [EAHourly0_ndx] ON [dbo].[ElementAvailabilityHourly]
(
	[ELEMENTID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [EAHourly1_ndx]    Script Date: 6/29/2019 5:53:30 PM ******/
CREATE NONCLUSTERED INDEX [EAHourly1_ndx] ON [dbo].[ElementAvailabilityHourly]
(
	[COLLECTIONTIME] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
