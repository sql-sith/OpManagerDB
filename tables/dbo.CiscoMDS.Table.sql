USE [OpManagerDB]
GO
/****** Object:  Table [dbo].[CiscoMDS]    Script Date: 6/29/2019 5:46:35 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CiscoMDS](
	[RESOURCEID] [bigint] NOT NULL,
	[CPU] [varchar](250) NOT NULL,
	[BOOT_FLASH] [varchar](15) NOT NULL,
	[BIOS_VERSION] [varchar](15) NOT NULL,
 CONSTRAINT [CiscoMDS_PK] PRIMARY KEY CLUSTERED 
(
	[RESOURCEID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Index [IDX__1788213520]    Script Date: 6/29/2019 5:53:29 PM ******/
CREATE NONCLUSTERED INDEX [IDX__1788213520] ON [dbo].[CiscoMDS]
(
	[RESOURCEID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[CiscoMDS] ADD  DEFAULT ('Not Available') FOR [CPU]
GO
ALTER TABLE [dbo].[CiscoMDS] ADD  DEFAULT ('Not Available') FOR [BOOT_FLASH]
GO
ALTER TABLE [dbo].[CiscoMDS] ADD  DEFAULT ('Not Available') FOR [BIOS_VERSION]
GO
ALTER TABLE [dbo].[CiscoMDS]  WITH CHECK ADD  CONSTRAINT [CiscoMDS_FK1] FOREIGN KEY([RESOURCEID])
REFERENCES [dbo].[NCMResource] ([RESOURCEID])
GO
ALTER TABLE [dbo].[CiscoMDS] CHECK CONSTRAINT [CiscoMDS_FK1]
GO
