USE [OpManagerDB]
GO
/****** Object:  Table [dbo].[RunBookEvalTaskHierarchy]    Script Date: 6/29/2019 5:51:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RunBookEvalTaskHierarchy](
	[ASSOCID] [bigint] NOT NULL,
	[FAILTASK] [bigint] NULL,
 CONSTRAINT [RunBookEvalTaskHierarchy_PK1] PRIMARY KEY CLUSTERED 
(
	[ASSOCID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Index [IDX__95604562]    Script Date: 6/29/2019 5:53:30 PM ******/
CREATE NONCLUSTERED INDEX [IDX__95604562] ON [dbo].[RunBookEvalTaskHierarchy]
(
	[FAILTASK] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IDX__95604563]    Script Date: 6/29/2019 5:53:30 PM ******/
CREATE NONCLUSTERED INDEX [IDX__95604563] ON [dbo].[RunBookEvalTaskHierarchy]
(
	[ASSOCID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[RunBookEvalTaskHierarchy]  WITH CHECK ADD  CONSTRAINT [RunBookEvalTaskHierarchy_FK1] FOREIGN KEY([ASSOCID])
REFERENCES [dbo].[RunBookTaskAssociation] ([ASSOCID])
GO
ALTER TABLE [dbo].[RunBookEvalTaskHierarchy] CHECK CONSTRAINT [RunBookEvalTaskHierarchy_FK1]
GO
ALTER TABLE [dbo].[RunBookEvalTaskHierarchy]  WITH CHECK ADD  CONSTRAINT [RunBookEvalTaskHierarchy_FK2] FOREIGN KEY([FAILTASK])
REFERENCES [dbo].[RunBookTaskAssociation] ([ASSOCID])
GO
ALTER TABLE [dbo].[RunBookEvalTaskHierarchy] CHECK CONSTRAINT [RunBookEvalTaskHierarchy_FK2]
GO
