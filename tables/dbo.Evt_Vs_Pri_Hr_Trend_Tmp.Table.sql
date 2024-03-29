USE [OpManagerDB]
GO
/****** Object:  Table [dbo].[Evt_Vs_Pri_Hr_Trend_Tmp]    Script Date: 6/29/2019 5:47:34 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Evt_Vs_Pri_Hr_Trend_Tmp](
	[HOUROFDAY] [int] NOT NULL,
	[RID] [bigint] NOT NULL,
	[SRC_ID] [bigint] NULL,
	[USER_ID] [bigint] NULL,
	[SRC] [nvarchar](50) NULL,
	[USER] [nvarchar](90) NULL,
	[PRIORITY_ID] [bigint] NOT NULL,
	[EVENT_COUNT] [int] NULL
) ON [PRIMARY]
GO
