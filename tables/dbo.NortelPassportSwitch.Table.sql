USE [OpManagerDB]
GO
/****** Object:  Table [dbo].[NortelPassportSwitch]    Script Date: 6/29/2019 5:49:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NortelPassportSwitch](
	[RESOURCEID] [bigint] NOT NULL,
	[BOOT_PROM_VERSION] [varchar](20) NOT NULL,
	[FIRMWARE_VERSION] [varchar](15) NOT NULL,
	[HARDWARE_VERSION] [varchar](20) NOT NULL,
	[NUM_OF_SLOTS] [varchar](15) NOT NULL,
	[NUM_OF_PORTS] [varchar](15) NOT NULL,
	[DRAMSIZE] [varchar](15) NOT NULL,
	[PRIMARY_POWER] [varchar](15) NOT NULL,
	[REDUNDANT_POWER] [varchar](15) NOT NULL,
	[CHASSIS] [varchar](15) NOT NULL,
	[HWREV] [varchar](15) NOT NULL,
	[BASEMACADDR] [varchar](15) NOT NULL,
	[MGMTMACADDR] [varchar](15) NOT NULL,
	[SYSTEMMTU] [varchar](15) NOT NULL,
	[CLOCKSYCTIME] [varchar](15) NOT NULL,
	[GLOBAL_FILTER] [varchar](15) NOT NULL,
	[VLAN_BY_SRCMAC] [varchar](15) NOT NULL,
	[TOPOLOGY_IP_FLAG] [varchar](15) NOT NULL,
	[ECN_COMPATIB] [varchar](15) NOT NULL,
	[WSM_DIRECTMODE] [varchar](15) NOT NULL,
	[TEMPERATURE] [varchar](15) NOT NULL,
 CONSTRAINT [NortelPassportSwitch_PK] PRIMARY KEY CLUSTERED 
(
	[RESOURCEID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Index [IDX__363522147]    Script Date: 6/29/2019 5:53:30 PM ******/
CREATE NONCLUSTERED INDEX [IDX__363522147] ON [dbo].[NortelPassportSwitch]
(
	[RESOURCEID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[NortelPassportSwitch] ADD  DEFAULT ('Not Available') FOR [BOOT_PROM_VERSION]
GO
ALTER TABLE [dbo].[NortelPassportSwitch] ADD  DEFAULT ('Not Available') FOR [FIRMWARE_VERSION]
GO
ALTER TABLE [dbo].[NortelPassportSwitch] ADD  DEFAULT ('Not Available') FOR [HARDWARE_VERSION]
GO
ALTER TABLE [dbo].[NortelPassportSwitch] ADD  DEFAULT ('Not Available') FOR [NUM_OF_SLOTS]
GO
ALTER TABLE [dbo].[NortelPassportSwitch] ADD  DEFAULT ('Not Available') FOR [NUM_OF_PORTS]
GO
ALTER TABLE [dbo].[NortelPassportSwitch] ADD  DEFAULT ('Not Available') FOR [DRAMSIZE]
GO
ALTER TABLE [dbo].[NortelPassportSwitch] ADD  DEFAULT ('Not Available') FOR [PRIMARY_POWER]
GO
ALTER TABLE [dbo].[NortelPassportSwitch] ADD  DEFAULT ('Not Available') FOR [REDUNDANT_POWER]
GO
ALTER TABLE [dbo].[NortelPassportSwitch] ADD  DEFAULT ('Not Available') FOR [CHASSIS]
GO
ALTER TABLE [dbo].[NortelPassportSwitch] ADD  DEFAULT ('Not Available') FOR [HWREV]
GO
ALTER TABLE [dbo].[NortelPassportSwitch] ADD  DEFAULT ('Not Available') FOR [BASEMACADDR]
GO
ALTER TABLE [dbo].[NortelPassportSwitch] ADD  DEFAULT ('Not Available') FOR [MGMTMACADDR]
GO
ALTER TABLE [dbo].[NortelPassportSwitch] ADD  DEFAULT ('Not Available') FOR [SYSTEMMTU]
GO
ALTER TABLE [dbo].[NortelPassportSwitch] ADD  DEFAULT ('Not Available') FOR [CLOCKSYCTIME]
GO
ALTER TABLE [dbo].[NortelPassportSwitch] ADD  DEFAULT ('Not Available') FOR [GLOBAL_FILTER]
GO
ALTER TABLE [dbo].[NortelPassportSwitch] ADD  DEFAULT ('Not Available') FOR [VLAN_BY_SRCMAC]
GO
ALTER TABLE [dbo].[NortelPassportSwitch] ADD  DEFAULT ('Not Available') FOR [TOPOLOGY_IP_FLAG]
GO
ALTER TABLE [dbo].[NortelPassportSwitch] ADD  DEFAULT ('Not Available') FOR [ECN_COMPATIB]
GO
ALTER TABLE [dbo].[NortelPassportSwitch] ADD  DEFAULT ('Not Available') FOR [WSM_DIRECTMODE]
GO
ALTER TABLE [dbo].[NortelPassportSwitch] ADD  DEFAULT ('Not Available') FOR [TEMPERATURE]
GO
ALTER TABLE [dbo].[NortelPassportSwitch]  WITH CHECK ADD  CONSTRAINT [NortelPassportSwitch_FK1] FOREIGN KEY([RESOURCEID])
REFERENCES [dbo].[NCMResource] ([RESOURCEID])
GO
ALTER TABLE [dbo].[NortelPassportSwitch] CHECK CONSTRAINT [NortelPassportSwitch_FK1]
GO
