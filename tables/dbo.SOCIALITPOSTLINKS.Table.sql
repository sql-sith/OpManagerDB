USE [OpManagerDB]
GO
/****** Object:  Table [dbo].[SOCIALITPOSTLINKS]    Script Date: 6/29/2019 5:51:38 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SOCIALITPOSTLINKS](
	[LINK_ID] [bigint] NOT NULL,
	[POST_ID] [bigint] NOT NULL,
	[LINKDESC] [text] NOT NULL,
	[LINKIMAGE] [varchar](250) NULL,
	[LINKTITLE] [varchar](250) NULL,
	[LINKURL] [varchar](250) NULL,
	[VIDEOURL] [varchar](250) NULL,
 CONSTRAINT [SOCIALITPOSTLINKS_PK] PRIMARY KEY CLUSTERED 
(
	[LINK_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Index [IDX_1280433443]    Script Date: 6/29/2019 5:53:30 PM ******/
CREATE NONCLUSTERED INDEX [IDX_1280433443] ON [dbo].[SOCIALITPOSTLINKS]
(
	[POST_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[SOCIALITPOSTLINKS]  WITH CHECK ADD  CONSTRAINT [SOCIALITPOSTLINKS_FK] FOREIGN KEY([POST_ID])
REFERENCES [dbo].[SOCIALITPOST] ([POST_ID])
GO
ALTER TABLE [dbo].[SOCIALITPOSTLINKS] CHECK CONSTRAINT [SOCIALITPOSTLINKS_FK]
GO
