USE [OpManagerDB]
GO
/****** Object:  Table [dbo].[Bw_Pro_Hr_Trend]    Script Date: 6/29/2019 5:46:24 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Bw_Pro_Hr_Trend](
	[HOUROFDAY] [int] NOT NULL,
	[RID] [bigint] NOT NULL,
	[SRC_ID] [bigint] NOT NULL,
	[USER_ID] [bigint] NOT NULL,
	[SRC] [nvarchar](50) NULL,
	[USER] [nvarchar](90) NULL,
	[PROTOCOL_ID] [bigint] NOT NULL,
	[PROTOCOL] [nvarchar](50) NULL,
	[PG_ID] [bigint] NULL,
	[PROTOCOL_GROUP] [nvarchar](50) NULL,
	[DURATION] [bigint] NULL,
	[REQUEST_COUNT] [int] NULL,
	[BWUSAGETYPE] [int] NOT NULL,
	[BYTES_INBOUND] [bigint] NULL,
	[BYTES_OUTBOUND] [bigint] NULL,
	[TOTAL_BYTES] [bigint] NULL,
 CONSTRAINT [Bw_Pro_Hr_Trend_PK] PRIMARY KEY CLUSTERED 
(
	[HOUROFDAY] ASC,
	[RID] ASC,
	[SRC_ID] ASC,
	[USER_ID] ASC,
	[PROTOCOL_ID] ASC,
	[BWUSAGETYPE] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Index [IDX__270757770]    Script Date: 6/29/2019 5:53:29 PM ******/
CREATE NONCLUSTERED INDEX [IDX__270757770] ON [dbo].[Bw_Pro_Hr_Trend]
(
	[PG_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IDX__270757773]    Script Date: 6/29/2019 5:53:29 PM ******/
CREATE NONCLUSTERED INDEX [IDX__270757773] ON [dbo].[Bw_Pro_Hr_Trend]
(
	[PROTOCOL_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IDX__270757774]    Script Date: 6/29/2019 5:53:29 PM ******/
CREATE NONCLUSTERED INDEX [IDX__270757774] ON [dbo].[Bw_Pro_Hr_Trend]
(
	[RID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Bw_Pro_Hr_Trend] ADD  DEFAULT ('0') FOR [REQUEST_COUNT]
GO
ALTER TABLE [dbo].[Bw_Pro_Hr_Trend] ADD  DEFAULT ('1') FOR [BWUSAGETYPE]
GO
ALTER TABLE [dbo].[Bw_Pro_Hr_Trend] ADD  DEFAULT ('0') FOR [BYTES_INBOUND]
GO
ALTER TABLE [dbo].[Bw_Pro_Hr_Trend] ADD  DEFAULT ('0') FOR [BYTES_OUTBOUND]
GO
ALTER TABLE [dbo].[Bw_Pro_Hr_Trend] ADD  DEFAULT ('0') FOR [TOTAL_BYTES]
GO
ALTER TABLE [dbo].[Bw_Pro_Hr_Trend]  WITH CHECK ADD  CONSTRAINT [Bw_Pro_Hr_Trend_FK2] FOREIGN KEY([RID])
REFERENCES [dbo].[Resources] ([RESOURCEID])
GO
ALTER TABLE [dbo].[Bw_Pro_Hr_Trend] CHECK CONSTRAINT [Bw_Pro_Hr_Trend_FK2]
GO
ALTER TABLE [dbo].[Bw_Pro_Hr_Trend]  WITH CHECK ADD  CONSTRAINT [Bw_Pro_Hr_Trend_FK3] FOREIGN KEY([PROTOCOL_ID])
REFERENCES [dbo].[Protocols] ([PROTOCOL_ID])
GO
ALTER TABLE [dbo].[Bw_Pro_Hr_Trend] CHECK CONSTRAINT [Bw_Pro_Hr_Trend_FK3]
GO
ALTER TABLE [dbo].[Bw_Pro_Hr_Trend]  WITH CHECK ADD  CONSTRAINT [Bw_Pro_Hr_Trend_FK6] FOREIGN KEY([PG_ID])
REFERENCES [dbo].[ProtocolGroups] ([PG_ID])
GO
ALTER TABLE [dbo].[Bw_Pro_Hr_Trend] CHECK CONSTRAINT [Bw_Pro_Hr_Trend_FK6]
GO
