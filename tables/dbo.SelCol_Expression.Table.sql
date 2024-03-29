USE [OpManagerDB]
GO
/****** Object:  Table [dbo].[SelCol_Expression]    Script Date: 6/29/2019 5:51:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SelCol_Expression](
	[QUERYID] [bigint] NOT NULL,
	[TABLEALIAS] [varchar](50) NOT NULL,
	[COLUMNINDEX] [int] NOT NULL,
	[EXPRESSION_ID] [bigint] NOT NULL,
 CONSTRAINT [SelCol_Expression_PK] PRIMARY KEY CLUSTERED 
(
	[QUERYID] ASC,
	[TABLEALIAS] ASC,
	[COLUMNINDEX] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Index [IDX__1613663105]    Script Date: 6/29/2019 5:53:30 PM ******/
CREATE NONCLUSTERED INDEX [IDX__1613663105] ON [dbo].[SelCol_Expression]
(
	[EXPRESSION_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IDX__1613663106]    Script Date: 6/29/2019 5:53:30 PM ******/
CREATE NONCLUSTERED INDEX [IDX__1613663106] ON [dbo].[SelCol_Expression]
(
	[QUERYID] ASC,
	[TABLEALIAS] ASC,
	[COLUMNINDEX] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[SelCol_Expression]  WITH CHECK ADD  CONSTRAINT [SelCol_Expression_FK1] FOREIGN KEY([QUERYID], [TABLEALIAS], [COLUMNINDEX])
REFERENCES [dbo].[SelectColumn] ([QUERYID], [TABLEALIAS], [COLUMNINDEX])
GO
ALTER TABLE [dbo].[SelCol_Expression] CHECK CONSTRAINT [SelCol_Expression_FK1]
GO
ALTER TABLE [dbo].[SelCol_Expression]  WITH CHECK ADD  CONSTRAINT [SelCol_Expression_FK2] FOREIGN KEY([EXPRESSION_ID])
REFERENCES [dbo].[Expression] ([EXPRESSION_ID])
GO
ALTER TABLE [dbo].[SelCol_Expression] CHECK CONSTRAINT [SelCol_Expression_FK2]
GO
