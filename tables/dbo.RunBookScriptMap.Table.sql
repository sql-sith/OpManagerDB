USE [OpManagerDB]
GO
/****** Object:  Table [dbo].[RunBookScriptMap]    Script Date: 6/29/2019 5:51:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RunBookScriptMap](
	[ASSOCID] [bigint] NOT NULL,
	[SCRIPTID] [bigint] NOT NULL,
 CONSTRAINT [RunBookScriptMap_PK1] PRIMARY KEY CLUSTERED 
(
	[ASSOCID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Index [IDX__226513973]    Script Date: 6/29/2019 5:53:30 PM ******/
CREATE NONCLUSTERED INDEX [IDX__226513973] ON [dbo].[RunBookScriptMap]
(
	[SCRIPTID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IDX__226513974]    Script Date: 6/29/2019 5:53:30 PM ******/
CREATE NONCLUSTERED INDEX [IDX__226513974] ON [dbo].[RunBookScriptMap]
(
	[ASSOCID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[RunBookScriptMap]  WITH CHECK ADD  CONSTRAINT [RunBookScriptMap_FK1] FOREIGN KEY([ASSOCID])
REFERENCES [dbo].[RunBookTaskAssociation] ([ASSOCID])
GO
ALTER TABLE [dbo].[RunBookScriptMap] CHECK CONSTRAINT [RunBookScriptMap_FK1]
GO
ALTER TABLE [dbo].[RunBookScriptMap]  WITH CHECK ADD  CONSTRAINT [RunBookScriptMap_FK2] FOREIGN KEY([SCRIPTID])
REFERENCES [dbo].[ScriptDetails] ([SCRIPTID])
GO
ALTER TABLE [dbo].[RunBookScriptMap] CHECK CONSTRAINT [RunBookScriptMap_FK2]
GO
