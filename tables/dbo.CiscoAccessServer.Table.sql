USE [OpManagerDB]
GO
/****** Object:  Table [dbo].[CiscoAccessServer]    Script Date: 6/29/2019 5:46:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CiscoAccessServer](
	[RESOURCEID] [bigint] NOT NULL,
	[CPU] [varchar](50) NOT NULL,
	[CPUREVISION] [varchar](50) NOT NULL,
	[DRAMSIZE] [varchar](15) NOT NULL,
	[NVRAMSIZE] [varchar](15) NOT NULL,
	[FLASHSIZE] [varchar](15) NOT NULL,
	[CONFIGREGISTER] [varchar](50) NOT NULL,
 CONSTRAINT [CiscoAccessServer_PK] PRIMARY KEY CLUSTERED 
(
	[RESOURCEID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Index [IDX__1997977203]    Script Date: 6/29/2019 5:53:29 PM ******/
CREATE NONCLUSTERED INDEX [IDX__1997977203] ON [dbo].[CiscoAccessServer]
(
	[RESOURCEID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[CiscoAccessServer] ADD  DEFAULT ('Not Available') FOR [CPU]
GO
ALTER TABLE [dbo].[CiscoAccessServer] ADD  DEFAULT ('Not Available') FOR [CPUREVISION]
GO
ALTER TABLE [dbo].[CiscoAccessServer] ADD  DEFAULT ('Not Available') FOR [DRAMSIZE]
GO
ALTER TABLE [dbo].[CiscoAccessServer] ADD  DEFAULT ('Not Available') FOR [NVRAMSIZE]
GO
ALTER TABLE [dbo].[CiscoAccessServer] ADD  DEFAULT ('Not Available') FOR [FLASHSIZE]
GO
ALTER TABLE [dbo].[CiscoAccessServer] ADD  DEFAULT ('Not Available') FOR [CONFIGREGISTER]
GO
ALTER TABLE [dbo].[CiscoAccessServer]  WITH CHECK ADD  CONSTRAINT [CiscoAccessServer_FK1] FOREIGN KEY([RESOURCEID])
REFERENCES [dbo].[NCMResource] ([RESOURCEID])
GO
ALTER TABLE [dbo].[CiscoAccessServer] CHECK CONSTRAINT [CiscoAccessServer_FK1]
GO
