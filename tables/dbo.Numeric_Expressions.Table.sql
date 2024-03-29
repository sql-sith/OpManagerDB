USE [OpManagerDB]
GO
/****** Object:  Table [dbo].[Numeric_Expressions]    Script Date: 6/29/2019 5:49:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Numeric_Expressions](
	[NUMERIC_EXPRESSION_ID] [bigint] NOT NULL,
 CONSTRAINT [Numeric_Expressions_PK] PRIMARY KEY CLUSTERED 
(
	[NUMERIC_EXPRESSION_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Index [IDX_721218139]    Script Date: 6/29/2019 5:53:30 PM ******/
CREATE NONCLUSTERED INDEX [IDX_721218139] ON [dbo].[Numeric_Expressions]
(
	[NUMERIC_EXPRESSION_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Numeric_Expressions]  WITH CHECK ADD  CONSTRAINT [Numeric_Expressions_FK] FOREIGN KEY([NUMERIC_EXPRESSION_ID])
REFERENCES [dbo].[Expressions] ([EXPRESSION_ID])
GO
ALTER TABLE [dbo].[Numeric_Expressions] CHECK CONSTRAINT [Numeric_Expressions_FK]
GO
