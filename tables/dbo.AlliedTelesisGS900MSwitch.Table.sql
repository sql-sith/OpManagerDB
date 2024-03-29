USE [OpManagerDB]
GO
/****** Object:  Table [dbo].[AlliedTelesisGS900MSwitch]    Script Date: 6/29/2019 5:46:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AlliedTelesisGS900MSwitch](
	[RESOURCEID] [bigint] NOT NULL,
	[RELEASE_VERSION] [varchar](100) NOT NULL,
	[RELEASE_BUILD] [varchar](100) NOT NULL,
	[FLASH_PROM] [varchar](100) NOT NULL,
	[RAM] [varchar](100) NOT NULL,
	[SW_CHIP] [varchar](100) NOT NULL,
	[UART] [varchar](100) NOT NULL,
	[FLASH] [varchar](100) NOT NULL,
	[MEMORY] [varchar](100) NOT NULL,
 CONSTRAINT [AlliedTelesisGS900MSwitch_PK] PRIMARY KEY CLUSTERED 
(
	[RESOURCEID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Index [IDX_1280828493]    Script Date: 6/29/2019 5:53:29 PM ******/
CREATE NONCLUSTERED INDEX [IDX_1280828493] ON [dbo].[AlliedTelesisGS900MSwitch]
(
	[RESOURCEID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[AlliedTelesisGS900MSwitch] ADD  DEFAULT ('Not Available') FOR [RELEASE_VERSION]
GO
ALTER TABLE [dbo].[AlliedTelesisGS900MSwitch] ADD  DEFAULT ('Not Available') FOR [RELEASE_BUILD]
GO
ALTER TABLE [dbo].[AlliedTelesisGS900MSwitch] ADD  DEFAULT ('Not Available') FOR [FLASH_PROM]
GO
ALTER TABLE [dbo].[AlliedTelesisGS900MSwitch] ADD  DEFAULT ('Not Available') FOR [RAM]
GO
ALTER TABLE [dbo].[AlliedTelesisGS900MSwitch] ADD  DEFAULT ('Not Available') FOR [SW_CHIP]
GO
ALTER TABLE [dbo].[AlliedTelesisGS900MSwitch] ADD  DEFAULT ('Not Available') FOR [UART]
GO
ALTER TABLE [dbo].[AlliedTelesisGS900MSwitch] ADD  DEFAULT ('Not Available') FOR [FLASH]
GO
ALTER TABLE [dbo].[AlliedTelesisGS900MSwitch] ADD  DEFAULT ('Not Available') FOR [MEMORY]
GO
ALTER TABLE [dbo].[AlliedTelesisGS900MSwitch]  WITH CHECK ADD  CONSTRAINT [AlliedTelesisGS900MSwitch_FK1] FOREIGN KEY([RESOURCEID])
REFERENCES [dbo].[NCMResource] ([RESOURCEID])
GO
ALTER TABLE [dbo].[AlliedTelesisGS900MSwitch] CHECK CONSTRAINT [AlliedTelesisGS900MSwitch_FK1]
GO
