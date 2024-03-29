USE [OpManagerDB]
GO
/****** Object:  Table [dbo].[RoundTripTime_Daily]    Script Date: 6/29/2019 5:51:02 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RoundTripTime_Daily](
	[MAXLATENCY] [bigint] NOT NULL,
	[AVERAGE] [float] NOT NULL,
	[MINLATENCY] [bigint] NOT NULL,
	[COLLECTIONTIME] [datetime] NOT NULL,
	[PROBE_ID] [bigint] NOT NULL,
 CONSTRAINT [RoundTripTime_Daily_PK] PRIMARY KEY CLUSTERED 
(
	[COLLECTIONTIME] ASC,
	[PROBE_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
