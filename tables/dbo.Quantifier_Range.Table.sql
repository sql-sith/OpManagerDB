USE [OpManagerDB]
GO
/****** Object:  Table [dbo].[Quantifier_Range]    Script Date: 6/29/2019 5:50:37 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Quantifier_Range](
	[PARENT_EXPR_ID] [bigint] NOT NULL,
	[MAX_REPEAT_TIMES] [int] NOT NULL,
	[MIN_REPEAT_TIMES] [int] NOT NULL,
 CONSTRAINT [Quantifier_Range_PK] PRIMARY KEY CLUSTERED 
(
	[PARENT_EXPR_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Index [IDX__1856649232]    Script Date: 6/29/2019 5:53:30 PM ******/
CREATE NONCLUSTERED INDEX [IDX__1856649232] ON [dbo].[Quantifier_Range]
(
	[PARENT_EXPR_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Quantifier_Range]  WITH CHECK ADD  CONSTRAINT [Quantifier_Range_FK] FOREIGN KEY([PARENT_EXPR_ID])
REFERENCES [dbo].[Quantifier] ([PARENT_EXPR_ID])
GO
ALTER TABLE [dbo].[Quantifier_Range] CHECK CONSTRAINT [Quantifier_Range_FK]
GO
