USE [OpManagerDB]
GO
/****** Object:  Table [dbo].[Evt_Vs_Pri_DOW_Trend_Tmp]    Script Date: 6/29/2019 5:47:34 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Evt_Vs_Pri_DOW_Trend_Tmp](
	[DAYOFWEEK] [nvarchar](3) NULL,
	[RID] [bigint] NOT NULL,
	[SRC_ID] [int] NOT NULL,
	[USER_ID] [int] NOT NULL,
	[SRC] [varchar](1) NOT NULL,
	[USER] [varchar](1) NOT NULL,
	[PRIORITY_ID] [bigint] NOT NULL,
	[EVENT_COUNT] [int] NULL
) ON [PRIMARY]
GO
