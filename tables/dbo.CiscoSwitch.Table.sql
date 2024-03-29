USE [OpManagerDB]
GO
/****** Object:  Table [dbo].[CiscoSwitch]    Script Date: 6/29/2019 5:46:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CiscoSwitch](
	[RESOURCEID] [bigint] NOT NULL,
	[CPU] [varchar](50) NOT NULL,
	[DRAMSIZE] [varchar](100) NOT NULL,
	[NVRAMSIZE] [varchar](100) NOT NULL,
	[FLASHSIZE] [varchar](100) NOT NULL,
	[CONFIGREGISTER] [varchar](50) NOT NULL,
	[MBOARDASSEMBLYNO] [varchar](50) NOT NULL,
	[MBOARDSERIALNO] [varchar](50) NOT NULL,
	[MBOARDREVISIONNO] [varchar](100) NOT NULL,
	[POWERSUPPLYPARTNO] [varchar](50) NOT NULL,
	[MODELREVISIONNO] [varchar](100) NOT NULL,
 CONSTRAINT [CiscoSwitch_PK] PRIMARY KEY CLUSTERED 
(
	[RESOURCEID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Index [IDX_943717178]    Script Date: 6/29/2019 5:53:29 PM ******/
CREATE NONCLUSTERED INDEX [IDX_943717178] ON [dbo].[CiscoSwitch]
(
	[RESOURCEID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[CiscoSwitch] ADD  DEFAULT ('Not Available') FOR [CPU]
GO
ALTER TABLE [dbo].[CiscoSwitch] ADD  DEFAULT ('Not Available') FOR [DRAMSIZE]
GO
ALTER TABLE [dbo].[CiscoSwitch] ADD  DEFAULT ('Not Available') FOR [NVRAMSIZE]
GO
ALTER TABLE [dbo].[CiscoSwitch] ADD  DEFAULT ('Not Available') FOR [FLASHSIZE]
GO
ALTER TABLE [dbo].[CiscoSwitch] ADD  DEFAULT ('Not Available') FOR [CONFIGREGISTER]
GO
ALTER TABLE [dbo].[CiscoSwitch] ADD  DEFAULT ('Not Available') FOR [MBOARDASSEMBLYNO]
GO
ALTER TABLE [dbo].[CiscoSwitch] ADD  DEFAULT ('Not Available') FOR [MBOARDSERIALNO]
GO
ALTER TABLE [dbo].[CiscoSwitch] ADD  DEFAULT ('Not Available') FOR [MBOARDREVISIONNO]
GO
ALTER TABLE [dbo].[CiscoSwitch] ADD  DEFAULT ('Not Available') FOR [POWERSUPPLYPARTNO]
GO
ALTER TABLE [dbo].[CiscoSwitch] ADD  DEFAULT ('Not Available') FOR [MODELREVISIONNO]
GO
ALTER TABLE [dbo].[CiscoSwitch]  WITH CHECK ADD  CONSTRAINT [CiscoSwitch_FK1] FOREIGN KEY([RESOURCEID])
REFERENCES [dbo].[NCMResource] ([RESOURCEID])
GO
ALTER TABLE [dbo].[CiscoSwitch] CHECK CONSTRAINT [CiscoSwitch_FK1]
GO
