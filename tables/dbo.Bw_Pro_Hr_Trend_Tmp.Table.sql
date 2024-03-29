USE [OpManagerDB]
GO
/****** Object:  Table [dbo].[Bw_Pro_Hr_Trend_Tmp]    Script Date: 6/29/2019 5:46:24 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Bw_Pro_Hr_Trend_Tmp](
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
	[TOTAL_BYTES] [bigint] NULL
) ON [PRIMARY]
GO
