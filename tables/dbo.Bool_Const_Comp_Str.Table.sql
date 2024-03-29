USE [OpManagerDB]
GO
/****** Object:  Table [dbo].[Bool_Const_Comp_Str]    Script Date: 6/29/2019 5:46:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Bool_Const_Comp_Str](
	[BOOLEAN_EXPRESSION_ID] [bigint] NOT NULL,
	[CONSTANT] [varchar](250) NOT NULL,
	[OPERATOR] [int] NOT NULL,
	[RIGHT_EXPRESSION_ID] [bigint] NOT NULL,
 CONSTRAINT [Bool_Const_Comp_Str_PK] PRIMARY KEY CLUSTERED 
(
	[BOOLEAN_EXPRESSION_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Index [IDX__488023086]    Script Date: 6/29/2019 5:53:29 PM ******/
CREATE NONCLUSTERED INDEX [IDX__488023086] ON [dbo].[Bool_Const_Comp_Str]
(
	[BOOLEAN_EXPRESSION_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IDX_2051153567]    Script Date: 6/29/2019 5:53:29 PM ******/
CREATE NONCLUSTERED INDEX [IDX_2051153567] ON [dbo].[Bool_Const_Comp_Str]
(
	[RIGHT_EXPRESSION_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Bool_Const_Comp_Str]  WITH CHECK ADD  CONSTRAINT [Bool_Const_Comp_Str_FK] FOREIGN KEY([BOOLEAN_EXPRESSION_ID])
REFERENCES [dbo].[Boolean_Expressions] ([BOOLEAN_EXPRESSION_ID])
GO
ALTER TABLE [dbo].[Bool_Const_Comp_Str] CHECK CONSTRAINT [Bool_Const_Comp_Str_FK]
GO
ALTER TABLE [dbo].[Bool_Const_Comp_Str]  WITH CHECK ADD  CONSTRAINT [Bool_Const_Comp_Str_FK1] FOREIGN KEY([RIGHT_EXPRESSION_ID])
REFERENCES [dbo].[String_Expressions] ([STRING_EXPRESSION_ID])
GO
ALTER TABLE [dbo].[Bool_Const_Comp_Str] CHECK CONSTRAINT [Bool_Const_Comp_Str_FK1]
GO
