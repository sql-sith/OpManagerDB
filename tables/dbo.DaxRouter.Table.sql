USE [OpManagerDB]
GO
/****** Object:  Table [dbo].[DaxRouter]    Script Date: 6/29/2019 5:46:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DaxRouter](
	[RESOURCEID] [bigint] NOT NULL,
	[HARDWAREVERSION] [varchar](15) NOT NULL,
	[SDRAMSIZE] [varchar](15) NOT NULL,
	[FLASHRAMSIZE] [varchar](15) NOT NULL,
 CONSTRAINT [DaxRouter_PK] PRIMARY KEY CLUSTERED 
(
	[RESOURCEID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Index [IDX__1098116111]    Script Date: 6/29/2019 5:53:30 PM ******/
CREATE NONCLUSTERED INDEX [IDX__1098116111] ON [dbo].[DaxRouter]
(
	[RESOURCEID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[DaxRouter] ADD  DEFAULT ('Not Available') FOR [HARDWAREVERSION]
GO
ALTER TABLE [dbo].[DaxRouter] ADD  DEFAULT ('Not Available') FOR [SDRAMSIZE]
GO
ALTER TABLE [dbo].[DaxRouter] ADD  DEFAULT ('Not Available') FOR [FLASHRAMSIZE]
GO
ALTER TABLE [dbo].[DaxRouter]  WITH CHECK ADD  CONSTRAINT [DaxRouter_FK1] FOREIGN KEY([RESOURCEID])
REFERENCES [dbo].[NCMResource] ([RESOURCEID])
GO
ALTER TABLE [dbo].[DaxRouter] CHECK CONSTRAINT [DaxRouter_FK1]
GO
