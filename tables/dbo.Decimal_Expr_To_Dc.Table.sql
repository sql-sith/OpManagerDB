USE [OpManagerDB]
GO
/****** Object:  Table [dbo].[Decimal_Expr_To_Dc]    Script Date: 6/29/2019 5:47:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Decimal_Expr_To_Dc](
	[DECIMAL_EXPRESSION_ID] [bigint] NOT NULL,
	[EXPRESSION_ID] [bigint] NOT NULL,
 CONSTRAINT [Decimal_Expr_To_Dc_PK] PRIMARY KEY CLUSTERED 
(
	[DECIMAL_EXPRESSION_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Index [IDX__248965091]    Script Date: 6/29/2019 5:53:30 PM ******/
CREATE NONCLUSTERED INDEX [IDX__248965091] ON [dbo].[Decimal_Expr_To_Dc]
(
	[DECIMAL_EXPRESSION_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IDX_872016820]    Script Date: 6/29/2019 5:53:30 PM ******/
CREATE NONCLUSTERED INDEX [IDX_872016820] ON [dbo].[Decimal_Expr_To_Dc]
(
	[EXPRESSION_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Decimal_Expr_To_Dc]  WITH CHECK ADD  CONSTRAINT [Decimal_Expr_To_Dc_FK] FOREIGN KEY([DECIMAL_EXPRESSION_ID])
REFERENCES [dbo].[Decimal_Expressions] ([DECIMAL_EXPRESSION_ID])
GO
ALTER TABLE [dbo].[Decimal_Expr_To_Dc] CHECK CONSTRAINT [Decimal_Expr_To_Dc_FK]
GO
ALTER TABLE [dbo].[Decimal_Expr_To_Dc]  WITH CHECK ADD  CONSTRAINT [Decimal_Expr_To_Dc_FK1] FOREIGN KEY([EXPRESSION_ID])
REFERENCES [dbo].[Expressions] ([EXPRESSION_ID])
GO
ALTER TABLE [dbo].[Decimal_Expr_To_Dc] CHECK CONSTRAINT [Decimal_Expr_To_Dc_FK1]
GO
