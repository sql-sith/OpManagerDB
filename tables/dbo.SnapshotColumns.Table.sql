USE [OpManagerDB]
GO
/****** Object:  Table [dbo].[SnapshotColumns]    Script Date: 6/29/2019 5:51:32 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SnapshotColumns](
	[SNAPSHOTID] [bigint] NOT NULL,
	[YSCALE] [int] NOT NULL,
	[MAXCOLUMNS] [int] NOT NULL,
 CONSTRAINT [SnapshotColumns_PK] PRIMARY KEY CLUSTERED 
(
	[SNAPSHOTID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Index [IDX__1630750682]    Script Date: 6/29/2019 5:53:30 PM ******/
CREATE NONCLUSTERED INDEX [IDX__1630750682] ON [dbo].[SnapshotColumns]
(
	[SNAPSHOTID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[SnapshotColumns]  WITH CHECK ADD  CONSTRAINT [SnapshotColumns_FK1] FOREIGN KEY([SNAPSHOTID])
REFERENCES [dbo].[Snapshot] ([SNAPSHOTID])
GO
ALTER TABLE [dbo].[SnapshotColumns] CHECK CONSTRAINT [SnapshotColumns_FK1]
GO
