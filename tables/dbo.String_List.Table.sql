USE [OpManagerDB]
GO
/****** Object:  Table [dbo].[String_List]    Script Date: 6/29/2019 5:52:02 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[String_List](
	[LIST_ID] [bigint] NOT NULL,
	[STRING_EXPR_ID] [bigint] NOT NULL,
 CONSTRAINT [String_List_PK] PRIMARY KEY CLUSTERED 
(
	[LIST_ID] ASC,
	[STRING_EXPR_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Index [IDX_1726503384]    Script Date: 6/29/2019 5:53:30 PM ******/
CREATE NONCLUSTERED INDEX [IDX_1726503384] ON [dbo].[String_List]
(
	[LIST_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IDX_1981997401]    Script Date: 6/29/2019 5:53:30 PM ******/
CREATE NONCLUSTERED INDEX [IDX_1981997401] ON [dbo].[String_List]
(
	[STRING_EXPR_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[String_List]  WITH CHECK ADD  CONSTRAINT [String_List_FK] FOREIGN KEY([LIST_ID])
REFERENCES [dbo].[Array_List] ([LIST_ID])
GO
ALTER TABLE [dbo].[String_List] CHECK CONSTRAINT [String_List_FK]
GO
ALTER TABLE [dbo].[String_List]  WITH CHECK ADD  CONSTRAINT [String_List_FK1] FOREIGN KEY([STRING_EXPR_ID])
REFERENCES [dbo].[String_Expressions] ([STRING_EXPRESSION_ID])
GO
ALTER TABLE [dbo].[String_List] CHECK CONSTRAINT [String_List_FK1]
GO
