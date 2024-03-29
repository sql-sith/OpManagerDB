USE [OpManagerDB]
GO
/****** Object:  Table [dbo].[FoundryFastIronSwitch]    Script Date: 6/29/2019 5:47:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FoundryFastIronSwitch](
	[RESOURCEID] [bigint] NOT NULL,
	[CPU] [varchar](100) NOT NULL,
	[DRAMSIZE] [varchar](100) NOT NULL,
	[CPUTYPE] [varchar](100) NOT NULL,
	[CPUREVISION] [varchar](100) NOT NULL,
	[BOOTFLASHSIZE] [varchar](100) NOT NULL,
	[CODEFLASHSIZE] [varchar](100) NOT NULL,
 CONSTRAINT [FoundryFastIronSwitch_PK] PRIMARY KEY CLUSTERED 
(
	[RESOURCEID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Index [IDX_345411566]    Script Date: 6/29/2019 5:53:30 PM ******/
CREATE NONCLUSTERED INDEX [IDX_345411566] ON [dbo].[FoundryFastIronSwitch]
(
	[RESOURCEID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[FoundryFastIronSwitch] ADD  DEFAULT ('Not Available') FOR [CPU]
GO
ALTER TABLE [dbo].[FoundryFastIronSwitch] ADD  DEFAULT ('Not Available') FOR [DRAMSIZE]
GO
ALTER TABLE [dbo].[FoundryFastIronSwitch] ADD  DEFAULT ('Not Available') FOR [CPUTYPE]
GO
ALTER TABLE [dbo].[FoundryFastIronSwitch] ADD  DEFAULT ('Not Available') FOR [CPUREVISION]
GO
ALTER TABLE [dbo].[FoundryFastIronSwitch] ADD  DEFAULT ('Not Available') FOR [BOOTFLASHSIZE]
GO
ALTER TABLE [dbo].[FoundryFastIronSwitch] ADD  DEFAULT ('Not Available') FOR [CODEFLASHSIZE]
GO
ALTER TABLE [dbo].[FoundryFastIronSwitch]  WITH CHECK ADD  CONSTRAINT [FoundryFastIronSwitch_FK1] FOREIGN KEY([RESOURCEID])
REFERENCES [dbo].[NCMResource] ([RESOURCEID])
GO
ALTER TABLE [dbo].[FoundryFastIronSwitch] CHECK CONSTRAINT [FoundryFastIronSwitch_FK1]
GO
