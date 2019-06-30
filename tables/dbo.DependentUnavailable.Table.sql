USE [OpManagerDB]
GO
/****** Object:  Table [dbo].[DependentUnavailable]    Script Date: 6/29/2019 5:47:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DependentUnavailable](
	[ELEMENTID] [bigint] NOT NULL,
	[STARTTIME] [datetime] NOT NULL,
	[ENDTIME] [datetime] NOT NULL,
	[REASON] [varchar](250) NULL,
 CONSTRAINT [DependentUnavailable_PK] PRIMARY KEY CLUSTERED 
(
	[ELEMENTID] ASC,
	[STARTTIME] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
