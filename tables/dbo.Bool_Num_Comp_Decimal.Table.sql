USE [OpManagerDB]
GO
/****** Object:  Table [dbo].[Bool_Num_Comp_Decimal]    Script Date: 6/29/2019 5:46:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Bool_Num_Comp_Decimal](
	[BOOLEAN_EXPRESSION_ID] [bigint] NOT NULL,
	[LEFT_EXPRESSION_ID] [bigint] NOT NULL,
	[OPERATOR] [int] NOT NULL,
	[CONSTANT] [float] NOT NULL,
 CONSTRAINT [Bool_Num_Comp_Decimal_PK] PRIMARY KEY CLUSTERED 
(
	[BOOLEAN_EXPRESSION_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Index [IDX__1789273412]    Script Date: 6/29/2019 5:53:29 PM ******/
CREATE NONCLUSTERED INDEX [IDX__1789273412] ON [dbo].[Bool_Num_Comp_Decimal]
(
	[LEFT_EXPRESSION_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IDX__334813163]    Script Date: 6/29/2019 5:53:29 PM ******/
CREATE NONCLUSTERED INDEX [IDX__334813163] ON [dbo].[Bool_Num_Comp_Decimal]
(
	[BOOLEAN_EXPRESSION_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Bool_Num_Comp_Decimal]  WITH CHECK ADD  CONSTRAINT [Bool_Num_Comp_Decimal_FK] FOREIGN KEY([BOOLEAN_EXPRESSION_ID])
REFERENCES [dbo].[Boolean_Expressions] ([BOOLEAN_EXPRESSION_ID])
GO
ALTER TABLE [dbo].[Bool_Num_Comp_Decimal] CHECK CONSTRAINT [Bool_Num_Comp_Decimal_FK]
GO
ALTER TABLE [dbo].[Bool_Num_Comp_Decimal]  WITH CHECK ADD  CONSTRAINT [Bool_Num_Comp_Decimal_FK1] FOREIGN KEY([LEFT_EXPRESSION_ID])
REFERENCES [dbo].[Numeric_Expressions] ([NUMERIC_EXPRESSION_ID])
GO
ALTER TABLE [dbo].[Bool_Num_Comp_Decimal] CHECK CONSTRAINT [Bool_Num_Comp_Decimal_FK1]
GO
