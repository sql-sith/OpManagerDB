USE [OpManagerDB]
GO
/****** Object:  Table [dbo].[ParentCategory]    Script Date: 6/29/2019 5:50:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ParentCategory](
	[CATEGORYID] [bigint] NOT NULL,
	[PARENTNAME] [varchar](100) NOT NULL,
 CONSTRAINT [ParentCategory_PK] PRIMARY KEY CLUSTERED 
(
	[CATEGORYID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Index [IDX_677164853]    Script Date: 6/29/2019 5:53:30 PM ******/
CREATE NONCLUSTERED INDEX [IDX_677164853] ON [dbo].[ParentCategory]
(
	[CATEGORYID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[ParentCategory]  WITH CHECK ADD  CONSTRAINT [ParentCategory_FK1] FOREIGN KEY([CATEGORYID])
REFERENCES [dbo].[CategoryDefinition] ([CATEGORYID])
GO
ALTER TABLE [dbo].[ParentCategory] CHECK CONSTRAINT [ParentCategory_FK1]
GO
