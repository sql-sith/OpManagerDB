USE [OpManagerDB]
GO
/****** Object:  Table [dbo].[ThresholdValues]    Script Date: 6/29/2019 5:52:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ThresholdValues](
	[PROBEGROUP_ID] [bigint] NOT NULL,
	[RISING_MOS] [float] NULL,
	[RISING_JITTER] [int] NULL,
	[RISING_RTT] [int] NULL,
	[RISING_PACKETLOSS] [int] NULL,
	[RISING_LATENCY] [int] NULL,
	[FALLING_MOS] [float] NULL,
	[FALLING_JITTER] [int] NULL,
	[FALLING_RTT] [int] NULL,
	[FALLING_PACKETLOSS] [int] NULL,
	[FALLING_LATENCY] [int] NULL,
	[RISING_IPDV] [int] NULL,
	[FALLING_IPDV] [int] NULL,
	[RISING_IJ] [int] NULL,
	[FALLING_IJ] [int] NULL,
 CONSTRAINT [ThresholdValues_PK] PRIMARY KEY CLUSTERED 
(
	[PROBEGROUP_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Index [IDX_1683023095]    Script Date: 6/29/2019 5:53:30 PM ******/
CREATE NONCLUSTERED INDEX [IDX_1683023095] ON [dbo].[ThresholdValues]
(
	[PROBEGROUP_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[ThresholdValues]  WITH CHECK ADD  CONSTRAINT [ThresholdValues_FK] FOREIGN KEY([PROBEGROUP_ID])
REFERENCES [dbo].[Collector] ([PROBEGROUP_ID])
GO
ALTER TABLE [dbo].[ThresholdValues] CHECK CONSTRAINT [ThresholdValues_FK]
GO
