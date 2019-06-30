USE [OpManagerDB]
GO
/****** Object:  Table [dbo].[Udef_Char_Cls_Expr]    Script Date: 6/29/2019 5:52:34 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Udef_Char_Cls_Expr](
	[CHAR_CLASS_EXPR_ID] [bigint] NOT NULL,
 CONSTRAINT [Udef_Char_Cls_Expr_PK] PRIMARY KEY CLUSTERED 
(
	[CHAR_CLASS_EXPR_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Index [IDX__2091302272]    Script Date: 6/29/2019 5:53:30 PM ******/
CREATE NONCLUSTERED INDEX [IDX__2091302272] ON [dbo].[Udef_Char_Cls_Expr]
(
	[CHAR_CLASS_EXPR_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Udef_Char_Cls_Expr]  WITH CHECK ADD  CONSTRAINT [Udef_Char_Cls_Expr_FK] FOREIGN KEY([CHAR_CLASS_EXPR_ID])
REFERENCES [dbo].[User_Def_Char_Class] ([CHAR_CLASS_EXPR_ID])
GO
ALTER TABLE [dbo].[Udef_Char_Cls_Expr] CHECK CONSTRAINT [Udef_Char_Cls_Expr_FK]
GO
