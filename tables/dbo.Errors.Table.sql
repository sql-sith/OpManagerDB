USE [OpManagerDB]
GO
/****** Object:  Table [dbo].[Errors]    Script Date: 6/29/2019 5:47:30 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Errors](
	[PROBE_ID] [bigint] NOT NULL,
	[COLLECTIONTIME] [datetime] NOT NULL,
	[VERIFYERRORS] [bigint] NOT NULL,
	[TOTALBUSIES] [bigint] NOT NULL,
	[TOTALSEQERRORS] [bigint] NOT NULL,
	[TOTALDROPS] [bigint] NOT NULL,
	[TOTALPACKETSLATE] [bigint] NOT NULL,
 CONSTRAINT [Errors_PK] PRIMARY KEY CLUSTERED 
(
	[PROBE_ID] ASC,
	[COLLECTIONTIME] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
