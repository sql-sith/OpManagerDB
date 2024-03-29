USE [OpManagerDB]
GO
/****** Object:  Table [dbo].[Bool_Time_Comp_Const]    Script Date: 6/29/2019 5:46:20 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Bool_Time_Comp_Const](
	[BOOLEAN_EXPRESSION_ID] [bigint] NOT NULL,
	[LEFT_TIME_EXPRESSION_ID] [bigint] NOT NULL,
	[OPERATOR] [int] NOT NULL,
	[CONSTANT] [datetime] NOT NULL,
 CONSTRAINT [Bool_Time_Comp_Const_PK] PRIMARY KEY CLUSTERED 
(
	[BOOLEAN_EXPRESSION_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Index [IDX__2137522467]    Script Date: 6/29/2019 5:53:29 PM ******/
CREATE NONCLUSTERED INDEX [IDX__2137522467] ON [dbo].[Bool_Time_Comp_Const]
(
	[LEFT_TIME_EXPRESSION_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IDX__900236332]    Script Date: 6/29/2019 5:53:29 PM ******/
CREATE NONCLUSTERED INDEX [IDX__900236332] ON [dbo].[Bool_Time_Comp_Const]
(
	[BOOLEAN_EXPRESSION_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Bool_Time_Comp_Const]  WITH CHECK ADD  CONSTRAINT [Bool_Time_Comp_Const_FK] FOREIGN KEY([BOOLEAN_EXPRESSION_ID])
REFERENCES [dbo].[Boolean_Expressions] ([BOOLEAN_EXPRESSION_ID])
GO
ALTER TABLE [dbo].[Bool_Time_Comp_Const] CHECK CONSTRAINT [Bool_Time_Comp_Const_FK]
GO
ALTER TABLE [dbo].[Bool_Time_Comp_Const]  WITH CHECK ADD  CONSTRAINT [Bool_Time_Comp_Const_FK1] FOREIGN KEY([LEFT_TIME_EXPRESSION_ID])
REFERENCES [dbo].[Time_Expressions] ([TIME_EXPRESSION_ID])
GO
ALTER TABLE [dbo].[Bool_Time_Comp_Const] CHECK CONSTRAINT [Bool_Time_Comp_Const_FK1]
GO
