USE [OpManagerDB]
GO
/****** Object:  Table [dbo].[RelationalCriteria]    Script Date: 6/29/2019 5:50:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RelationalCriteria](
	[QUERYID] [bigint] NOT NULL,
	[CRITERIAID] [bigint] NOT NULL,
	[RELATIONALCRITERIAID] [bigint] NOT NULL,
	[TABLEALIAS] [varchar](50) NULL,
	[COLUMNNAME] [varchar](50) NULL,
	[COMPARATOR] [int] NULL,
	[VALUE] [text] NULL,
	[CASESENSITIVE] [bit] NOT NULL,
	[VALUE_DATATYPE] [varchar](30) NULL,
 CONSTRAINT [Rel_Crit_PK] PRIMARY KEY CLUSTERED 
(
	[QUERYID] ASC,
	[CRITERIAID] ASC,
	[RELATIONALCRITERIAID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Index [IDX__1460160833]    Script Date: 6/29/2019 5:53:30 PM ******/
CREATE NONCLUSTERED INDEX [IDX__1460160833] ON [dbo].[RelationalCriteria]
(
	[QUERYID] ASC,
	[CRITERIAID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IDX_1979654483]    Script Date: 6/29/2019 5:53:30 PM ******/
CREATE NONCLUSTERED INDEX [IDX_1979654483] ON [dbo].[RelationalCriteria]
(
	[QUERYID] ASC,
	[TABLEALIAS] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[RelationalCriteria] ADD  DEFAULT ((1)) FOR [CASESENSITIVE]
GO
ALTER TABLE [dbo].[RelationalCriteria]  WITH CHECK ADD  CONSTRAINT [Rel_Criteria_FK] FOREIGN KEY([QUERYID], [CRITERIAID])
REFERENCES [dbo].[Criteria] ([QUERYID], [CRITERIAID])
GO
ALTER TABLE [dbo].[RelationalCriteria] CHECK CONSTRAINT [Rel_Criteria_FK]
GO
ALTER TABLE [dbo].[RelationalCriteria]  WITH CHECK ADD  CONSTRAINT [Rel_Criteria_FK2] FOREIGN KEY([QUERYID], [TABLEALIAS])
REFERENCES [dbo].[SelectTable] ([QUERYID], [TABLEALIAS])
GO
ALTER TABLE [dbo].[RelationalCriteria] CHECK CONSTRAINT [Rel_Criteria_FK2]
GO
