USE [OpManagerDB]
GO
/****** Object:  Table [dbo].[GarderosRouter]    Script Date: 6/29/2019 5:47:54 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[GarderosRouter](
	[RESOURCEID] [bigint] NOT NULL,
	[BOARDTYPE] [varchar](50) NOT NULL,
	[REVISION] [varchar](50) NOT NULL,
	[BOARDSERIAL] [varchar](100) NOT NULL,
	[HARDWARE] [varchar](100) NOT NULL,
	[SERIAL] [varchar](100) NOT NULL,
	[ARCH] [varchar](100) NOT NULL,
	[BUILDDATE] [varchar](100) NOT NULL,
	[BUILTON] [varchar](100) NOT NULL,
	[FLAVOR] [varchar](100) NOT NULL,
	[PROJECT] [varchar](100) NOT NULL,
	[VERSION] [varchar](100) NOT NULL,
 CONSTRAINT [GarderosRouter_PK] PRIMARY KEY CLUSTERED 
(
	[RESOURCEID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Index [IDX__615220237]    Script Date: 6/29/2019 5:53:30 PM ******/
CREATE NONCLUSTERED INDEX [IDX__615220237] ON [dbo].[GarderosRouter]
(
	[RESOURCEID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[GarderosRouter] ADD  DEFAULT ('Not Available') FOR [BOARDTYPE]
GO
ALTER TABLE [dbo].[GarderosRouter] ADD  DEFAULT ('Not Available') FOR [REVISION]
GO
ALTER TABLE [dbo].[GarderosRouter] ADD  DEFAULT ('Not Available') FOR [BOARDSERIAL]
GO
ALTER TABLE [dbo].[GarderosRouter] ADD  DEFAULT ('Not Available') FOR [HARDWARE]
GO
ALTER TABLE [dbo].[GarderosRouter] ADD  DEFAULT ('Not Available') FOR [SERIAL]
GO
ALTER TABLE [dbo].[GarderosRouter] ADD  DEFAULT ('Not Available') FOR [ARCH]
GO
ALTER TABLE [dbo].[GarderosRouter] ADD  DEFAULT ('Not Available') FOR [BUILDDATE]
GO
ALTER TABLE [dbo].[GarderosRouter] ADD  DEFAULT ('Not Available') FOR [BUILTON]
GO
ALTER TABLE [dbo].[GarderosRouter] ADD  DEFAULT ('Not Available') FOR [FLAVOR]
GO
ALTER TABLE [dbo].[GarderosRouter] ADD  DEFAULT ('Not Available') FOR [PROJECT]
GO
ALTER TABLE [dbo].[GarderosRouter] ADD  DEFAULT ('Not Available') FOR [VERSION]
GO
ALTER TABLE [dbo].[GarderosRouter]  WITH CHECK ADD  CONSTRAINT [GarderosRouter_FK1] FOREIGN KEY([RESOURCEID])
REFERENCES [dbo].[NCMResource] ([RESOURCEID])
GO
ALTER TABLE [dbo].[GarderosRouter] CHECK CONSTRAINT [GarderosRouter_FK1]
GO
