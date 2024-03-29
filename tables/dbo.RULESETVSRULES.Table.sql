USE [OpManagerDB]
GO
/****** Object:  Table [dbo].[RULESETVSRULES]    Script Date: 6/29/2019 5:51:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RULESETVSRULES](
	[SETID] [bigint] NOT NULL,
	[RULEID] [bigint] NOT NULL,
 CONSTRAINT [RULESETVSRULES_PK1] PRIMARY KEY CLUSTERED 
(
	[SETID] ASC,
	[RULEID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Index [IDX_1547636481]    Script Date: 6/29/2019 5:53:30 PM ******/
CREATE NONCLUSTERED INDEX [IDX_1547636481] ON [dbo].[RULESETVSRULES]
(
	[SETID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IDX_1547636482]    Script Date: 6/29/2019 5:53:30 PM ******/
CREATE NONCLUSTERED INDEX [IDX_1547636482] ON [dbo].[RULESETVSRULES]
(
	[RULEID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[RULESETVSRULES]  WITH CHECK ADD  CONSTRAINT [RULESETVSRULES_FK1] FOREIGN KEY([SETID])
REFERENCES [dbo].[RULESET] ([SETID])
GO
ALTER TABLE [dbo].[RULESETVSRULES] CHECK CONSTRAINT [RULESETVSRULES_FK1]
GO
ALTER TABLE [dbo].[RULESETVSRULES]  WITH CHECK ADD  CONSTRAINT [RULESETVSRULES_FK2] FOREIGN KEY([RULEID])
REFERENCES [dbo].[RULEDEFINITION] ([RULEID])
GO
ALTER TABLE [dbo].[RULESETVSRULES] CHECK CONSTRAINT [RULESETVSRULES_FK2]
GO
