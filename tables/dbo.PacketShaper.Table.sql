USE [OpManagerDB]
GO
/****** Object:  Table [dbo].[PacketShaper]    Script Date: 6/29/2019 5:50:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PacketShaper](
	[RESOURCEID] [bigint] NOT NULL,
	[UNITNAME] [varchar](60) NOT NULL,
	[CPUBRAND] [varchar](100) NOT NULL,
	[MEMORY] [varchar](160) NOT NULL,
	[IMAGEVERSION] [varchar](100) NOT NULL,
	[FIRMWARE] [varchar](100) NOT NULL,
	[ACTIVEIMAGE] [varchar](100) NOT NULL,
	[BACKUPIMAGE] [varchar](100) NOT NULL,
	[VERSION] [varchar](150) NOT NULL,
 CONSTRAINT [PacketShaper_PK] PRIMARY KEY CLUSTERED 
(
	[RESOURCEID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Index [IDX__1217567098]    Script Date: 6/29/2019 5:53:30 PM ******/
CREATE NONCLUSTERED INDEX [IDX__1217567098] ON [dbo].[PacketShaper]
(
	[RESOURCEID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[PacketShaper] ADD  DEFAULT ('Not Available') FOR [UNITNAME]
GO
ALTER TABLE [dbo].[PacketShaper] ADD  DEFAULT ('Not Available') FOR [CPUBRAND]
GO
ALTER TABLE [dbo].[PacketShaper] ADD  DEFAULT ('Not Available') FOR [MEMORY]
GO
ALTER TABLE [dbo].[PacketShaper] ADD  DEFAULT ('Not Available') FOR [IMAGEVERSION]
GO
ALTER TABLE [dbo].[PacketShaper] ADD  DEFAULT ('Not Available') FOR [FIRMWARE]
GO
ALTER TABLE [dbo].[PacketShaper] ADD  DEFAULT ('Not Available') FOR [ACTIVEIMAGE]
GO
ALTER TABLE [dbo].[PacketShaper] ADD  DEFAULT ('Not Available') FOR [BACKUPIMAGE]
GO
ALTER TABLE [dbo].[PacketShaper] ADD  DEFAULT ('Not Available') FOR [VERSION]
GO
ALTER TABLE [dbo].[PacketShaper]  WITH CHECK ADD  CONSTRAINT [PacketShaper_FK1] FOREIGN KEY([RESOURCEID])
REFERENCES [dbo].[NCMResource] ([RESOURCEID])
GO
ALTER TABLE [dbo].[PacketShaper] CHECK CONSTRAINT [PacketShaper_FK1]
GO
