USE [OpManagerDB]
GO
/****** Object:  Table [dbo].[VOIPJitterErrors_6_2019]    Script Date: 6/29/2019 5:52:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[VOIPJitterErrors_6_2019](
	[PROBE_ID] [bigint] NOT NULL,
	[COLLECTIONTIME] [datetime] NOT NULL,
	[PACKET_OUT_OF_SEQUENCE] [bigint] NOT NULL,
	[PACKET_MIA] [bigint] NOT NULL,
	[PACKET_LATE_ARRIVAL] [bigint] NOT NULL,
	[INTERNAL_ERRORS] [bigint] NOT NULL,
	[SYSTEM_BUSY] [bigint] NOT NULL,
 CONSTRAINT [VOIPJitterErrors_6_2019_PK] PRIMARY KEY CLUSTERED 
(
	[PROBE_ID] ASC,
	[COLLECTIONTIME] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
