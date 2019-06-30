USE [OpManagerDB]
GO
/****** Object:  Table [dbo].[AdtranNetvantaRouter]    Script Date: 6/29/2019 5:45:54 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AdtranNetvantaRouter](
	[RESOURCEID] [bigint] NOT NULL,
	[BOOTROMVERSION] [varchar](30) NOT NULL,
	[FLASHSIZE] [varchar](30) NOT NULL,
	[DRAMSIZE] [varchar](30) NOT NULL,
 CONSTRAINT [AdtranNetvantaRouter_PK] PRIMARY KEY CLUSTERED 
(
	[RESOURCEID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Index [IDX__1418853801]    Script Date: 6/29/2019 5:53:29 PM ******/
CREATE NONCLUSTERED INDEX [IDX__1418853801] ON [dbo].[AdtranNetvantaRouter]
(
	[RESOURCEID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[AdtranNetvantaRouter] ADD  DEFAULT ('Not Available') FOR [BOOTROMVERSION]
GO
ALTER TABLE [dbo].[AdtranNetvantaRouter] ADD  DEFAULT ('Not Available') FOR [FLASHSIZE]
GO
ALTER TABLE [dbo].[AdtranNetvantaRouter] ADD  DEFAULT ('Not Available') FOR [DRAMSIZE]
GO
ALTER TABLE [dbo].[AdtranNetvantaRouter]  WITH CHECK ADD  CONSTRAINT [AdtranNetvantaRouter_FK1] FOREIGN KEY([RESOURCEID])
REFERENCES [dbo].[NCMResource] ([RESOURCEID])
GO
ALTER TABLE [dbo].[AdtranNetvantaRouter] CHECK CONSTRAINT [AdtranNetvantaRouter_FK1]
GO
