USE [OpManagerDB]
GO
/****** Object:  Table [dbo].[FoundryRouter]    Script Date: 6/29/2019 5:47:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FoundryRouter](
	[CPU] [varchar](20) NOT NULL,
	[DRAMSIZE] [varchar](15) NOT NULL,
	[CPUTYPE] [varchar](30) NOT NULL,
	[CPUREVISION] [varchar](20) NOT NULL,
	[BOOTFLASHSIZE] [varchar](15) NOT NULL,
	[CODEFLASHSIZE] [varchar](15) NOT NULL,
	[RESOURCEID] [bigint] NOT NULL,
 CONSTRAINT [FoundryRouter_PK] PRIMARY KEY CLUSTERED 
(
	[RESOURCEID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Index [IDX__1578914785]    Script Date: 6/29/2019 5:53:30 PM ******/
CREATE NONCLUSTERED INDEX [IDX__1578914785] ON [dbo].[FoundryRouter]
(
	[RESOURCEID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[FoundryRouter] ADD  DEFAULT ('Not Available') FOR [CPU]
GO
ALTER TABLE [dbo].[FoundryRouter] ADD  DEFAULT ('Not Available') FOR [DRAMSIZE]
GO
ALTER TABLE [dbo].[FoundryRouter] ADD  DEFAULT ('Not Available') FOR [CPUTYPE]
GO
ALTER TABLE [dbo].[FoundryRouter] ADD  DEFAULT ('Not Available') FOR [CPUREVISION]
GO
ALTER TABLE [dbo].[FoundryRouter] ADD  DEFAULT ('Not Available') FOR [BOOTFLASHSIZE]
GO
ALTER TABLE [dbo].[FoundryRouter] ADD  DEFAULT ('Not Available') FOR [CODEFLASHSIZE]
GO
ALTER TABLE [dbo].[FoundryRouter]  WITH CHECK ADD  CONSTRAINT [FoundryRouter_FK1] FOREIGN KEY([RESOURCEID])
REFERENCES [dbo].[NCMResource] ([RESOURCEID])
GO
ALTER TABLE [dbo].[FoundryRouter] CHECK CONSTRAINT [FoundryRouter_FK1]
GO
