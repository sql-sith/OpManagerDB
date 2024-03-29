USE [OpManagerDB]
GO
/****** Object:  Table [dbo].[AlliedTelesisSwitch]    Script Date: 6/29/2019 5:46:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AlliedTelesisSwitch](
	[RESOURCEID] [bigint] NOT NULL,
	[DRAM_SIZE] [varchar](15) NOT NULL,
	[FLASH_SIZE] [varchar](15) NOT NULL,
	[BOOT_IMAGE] [varchar](15) NOT NULL,
 CONSTRAINT [AlliedTelesisSwitch_PK] PRIMARY KEY CLUSTERED 
(
	[RESOURCEID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Index [IDX__485298451]    Script Date: 6/29/2019 5:53:29 PM ******/
CREATE NONCLUSTERED INDEX [IDX__485298451] ON [dbo].[AlliedTelesisSwitch]
(
	[RESOURCEID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[AlliedTelesisSwitch] ADD  DEFAULT ('Not Available') FOR [DRAM_SIZE]
GO
ALTER TABLE [dbo].[AlliedTelesisSwitch] ADD  DEFAULT ('Not Available') FOR [FLASH_SIZE]
GO
ALTER TABLE [dbo].[AlliedTelesisSwitch] ADD  DEFAULT ('Not Available') FOR [BOOT_IMAGE]
GO
ALTER TABLE [dbo].[AlliedTelesisSwitch]  WITH CHECK ADD  CONSTRAINT [AlliedTelesisSwitch_FK1] FOREIGN KEY([RESOURCEID])
REFERENCES [dbo].[NCMResource] ([RESOURCEID])
GO
ALTER TABLE [dbo].[AlliedTelesisSwitch] CHECK CONSTRAINT [AlliedTelesisSwitch_FK1]
GO
