USE [OpManagerDB]
GO
/****** Object:  Table [dbo].[Str_Expr_To_Str]    Script Date: 6/29/2019 5:52:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Str_Expr_To_Str](
	[STRING_EXPRESSION_ID] [bigint] NOT NULL,
	[EXPRESSION_ID] [bigint] NOT NULL,
 CONSTRAINT [Str_Expr_To_Str_PK] PRIMARY KEY CLUSTERED 
(
	[STRING_EXPRESSION_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Index [IDX__76909029]    Script Date: 6/29/2019 5:53:30 PM ******/
CREATE NONCLUSTERED INDEX [IDX__76909029] ON [dbo].[Str_Expr_To_Str]
(
	[STRING_EXPRESSION_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IDX_1910787446]    Script Date: 6/29/2019 5:53:30 PM ******/
CREATE NONCLUSTERED INDEX [IDX_1910787446] ON [dbo].[Str_Expr_To_Str]
(
	[EXPRESSION_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Str_Expr_To_Str]  WITH CHECK ADD  CONSTRAINT [Str_Expr_To_Str_FK] FOREIGN KEY([STRING_EXPRESSION_ID])
REFERENCES [dbo].[String_Expressions] ([STRING_EXPRESSION_ID])
GO
ALTER TABLE [dbo].[Str_Expr_To_Str] CHECK CONSTRAINT [Str_Expr_To_Str_FK]
GO
ALTER TABLE [dbo].[Str_Expr_To_Str]  WITH CHECK ADD  CONSTRAINT [Str_Expr_To_Str_FK1] FOREIGN KEY([EXPRESSION_ID])
REFERENCES [dbo].[Expressions] ([EXPRESSION_ID])
GO
ALTER TABLE [dbo].[Str_Expr_To_Str] CHECK CONSTRAINT [Str_Expr_To_Str_FK1]
GO
