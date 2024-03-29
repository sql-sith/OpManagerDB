USE [OpManagerDB]
GO
/****** Object:  Table [dbo].[Workflow_Unit]    Script Date: 6/29/2019 5:53:25 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Workflow_Unit](
	[WORKFLOW_UNIT_ID] [bigint] NOT NULL,
 CONSTRAINT [Workflow_Unit_PK] PRIMARY KEY CLUSTERED 
(
	[WORKFLOW_UNIT_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
