USE [OpManagerDB]
GO
/****** Object:  Table [dbo].[FaultRate]    Script Date: 6/29/2019 5:47:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FaultRate](
	[ID] [bigint] NOT NULL,
	[Time] [datetime] NOT NULL,
	[EventType] [varchar](100) NULL,
	[Count] [bigint] NOT NULL,
	[ProbeName] [varchar](100) NULL,
 CONSTRAINT [FaultRate_PK] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
