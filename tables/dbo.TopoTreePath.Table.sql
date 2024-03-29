USE [OpManagerDB]
GO
/****** Object:  Table [dbo].[TopoTreePath]    Script Date: 6/29/2019 5:52:23 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TopoTreePath](
	[ANCESTORID] [bigint] NULL,
	[DESCENDANTID] [bigint] NOT NULL,
	[NODELEVEL] [int] NOT NULL,
 CONSTRAINT [TopoTreePath_PK] PRIMARY KEY CLUSTERED 
(
	[DESCENDANTID] ASC,
	[NODELEVEL] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Index [IDX_929406378]    Script Date: 6/29/2019 5:53:30 PM ******/
CREATE NONCLUSTERED INDEX [IDX_929406378] ON [dbo].[TopoTreePath]
(
	[DESCENDANTID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[TopoTreePath]  WITH CHECK ADD  CONSTRAINT [TopoTreePath_FK1] FOREIGN KEY([DESCENDANTID])
REFERENCES [dbo].[BaseTopoTreeNode] ([NODEID])
GO
ALTER TABLE [dbo].[TopoTreePath] CHECK CONSTRAINT [TopoTreePath_FK1]
GO
