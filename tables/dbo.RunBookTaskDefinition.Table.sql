USE [OpManagerDB]
GO
/****** Object:  Table [dbo].[RunBookTaskDefinition]    Script Date: 6/29/2019 5:51:09 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RunBookTaskDefinition](
	[TASKID] [bigint] NOT NULL,
	[NAME] [varchar](100) NOT NULL,
	[DESCRIPTION] [varchar](200) NOT NULL,
	[HANDLERID] [bigint] NOT NULL,
	[ICONNAME] [varchar](100) NOT NULL,
	[CREATEDIALOGID] [int] NOT NULL,
 CONSTRAINT [RunBookTaskDefinition_PK1] PRIMARY KEY CLUSTERED 
(
	[TASKID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY],
 CONSTRAINT [RunBookTaskDefinition_UK0] UNIQUE NONCLUSTERED 
(
	[NAME] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Index [IDX_1491750512]    Script Date: 6/29/2019 5:53:30 PM ******/
CREATE NONCLUSTERED INDEX [IDX_1491750512] ON [dbo].[RunBookTaskDefinition]
(
	[HANDLERID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[RunBookTaskDefinition]  WITH CHECK ADD  CONSTRAINT [RunBookTaskDefinition_PK1_FK1] FOREIGN KEY([HANDLERID])
REFERENCES [dbo].[OpmDataSource] ([DATASOURCEID])
GO
ALTER TABLE [dbo].[RunBookTaskDefinition] CHECK CONSTRAINT [RunBookTaskDefinition_PK1_FK1]
GO
