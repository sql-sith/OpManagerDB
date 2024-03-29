USE [OpManagerDB]
GO
/****** Object:  Table [dbo].[RadwareLinkProofSwitch]    Script Date: 6/29/2019 5:50:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RadwareLinkProofSwitch](
	[RESOURCEID] [bigint] NOT NULL,
	[HARDWARE_VERSION] [varchar](30) NOT NULL,
	[SOFTWARE_VERSION] [varchar](30) NOT NULL,
	[BWM_VERSION] [varchar](15) NOT NULL,
	[HMM_VERSION] [varchar](15) NOT NULL,
	[PLATFORM] [varchar](25) NOT NULL,
	[RAM_SIZE] [varchar](15) NOT NULL,
	[FLASH_SIZE] [varchar](15) NOT NULL,
	[LICENSE_KEY] [varchar](15) NOT NULL,
	[TYPE] [varchar](15) NOT NULL,
	[PORTS] [varchar](15) NOT NULL,
	[SYNAPPS_VERS] [varchar](15) NOT NULL,
	[ON_BOARD_FLASH_SIZE] [varchar](15) NOT NULL,
	[COMPACT_FLASH_SIZE] [varchar](15) NOT NULL,
 CONSTRAINT [RadwareLinkProofSwitch_PK] PRIMARY KEY CLUSTERED 
(
	[RESOURCEID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Index [IDX_1376006201]    Script Date: 6/29/2019 5:53:30 PM ******/
CREATE NONCLUSTERED INDEX [IDX_1376006201] ON [dbo].[RadwareLinkProofSwitch]
(
	[RESOURCEID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[RadwareLinkProofSwitch] ADD  DEFAULT ('Not Available') FOR [HARDWARE_VERSION]
GO
ALTER TABLE [dbo].[RadwareLinkProofSwitch] ADD  DEFAULT ('Not Available') FOR [SOFTWARE_VERSION]
GO
ALTER TABLE [dbo].[RadwareLinkProofSwitch] ADD  DEFAULT ('Not Available') FOR [BWM_VERSION]
GO
ALTER TABLE [dbo].[RadwareLinkProofSwitch] ADD  DEFAULT ('Not Available') FOR [HMM_VERSION]
GO
ALTER TABLE [dbo].[RadwareLinkProofSwitch] ADD  DEFAULT ('Not Available') FOR [PLATFORM]
GO
ALTER TABLE [dbo].[RadwareLinkProofSwitch] ADD  DEFAULT ('Not Available') FOR [RAM_SIZE]
GO
ALTER TABLE [dbo].[RadwareLinkProofSwitch] ADD  DEFAULT ('Not Available') FOR [FLASH_SIZE]
GO
ALTER TABLE [dbo].[RadwareLinkProofSwitch] ADD  DEFAULT ('Not Available') FOR [LICENSE_KEY]
GO
ALTER TABLE [dbo].[RadwareLinkProofSwitch] ADD  DEFAULT ('Not Available') FOR [TYPE]
GO
ALTER TABLE [dbo].[RadwareLinkProofSwitch] ADD  DEFAULT ('Not Available') FOR [PORTS]
GO
ALTER TABLE [dbo].[RadwareLinkProofSwitch] ADD  DEFAULT ('Not Available') FOR [SYNAPPS_VERS]
GO
ALTER TABLE [dbo].[RadwareLinkProofSwitch] ADD  DEFAULT ('Not Available') FOR [ON_BOARD_FLASH_SIZE]
GO
ALTER TABLE [dbo].[RadwareLinkProofSwitch] ADD  DEFAULT ('Not Available') FOR [COMPACT_FLASH_SIZE]
GO
ALTER TABLE [dbo].[RadwareLinkProofSwitch]  WITH CHECK ADD  CONSTRAINT [RadwareLinkProofSwitch_FK1] FOREIGN KEY([RESOURCEID])
REFERENCES [dbo].[NCMResource] ([RESOURCEID])
GO
ALTER TABLE [dbo].[RadwareLinkProofSwitch] CHECK CONSTRAINT [RadwareLinkProofSwitch_FK1]
GO
