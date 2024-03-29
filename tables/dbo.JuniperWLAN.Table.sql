USE [OpManagerDB]
GO
/****** Object:  Table [dbo].[JuniperWLAN]    Script Date: 6/29/2019 5:48:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[JuniperWLAN](
	[RESOURCEID] [bigint] NOT NULL,
	[FLASH] [varchar](150) NOT NULL,
 CONSTRAINT [JuniperWLAN_PK] PRIMARY KEY CLUSTERED 
(
	[RESOURCEID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Index [IDX__659095546]    Script Date: 6/29/2019 5:53:30 PM ******/
CREATE NONCLUSTERED INDEX [IDX__659095546] ON [dbo].[JuniperWLAN]
(
	[RESOURCEID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[JuniperWLAN] ADD  DEFAULT ('Not Available') FOR [FLASH]
GO
ALTER TABLE [dbo].[JuniperWLAN]  WITH CHECK ADD  CONSTRAINT [JuniperWLAN_FK1] FOREIGN KEY([RESOURCEID])
REFERENCES [dbo].[NCMResource] ([RESOURCEID])
GO
ALTER TABLE [dbo].[JuniperWLAN] CHECK CONSTRAINT [JuniperWLAN_FK1]
GO
