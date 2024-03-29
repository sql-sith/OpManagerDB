USE [OpManagerDB]
GO
/****** Object:  Table [dbo].[Expression]    Script Date: 6/29/2019 5:47:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Expression](
	[EXPRESSION_ID] [bigint] NOT NULL,
	[ROOT_EXPRESSION_ID] [bigint] NOT NULL,
	[EXPRESSION_NAME] [varchar](50) NOT NULL,
	[VALUE_TYPE] [int] NOT NULL,
 CONSTRAINT [Expression_PK] PRIMARY KEY CLUSTERED 
(
	[EXPRESSION_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Index [IDX_1974702597]    Script Date: 6/29/2019 5:53:30 PM ******/
CREATE NONCLUSTERED INDEX [IDX_1974702597] ON [dbo].[Expression]
(
	[ROOT_EXPRESSION_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Expression]  WITH CHECK ADD  CONSTRAINT [Expression_FK1] FOREIGN KEY([ROOT_EXPRESSION_ID])
REFERENCES [dbo].[Expression] ([EXPRESSION_ID])
GO
ALTER TABLE [dbo].[Expression] CHECK CONSTRAINT [Expression_FK1]
GO
