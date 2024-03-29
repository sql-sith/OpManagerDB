USE [OpManagerDB]
GO
/****** Object:  Table [dbo].[CiscoAccessPoint]    Script Date: 6/29/2019 5:46:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CiscoAccessPoint](
	[RESOURCEID] [bigint] NOT NULL,
	[CPU] [varchar](50) NOT NULL,
	[CPUREVISION] [varchar](50) NOT NULL,
	[DRAMSIZE] [varchar](50) NOT NULL,
	[NVRAMSIZE] [varchar](50) NOT NULL,
	[PARTNO] [varchar](50) NOT NULL,
	[PCAASSEMBLYNO] [varchar](50) NOT NULL,
	[PCAREVISIONNO] [varchar](50) NOT NULL,
	[TOPASSEMBLYPARTNO] [varchar](50) NOT NULL,
	[TOPASSEMBLYSERIALNO] [varchar](50) NOT NULL,
	[TOPREVISIONNO] [varchar](50) NOT NULL,
 CONSTRAINT [CiscoAccessPoint_PK] PRIMARY KEY CLUSTERED 
(
	[RESOURCEID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Index [IDX_727979200]    Script Date: 6/29/2019 5:53:29 PM ******/
CREATE NONCLUSTERED INDEX [IDX_727979200] ON [dbo].[CiscoAccessPoint]
(
	[RESOURCEID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[CiscoAccessPoint] ADD  DEFAULT ('Not Available') FOR [CPU]
GO
ALTER TABLE [dbo].[CiscoAccessPoint] ADD  DEFAULT ('Not Available') FOR [CPUREVISION]
GO
ALTER TABLE [dbo].[CiscoAccessPoint] ADD  DEFAULT ('Not Available') FOR [DRAMSIZE]
GO
ALTER TABLE [dbo].[CiscoAccessPoint] ADD  DEFAULT ('Not Available') FOR [NVRAMSIZE]
GO
ALTER TABLE [dbo].[CiscoAccessPoint] ADD  DEFAULT ('Not Available') FOR [PARTNO]
GO
ALTER TABLE [dbo].[CiscoAccessPoint] ADD  DEFAULT ('Not Available') FOR [PCAASSEMBLYNO]
GO
ALTER TABLE [dbo].[CiscoAccessPoint] ADD  DEFAULT ('Not Available') FOR [PCAREVISIONNO]
GO
ALTER TABLE [dbo].[CiscoAccessPoint] ADD  DEFAULT ('Not Available') FOR [TOPASSEMBLYPARTNO]
GO
ALTER TABLE [dbo].[CiscoAccessPoint] ADD  DEFAULT ('Not Available') FOR [TOPASSEMBLYSERIALNO]
GO
ALTER TABLE [dbo].[CiscoAccessPoint] ADD  DEFAULT ('Not Available') FOR [TOPREVISIONNO]
GO
ALTER TABLE [dbo].[CiscoAccessPoint]  WITH CHECK ADD  CONSTRAINT [CiscoAccessPoint_FK1] FOREIGN KEY([RESOURCEID])
REFERENCES [dbo].[NCMResource] ([RESOURCEID])
GO
ALTER TABLE [dbo].[CiscoAccessPoint] CHECK CONSTRAINT [CiscoAccessPoint_FK1]
GO
