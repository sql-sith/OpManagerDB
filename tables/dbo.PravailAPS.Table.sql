USE [OpManagerDB]
GO
/****** Object:  Table [dbo].[PravailAPS]    Script Date: 6/29/2019 5:50:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PravailAPS](
	[RESOURCEID] [bigint] NOT NULL,
	[BIOS] [varchar](200) NOT NULL,
	[BOARD_MODEL] [varchar](150) NOT NULL,
 CONSTRAINT [PravailAPS_PK] PRIMARY KEY CLUSTERED 
(
	[RESOURCEID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Index [IDX__2047024476]    Script Date: 6/29/2019 5:53:30 PM ******/
CREATE NONCLUSTERED INDEX [IDX__2047024476] ON [dbo].[PravailAPS]
(
	[RESOURCEID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[PravailAPS] ADD  DEFAULT ('Not Available') FOR [BIOS]
GO
ALTER TABLE [dbo].[PravailAPS] ADD  DEFAULT ('Not Available') FOR [BOARD_MODEL]
GO
ALTER TABLE [dbo].[PravailAPS]  WITH CHECK ADD  CONSTRAINT [PravailAPS_FK1] FOREIGN KEY([RESOURCEID])
REFERENCES [dbo].[NCMResource] ([RESOURCEID])
GO
ALTER TABLE [dbo].[PravailAPS] CHECK CONSTRAINT [PravailAPS_FK1]
GO
