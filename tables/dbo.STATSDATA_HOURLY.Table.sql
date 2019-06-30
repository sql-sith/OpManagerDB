USE [OpManagerDB]
GO
/****** Object:  Table [dbo].[STATSDATA_HOURLY]    Script Date: 6/29/2019 5:51:48 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[STATSDATA_HOURLY](
	[POLLID] [bigint] NOT NULL,
	[INSTANCE] [varchar](255) NOT NULL,
	[TTIME] [bigint] NOT NULL,
	[VAL] [decimal](38, 10) NOT NULL,
	[MINVALUE] [decimal](38, 10) NOT NULL,
	[MAXVALUE] [decimal](38, 10) NOT NULL,
	[TINTERVAL] [bigint] NOT NULL,
 CONSTRAINT [STATSDATA_HOURLY_PK] PRIMARY KEY CLUSTERED 
(
	[POLLID] ASC,
	[TTIME] ASC,
	[INSTANCE] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Index [STATSDATA_HOURLY_IDX1]    Script Date: 6/29/2019 5:53:30 PM ******/
CREATE NONCLUSTERED INDEX [STATSDATA_HOURLY_IDX1] ON [dbo].[STATSDATA_HOURLY]
(
	[POLLID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [STATSDATA_HOURLY_IDX2]    Script Date: 6/29/2019 5:53:30 PM ******/
CREATE NONCLUSTERED INDEX [STATSDATA_HOURLY_IDX2] ON [dbo].[STATSDATA_HOURLY]
(
	[INSTANCE] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [STATSDATA_HOURLY_IDX3]    Script Date: 6/29/2019 5:53:30 PM ******/
CREATE NONCLUSTERED INDEX [STATSDATA_HOURLY_IDX3] ON [dbo].[STATSDATA_HOURLY]
(
	[TTIME] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
