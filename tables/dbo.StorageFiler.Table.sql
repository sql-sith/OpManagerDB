USE [OpManagerDB]
GO
/****** Object:  Table [dbo].[StorageFiler]    Script Date: 6/29/2019 5:51:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[StorageFiler](
	[FILER_ID] [bigint] NOT NULL,
	[MOID] [bigint] NOT NULL,
	[FILER_PRODUCT_ID] [varchar](100) NULL,
	[FILER_VERSION] [varchar](150) NULL,
 CONSTRAINT [StorageFiler_PK] PRIMARY KEY CLUSTERED 
(
	[FILER_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY],
 CONSTRAINT [StorageFiler_UK0] UNIQUE NONCLUSTERED 
(
	[MOID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Index [IDX_1552321192]    Script Date: 6/29/2019 5:53:30 PM ******/
CREATE NONCLUSTERED INDEX [IDX_1552321192] ON [dbo].[StorageFiler]
(
	[MOID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[StorageFiler]  WITH CHECK ADD  CONSTRAINT [StorageFiler_FK1] FOREIGN KEY([MOID])
REFERENCES [dbo].[MANAGEDOBJECTID] ([MOID])
GO
ALTER TABLE [dbo].[StorageFiler] CHECK CONSTRAINT [StorageFiler_FK1]
GO
