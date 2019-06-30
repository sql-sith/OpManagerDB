USE [OpManagerDB]
GO
/****** Object:  Table [dbo].[NCMResourceCustomColumn]    Script Date: 6/29/2019 5:49:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NCMResourceCustomColumn](
	[COLUMNCOUNTER] [bigint] NOT NULL,
	[RESOURCEID] [bigint] NOT NULL,
	[COLUMNVALUE1] [varchar](250) NOT NULL,
	[COLUMNVALUE2] [varchar](250) NOT NULL,
	[COLUMNVALUE3] [varchar](250) NOT NULL,
 CONSTRAINT [NCMResourceCustomColumn_PK] PRIMARY KEY CLUSTERED 
(
	[COLUMNCOUNTER] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Index [IDX_990534522]    Script Date: 6/29/2019 5:53:30 PM ******/
CREATE NONCLUSTERED INDEX [IDX_990534522] ON [dbo].[NCMResourceCustomColumn]
(
	[RESOURCEID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[NCMResourceCustomColumn] ADD  DEFAULT ('[NA]') FOR [COLUMNVALUE1]
GO
ALTER TABLE [dbo].[NCMResourceCustomColumn] ADD  DEFAULT ('[NA]') FOR [COLUMNVALUE2]
GO
ALTER TABLE [dbo].[NCMResourceCustomColumn] ADD  DEFAULT ('[NA]') FOR [COLUMNVALUE3]
GO
ALTER TABLE [dbo].[NCMResourceCustomColumn]  WITH CHECK ADD  CONSTRAINT [NCMResourceCustomColumn_FK1] FOREIGN KEY([RESOURCEID])
REFERENCES [dbo].[NCMResource] ([RESOURCEID])
GO
ALTER TABLE [dbo].[NCMResourceCustomColumn] CHECK CONSTRAINT [NCMResourceCustomColumn_FK1]
GO
