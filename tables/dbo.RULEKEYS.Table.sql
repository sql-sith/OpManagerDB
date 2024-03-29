USE [OpManagerDB]
GO
/****** Object:  Table [dbo].[RULEKEYS]    Script Date: 6/29/2019 5:51:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RULEKEYS](
	[RULEKEYID] [int] NOT NULL,
	[RULENAME] [varchar](50) NOT NULL,
	[RTID] [int] NOT NULL,
	[RULEKEYTYPEID] [int] NOT NULL,
	[DISPLAYNAME] [varchar](100) NOT NULL,
 CONSTRAINT [RULEKEYS_PK1] PRIMARY KEY CLUSTERED 
(
	[RULEKEYID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Index [IDX__1330045378]    Script Date: 6/29/2019 5:53:30 PM ******/
CREATE NONCLUSTERED INDEX [IDX__1330045378] ON [dbo].[RULEKEYS]
(
	[RULEKEYTYPEID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IDX__1330045379]    Script Date: 6/29/2019 5:53:30 PM ******/
CREATE NONCLUSTERED INDEX [IDX__1330045379] ON [dbo].[RULEKEYS]
(
	[RTID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[RULEKEYS]  WITH CHECK ADD  CONSTRAINT [RULEKEYS_FK1] FOREIGN KEY([RTID])
REFERENCES [dbo].[RULETYPES] ([RTID])
GO
ALTER TABLE [dbo].[RULEKEYS] CHECK CONSTRAINT [RULEKEYS_FK1]
GO
ALTER TABLE [dbo].[RULEKEYS]  WITH CHECK ADD  CONSTRAINT [RULEKEYS_FK2] FOREIGN KEY([RULEKEYTYPEID])
REFERENCES [dbo].[RULEKEYTYPES] ([RULEKEYTYPEID])
GO
ALTER TABLE [dbo].[RULEKEYS] CHECK CONSTRAINT [RULEKEYS_FK2]
GO
