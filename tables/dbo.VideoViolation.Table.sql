USE [OpManagerDB]
GO
/****** Object:  Table [dbo].[VideoViolation]    Script Date: 6/29/2019 5:52:49 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[VideoViolation](
	[PROBE_ID] [bigint] NOT NULL,
	[COLLECTIONTIME] [datetime] NOT NULL,
	[IAJ_AVG_OUT_VIOLATION] [bigint] NULL,
	[IAJ_MAX_OUT_VIOLATION] [bigint] NULL,
	[IAJ_AVG_VIOLATION] [bigint] NULL,
	[IAJ_MAX_VIOLATION] [bigint] NULL,
	[JITTER_AVG_VIOLATION] [bigint] NULL,
	[JITTER_MAX_VIOLATION] [bigint] NULL,
	[OWTT_AVG_VIOLATION] [bigint] NULL,
	[OWTT_MAX_VIOLATION] [bigint] NULL,
 CONSTRAINT [VideoViolation_PK] PRIMARY KEY CLUSTERED 
(
	[PROBE_ID] ASC,
	[COLLECTIONTIME] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
