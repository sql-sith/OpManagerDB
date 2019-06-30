USE [OpManagerDB]
GO
/****** Object:  Table [dbo].[Num_Decimal_Opr_Expr]    Script Date: 6/29/2019 5:49:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Num_Decimal_Opr_Expr](
	[NUMERIC_EXPRESSION_ID] [bigint] NOT NULL,
	[CONSTANT] [float] NOT NULL,
	[OPERATOR] [int] NOT NULL,
	[RIGHT_EXPRESSION_ID] [bigint] NULL,
 CONSTRAINT [Num_Decimal_Opr_Expr_PK] PRIMARY KEY CLUSTERED 
(
	[NUMERIC_EXPRESSION_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Index [IDX_442016026]    Script Date: 6/29/2019 5:53:30 PM ******/
CREATE NONCLUSTERED INDEX [IDX_442016026] ON [dbo].[Num_Decimal_Opr_Expr]
(
	[NUMERIC_EXPRESSION_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IDX_817594967]    Script Date: 6/29/2019 5:53:30 PM ******/
CREATE NONCLUSTERED INDEX [IDX_817594967] ON [dbo].[Num_Decimal_Opr_Expr]
(
	[RIGHT_EXPRESSION_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Num_Decimal_Opr_Expr]  WITH CHECK ADD  CONSTRAINT [Num_Decimal_Opr_Expr_FK] FOREIGN KEY([NUMERIC_EXPRESSION_ID])
REFERENCES [dbo].[Numeric_Expressions] ([NUMERIC_EXPRESSION_ID])
GO
ALTER TABLE [dbo].[Num_Decimal_Opr_Expr] CHECK CONSTRAINT [Num_Decimal_Opr_Expr_FK]
GO
ALTER TABLE [dbo].[Num_Decimal_Opr_Expr]  WITH CHECK ADD  CONSTRAINT [Num_Decimal_Opr_Expr_FK1] FOREIGN KEY([RIGHT_EXPRESSION_ID])
REFERENCES [dbo].[Numeric_Expressions] ([NUMERIC_EXPRESSION_ID])
GO
ALTER TABLE [dbo].[Num_Decimal_Opr_Expr] CHECK CONSTRAINT [Num_Decimal_Opr_Expr_FK1]
GO
