USE [OpManagerDB]
GO
/****** Object:  Table [dbo].[Criteria]    Script Date: 6/29/2019 5:46:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Criteria](
	[QUERYID] [bigint] NOT NULL,
	[CRITERIAID] [bigint] NOT NULL,
	[LOGICALREPRESENTATION] [varchar](200) NULL,
	[IS_EXPRESSION_PARAM] [bit] NOT NULL,
 CONSTRAINT [Criteria_PK] PRIMARY KEY CLUSTERED 
(
	[QUERYID] ASC,
	[CRITERIAID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Index [IDX_1241253253]    Script Date: 6/29/2019 5:53:29 PM ******/
CREATE NONCLUSTERED INDEX [IDX_1241253253] ON [dbo].[Criteria]
(
	[QUERYID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Criteria] ADD  DEFAULT ((0)) FOR [IS_EXPRESSION_PARAM]
GO
ALTER TABLE [dbo].[Criteria]  WITH CHECK ADD  CONSTRAINT [Criteria_FK] FOREIGN KEY([QUERYID])
REFERENCES [dbo].[SelectQuery] ([QUERYID])
GO
ALTER TABLE [dbo].[Criteria] CHECK CONSTRAINT [Criteria_FK]
GO
