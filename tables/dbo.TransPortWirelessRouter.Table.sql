USE [OpManagerDB]
GO
/****** Object:  Table [dbo].[TransPortWirelessRouter]    Script Date: 6/29/2019 5:52:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TransPortWirelessRouter](
	[RESOURCEID] [bigint] NOT NULL,
	[HW_REVISION] [varchar](150) NOT NULL,
	[SW_VERSION] [varchar](150) NOT NULL,
	[BIOS_VERSION] [varchar](150) NOT NULL,
 CONSTRAINT [TransPortWirelessRouter_PK] PRIMARY KEY CLUSTERED 
(
	[RESOURCEID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Index [IDX_1590701917]    Script Date: 6/29/2019 5:53:30 PM ******/
CREATE NONCLUSTERED INDEX [IDX_1590701917] ON [dbo].[TransPortWirelessRouter]
(
	[RESOURCEID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[TransPortWirelessRouter] ADD  DEFAULT ('Not Available') FOR [HW_REVISION]
GO
ALTER TABLE [dbo].[TransPortWirelessRouter] ADD  DEFAULT ('Not Available') FOR [SW_VERSION]
GO
ALTER TABLE [dbo].[TransPortWirelessRouter] ADD  DEFAULT ('Not Available') FOR [BIOS_VERSION]
GO
ALTER TABLE [dbo].[TransPortWirelessRouter]  WITH CHECK ADD  CONSTRAINT [TransPortWirelessRouter_FK1] FOREIGN KEY([RESOURCEID])
REFERENCES [dbo].[NCMResource] ([RESOURCEID])
GO
ALTER TABLE [dbo].[TransPortWirelessRouter] CHECK CONSTRAINT [TransPortWirelessRouter_FK1]
GO
