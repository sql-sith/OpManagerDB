USE [OpManagerDB]
GO
/****** Object:  Table [dbo].[TAGSTOMODULEMAP]    Script Date: 6/29/2019 5:52:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TAGSTOMODULEMAP](
	[ID] [bigint] NOT NULL,
	[TAGID] [bigint] NOT NULL,
	[TAGGERID] [bigint] NOT NULL,
	[MODULENAME] [varchar](250) NOT NULL,
 CONSTRAINT [TAGSTOMODULEMAP_PK1] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Index [IDX_1021809353]    Script Date: 6/29/2019 5:53:30 PM ******/
CREATE NONCLUSTERED INDEX [IDX_1021809353] ON [dbo].[TAGSTOMODULEMAP]
(
	[TAGID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [TAGSTOMODULEMAP0_ndx]    Script Date: 6/29/2019 5:53:30 PM ******/
CREATE NONCLUSTERED INDEX [TAGSTOMODULEMAP0_ndx] ON [dbo].[TAGSTOMODULEMAP]
(
	[MODULENAME] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[TAGSTOMODULEMAP]  WITH CHECK ADD  CONSTRAINT [TAGSTOMODULEMAP_FK1] FOREIGN KEY([TAGID])
REFERENCES [dbo].[OPMANAGERTAGS] ([TAGID])
GO
ALTER TABLE [dbo].[TAGSTOMODULEMAP] CHECK CONSTRAINT [TAGSTOMODULEMAP_FK1]
GO
