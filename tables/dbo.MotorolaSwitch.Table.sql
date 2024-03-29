USE [OpManagerDB]
GO
/****** Object:  Table [dbo].[MotorolaSwitch]    Script Date: 6/29/2019 5:49:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MotorolaSwitch](
	[RESOURCEID] [bigint] NOT NULL,
	[RAM] [varchar](50) NOT NULL,
	[IDE] [varchar](50) NOT NULL,
	[MODEL] [varchar](15) NOT NULL,
	[CACHE] [varchar](25) NOT NULL,
	[CAPACITY] [varchar](25) NOT NULL,
	[VERSION] [varchar](25) NOT NULL,
	[MIB] [varchar](15) NOT NULL,
 CONSTRAINT [MotorolaSwitch_PK] PRIMARY KEY CLUSTERED 
(
	[RESOURCEID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Index [IDX_1360270224]    Script Date: 6/29/2019 5:53:30 PM ******/
CREATE NONCLUSTERED INDEX [IDX_1360270224] ON [dbo].[MotorolaSwitch]
(
	[RESOURCEID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[MotorolaSwitch] ADD  DEFAULT ('Not Available') FOR [RAM]
GO
ALTER TABLE [dbo].[MotorolaSwitch] ADD  DEFAULT ('Not Available') FOR [IDE]
GO
ALTER TABLE [dbo].[MotorolaSwitch] ADD  DEFAULT ('Not Available') FOR [MODEL]
GO
ALTER TABLE [dbo].[MotorolaSwitch] ADD  DEFAULT ('Not Available') FOR [CACHE]
GO
ALTER TABLE [dbo].[MotorolaSwitch] ADD  DEFAULT ('Not Available') FOR [CAPACITY]
GO
ALTER TABLE [dbo].[MotorolaSwitch] ADD  DEFAULT ('Not Available') FOR [VERSION]
GO
ALTER TABLE [dbo].[MotorolaSwitch] ADD  DEFAULT ('Not Available') FOR [MIB]
GO
ALTER TABLE [dbo].[MotorolaSwitch]  WITH CHECK ADD  CONSTRAINT [MotorolaSwitch_FK1] FOREIGN KEY([RESOURCEID])
REFERENCES [dbo].[NCMResource] ([RESOURCEID])
GO
ALTER TABLE [dbo].[MotorolaSwitch] CHECK CONSTRAINT [MotorolaSwitch_FK1]
GO
