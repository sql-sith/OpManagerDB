USE [OpManagerDB]
GO
/****** Object:  Table [dbo].[TempDependentUnavailableHourly]    Script Date: 6/29/2019 5:52:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TempDependentUnavailableHourly](
	[ELEMENTID] [bigint] NOT NULL,
	[HOURTIME] [datetime] NOT NULL,
	[DURATION] [int] NOT NULL,
 CONSTRAINT [TempDependentUnavailableHourly_PK] PRIMARY KEY CLUSTERED 
(
	[ELEMENTID] ASC,
	[HOURTIME] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
