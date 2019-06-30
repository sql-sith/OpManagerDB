USE [OpManagerDB]
GO
/****** Object:  Table [dbo].[RunBookExecution]    Script Date: 6/29/2019 5:51:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RunBookExecution](
	[EXECUTIONID] [bigint] NOT NULL,
	[RBID] [bigint] NOT NULL,
	[MOID] [bigint] NOT NULL,
	[TRIGGERTYPE] [int] NOT NULL,
	[TRIGGERID] [bigint] NULL,
	[TRIGGERINSTANCE] [varchar](200) NULL,
	[STARTTIME] [datetime] NOT NULL,
 CONSTRAINT [RunBookExecution_PK1] PRIMARY KEY CLUSTERED 
(
	[EXECUTIONID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
