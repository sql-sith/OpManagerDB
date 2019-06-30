USE [OpManagerDB]
GO
/****** Object:  Table [dbo].[TreeQuery]    Script Date: 6/29/2019 5:52:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TreeQuery](
	[QUERYID] [bigint] NOT NULL,
	[TREETYPE] [varchar](50) NULL,
	[DEPTH] [int] NULL,
 CONSTRAINT [TreeQuery_PK] PRIMARY KEY CLUSTERED 
(
	[QUERYID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Index [IDX_1919675770]    Script Date: 6/29/2019 5:53:30 PM ******/
CREATE NONCLUSTERED INDEX [IDX_1919675770] ON [dbo].[TreeQuery]
(
	[QUERYID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[TreeQuery]  WITH CHECK ADD  CONSTRAINT [TreeQuery_FK] FOREIGN KEY([QUERYID])
REFERENCES [dbo].[SelectQuery] ([QUERYID])
GO
ALTER TABLE [dbo].[TreeQuery] CHECK CONSTRAINT [TreeQuery_FK]
GO
