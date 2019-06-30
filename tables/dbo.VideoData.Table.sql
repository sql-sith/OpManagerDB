USE [OpManagerDB]
GO
/****** Object:  Table [dbo].[VideoData]    Script Date: 6/29/2019 5:52:48 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[VideoData](
	[PROBE_ID] [bigint] NOT NULL,
	[COLLECTIONTIME] [datetime] NOT NULL,
	[ERRORS] [bigint] NULL,
	[TOTAL_PKT_SKIPPED] [bigint] NULL,
	[TOTAL_PKT_LATE] [bigint] NULL,
	[TOTAL_PKT_LOST] [bigint] NULL,
	[TOTAL_PKT_OUTOFSEQ] [bigint] NULL,
 CONSTRAINT [VideoData_PK] PRIMARY KEY CLUSTERED 
(
	[PROBE_ID] ASC,
	[COLLECTIONTIME] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
