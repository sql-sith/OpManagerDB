USE [OpManagerDB]
GO
/****** Object:  Table [dbo].[LAYER2CREDENTIALMAP]    Script Date: 6/29/2019 5:48:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LAYER2CREDENTIALMAP](
	[ID] [bigint] NOT NULL,
	[MAPID] [bigint] NOT NULL,
	[CREDENTIALID] [bigint] NOT NULL,
 CONSTRAINT [LAYER2CREDENTIALMAP_PK] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Index [IDX_1501382880]    Script Date: 6/29/2019 5:53:30 PM ******/
CREATE NONCLUSTERED INDEX [IDX_1501382880] ON [dbo].[LAYER2CREDENTIALMAP]
(
	[MAPID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[LAYER2CREDENTIALMAP]  WITH CHECK ADD  CONSTRAINT [LAYER2CREDENTIALMAP_FK] FOREIGN KEY([MAPID])
REFERENCES [dbo].[LAYER2CONFIGURATION] ([MAPID])
GO
ALTER TABLE [dbo].[LAYER2CREDENTIALMAP] CHECK CONSTRAINT [LAYER2CREDENTIALMAP_FK]
GO
