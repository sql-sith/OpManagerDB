USE [OpManagerDB]
GO
/****** Object:  Table [dbo].[AgentVsMOMappings]    Script Date: 6/29/2019 5:45:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AgentVsMOMappings](
	[AGENTID] [bigint] NOT NULL,
	[MOID] [bigint] NOT NULL,
	[DEFAULTMAPPINGID] [bigint] NOT NULL,
 CONSTRAINT [AgentVsMOMappings_PK] PRIMARY KEY CLUSTERED 
(
	[AGENTID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Index [IDX__1052824074]    Script Date: 6/29/2019 5:53:29 PM ******/
CREATE NONCLUSTERED INDEX [IDX__1052824074] ON [dbo].[AgentVsMOMappings]
(
	[AGENTID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[AgentVsMOMappings] ADD  DEFAULT ('-1') FOR [MOID]
GO
ALTER TABLE [dbo].[AgentVsMOMappings] ADD  DEFAULT ('-1') FOR [DEFAULTMAPPINGID]
GO
ALTER TABLE [dbo].[AgentVsMOMappings]  WITH CHECK ADD  CONSTRAINT [AgentVsMOMappings_FK1] FOREIGN KEY([AGENTID])
REFERENCES [dbo].[AgentObject] ([AGENTKEY])
GO
ALTER TABLE [dbo].[AgentVsMOMappings] CHECK CONSTRAINT [AgentVsMOMappings_FK1]
GO
