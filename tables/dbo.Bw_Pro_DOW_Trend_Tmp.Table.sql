USE [OpManagerDB]
GO
/****** Object:  Table [dbo].[Bw_Pro_DOW_Trend_Tmp]    Script Date: 6/29/2019 5:46:23 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Bw_Pro_DOW_Trend_Tmp](
	[DAYOFWEEK] [nvarchar](3) NULL,
	[RID] [bigint] NOT NULL,
	[SRC_ID] [int] NOT NULL,
	[USER_ID] [int] NOT NULL,
	[SRC] [varchar](1) NOT NULL,
	[USER] [varchar](1) NOT NULL,
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
