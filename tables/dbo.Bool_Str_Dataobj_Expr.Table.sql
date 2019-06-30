USE [OpManagerDB]
GO
/****** Object:  Table [dbo].[Bool_Str_Dataobj_Expr]    Script Date: 6/29/2019 5:46:20 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Bool_Str_Dataobj_Expr](
	[BOOLEAN_EXPRESSION_ID] [bigint] NOT NULL,
	[STRING_EXPRESSION_ID] [bigint] NOT NULL,
	[OPERATOR] [int] NOT NULL,
	[CONSTANT] [varchar](250) NOT NULL,
 CONSTRAINT [Bool_Str_DataObj_PK] PRIMARY KEY CLUSTERED 
(
	[BOOLEAN_EXPRESSION_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Index [IDX_1948724794]    Script Date: 6/29/2019 5:53:29 PM ******/
CREATE NONCLUSTERED INDEX [IDX_1948724794] ON [dbo].[Bool_Str_Dataobj_Expr]
(
	[BOOLEAN_EXPRESSION_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IDX_280926519]    Script Date: 6/29/2019 5:53:29 PM ******/
CREATE NONCLUSTERED INDEX [IDX_280926519] ON [dbo].[Bool_Str_Dataobj_Expr]
(
	[STRING_EXPRESSION_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Bool_Str_Dataobj_Expr]  WITH CHECK ADD  CONSTRAINT [Bool_Str_DataObj_FK] FOREIGN KEY([BOOLEAN_EXPRESSION_ID])
REFERENCES [dbo].[Boolean_Expressions] ([BOOLEAN_EXPRESSION_ID])
GO
ALTER TABLE [dbo].[Bool_Str_Dataobj_Expr] CHECK CONSTRAINT [Bool_Str_DataObj_FK]
GO
ALTER TABLE [dbo].[Bool_Str_Dataobj_Expr]  WITH CHECK ADD  CONSTRAINT [Bool_Str_DataObj_FK1] FOREIGN KEY([STRING_EXPRESSION_ID])
REFERENCES [dbo].[String_Expressions] ([STRING_EXPRESSION_ID])
GO
ALTER TABLE [dbo].[Bool_Str_Dataobj_Expr] CHECK CONSTRAINT [Bool_Str_DataObj_FK1]
GO
