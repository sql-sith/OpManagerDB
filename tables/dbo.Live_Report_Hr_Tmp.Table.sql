USE [OpManagerDB]
GO
/****** Object:  Table [dbo].[Live_Report_Hr_Tmp]    Script Date: 6/29/2019 5:48:47 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Live_Report_Hr_Tmp](
	[RID] [bigint] NOT NULL,
	[HOUR] [datetime] NOT NULL,
	[DURATION] [int] NULL,
	[BYTES_INBOUND] [bigint] NULL,
	[BYTES_OUTBOUND] [bigint] NULL,
	[TOTAL_BYTES] [bigint] NULL,
	[BPS_IN] [bigint] NULL,
	[BPS_OUT] [bigint] NULL,
	[BPS] [bigint] NULL,
	[IF_IND] [bigint] NOT NULL
) ON [PRIMARY]
GO
