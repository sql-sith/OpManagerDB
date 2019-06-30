USE [OpManagerDB]
GO
/****** Object:  Table [dbo].[CiscoIOSXR]    Script Date: 6/29/2019 5:46:34 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CiscoIOSXR](
	[RESOURCEID] [bigint] NOT NULL,
	[CPU] [varchar](50) NOT NULL,
	[CPUREVISION] [varchar](50) NOT NULL,
	[NVRAMSIZE] [varchar](15) NOT NULL,
	[FLASHSIZE] [varchar](15) NOT NULL,
	[BOOTSTRAPVERSION] [varchar](15) NOT NULL,
	[DRAMSIZE] [varchar](15) NOT NULL,
 CONSTRAINT [CiscoIOSXR_PK] PRIMARY KEY CLUSTERED 
(
	[RESOURCEID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Index [IDX__44049989]    Script Date: 6/29/2019 5:53:29 PM ******/
CREATE NONCLUSTERED INDEX [IDX__44049989] ON [dbo].[CiscoIOSXR]
(
	[RESOURCEID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[CiscoIOSXR] ADD  DEFAULT ('Not Available') FOR [CPU]
GO
ALTER TABLE [dbo].[CiscoIOSXR] ADD  DEFAULT ('Not Available') FOR [CPUREVISION]
GO
ALTER TABLE [dbo].[CiscoIOSXR] ADD  DEFAULT ('Not Available') FOR [NVRAMSIZE]
GO
ALTER TABLE [dbo].[CiscoIOSXR] ADD  DEFAULT ('Not Available') FOR [FLASHSIZE]
GO
ALTER TABLE [dbo].[CiscoIOSXR] ADD  DEFAULT ('Not Available') FOR [BOOTSTRAPVERSION]
GO
ALTER TABLE [dbo].[CiscoIOSXR] ADD  DEFAULT ('Not Available') FOR [DRAMSIZE]
GO
ALTER TABLE [dbo].[CiscoIOSXR]  WITH CHECK ADD  CONSTRAINT [CiscoIOSXR_FK1] FOREIGN KEY([RESOURCEID])
REFERENCES [dbo].[NCMResource] ([RESOURCEID])
GO
ALTER TABLE [dbo].[CiscoIOSXR] CHECK CONSTRAINT [CiscoIOSXR_FK1]
GO
