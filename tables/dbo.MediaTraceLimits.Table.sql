USE [OpManagerDB]
GO
/****** Object:  Table [dbo].[MediaTraceLimits]    Script Date: 6/29/2019 5:48:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MediaTraceLimits](
	[ID] [bigint] NOT NULL,
	[SESSION_ID] [varchar](25) NOT NULL,
	[FIELDNAME] [int] NOT NULL,
	[THRESHOLDLIMIT] [bigint] NOT NULL,
 CONSTRAINT [MediaTraceLimits_PK] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
