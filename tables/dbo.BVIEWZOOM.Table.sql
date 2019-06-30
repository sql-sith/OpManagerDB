USE [OpManagerDB]
GO
/****** Object:  Table [dbo].[BVIEWZOOM]    Script Date: 6/29/2019 5:46:23 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BVIEWZOOM](
	[ASSOCIATIONID] [bigint] NOT NULL,
	[ZOOM] [real] NOT NULL,
 CONSTRAINT [BVIEWZOOM_PK] PRIMARY KEY CLUSTERED 
(
	[ASSOCIATIONID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Index [IDX_656909447]    Script Date: 6/29/2019 5:53:29 PM ******/
CREATE NONCLUSTERED INDEX [IDX_656909447] ON [dbo].[BVIEWZOOM]
(
	[ASSOCIATIONID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[BVIEWZOOM]  WITH CHECK ADD  CONSTRAINT [BVIEWZOOM_FK1] FOREIGN KEY([ASSOCIATIONID])
REFERENCES [dbo].[WidgetAssociation] ([ASSOCIATIONID])
GO
ALTER TABLE [dbo].[BVIEWZOOM] CHECK CONSTRAINT [BVIEWZOOM_FK1]
GO
