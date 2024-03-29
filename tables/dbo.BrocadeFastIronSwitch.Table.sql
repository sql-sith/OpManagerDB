USE [OpManagerDB]
GO
/****** Object:  Table [dbo].[BrocadeFastIronSwitch]    Script Date: 6/29/2019 5:46:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BrocadeFastIronSwitch](
	[RESOURCEID] [bigint] NOT NULL,
	[SW_VERSION] [varchar](150) NOT NULL,
	[POWER] [varchar](150) NOT NULL,
	[BOOT_FLASH] [varchar](150) NOT NULL,
	[CODE_FLASH] [varchar](150) NOT NULL,
	[DRAM] [varchar](150) NOT NULL,
	[PROCESSOR] [varchar](150) NOT NULL,
 CONSTRAINT [BrocadeFastIronSwitch_PK] PRIMARY KEY CLUSTERED 
(
	[RESOURCEID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Index [IDX__1862455453]    Script Date: 6/29/2019 5:53:29 PM ******/
CREATE NONCLUSTERED INDEX [IDX__1862455453] ON [dbo].[BrocadeFastIronSwitch]
(
	[RESOURCEID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[BrocadeFastIronSwitch] ADD  DEFAULT ('Not Available') FOR [SW_VERSION]
GO
ALTER TABLE [dbo].[BrocadeFastIronSwitch] ADD  DEFAULT ('Not Available') FOR [POWER]
GO
ALTER TABLE [dbo].[BrocadeFastIronSwitch] ADD  DEFAULT ('Not Available') FOR [BOOT_FLASH]
GO
ALTER TABLE [dbo].[BrocadeFastIronSwitch] ADD  DEFAULT ('Not Available') FOR [CODE_FLASH]
GO
ALTER TABLE [dbo].[BrocadeFastIronSwitch] ADD  DEFAULT ('Not Available') FOR [DRAM]
GO
ALTER TABLE [dbo].[BrocadeFastIronSwitch] ADD  DEFAULT ('Not Available') FOR [PROCESSOR]
GO
ALTER TABLE [dbo].[BrocadeFastIronSwitch]  WITH CHECK ADD  CONSTRAINT [BrocadeFastIronSwitch_FK1] FOREIGN KEY([RESOURCEID])
REFERENCES [dbo].[NCMResource] ([RESOURCEID])
GO
ALTER TABLE [dbo].[BrocadeFastIronSwitch] CHECK CONSTRAINT [BrocadeFastIronSwitch_FK1]
GO
