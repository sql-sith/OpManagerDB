USE [OpManagerDB]
GO
/****** Object:  Table [dbo].[BlockPacketCollection]    Script Date: 6/29/2019 5:46:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BlockPacketCollection](
	[IFID] [bigint] NOT NULL,
	[BLOCK_UNICASTPACKETS] [int] NOT NULL,
	[BLOCK_BROADCOSTPACKETS] [int] NOT NULL,
 CONSTRAINT [BlockPacketCollection_PK] PRIMARY KEY CLUSTERED 
(
	[IFID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Index [IDX_1922861472]    Script Date: 6/29/2019 5:53:29 PM ******/
CREATE NONCLUSTERED INDEX [IDX_1922861472] ON [dbo].[BlockPacketCollection]
(
	[IFID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[BlockPacketCollection] ADD  DEFAULT ('0') FOR [BLOCK_UNICASTPACKETS]
GO
ALTER TABLE [dbo].[BlockPacketCollection] ADD  DEFAULT ('0') FOR [BLOCK_BROADCOSTPACKETS]
GO
ALTER TABLE [dbo].[BlockPacketCollection]  WITH CHECK ADD  CONSTRAINT [BlockPacketCollection_FK1] FOREIGN KEY([IFID])
REFERENCES [dbo].[BWInterfaces] ([ID])
GO
ALTER TABLE [dbo].[BlockPacketCollection] CHECK CONSTRAINT [BlockPacketCollection_FK1]
GO
