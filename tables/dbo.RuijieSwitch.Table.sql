USE [OpManagerDB]
GO
/****** Object:  Table [dbo].[RuijieSwitch]    Script Date: 6/29/2019 5:51:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RuijieSwitch](
	[RESOURCEID] [bigint] NOT NULL,
	[HW_VER] [varchar](100) NOT NULL,
	[BOOT_VER] [varchar](100) NOT NULL,
 CONSTRAINT [RuijieSwitch_PK] PRIMARY KEY CLUSTERED 
(
	[RESOURCEID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Index [IDX_7567233]    Script Date: 6/29/2019 5:53:30 PM ******/
CREATE NONCLUSTERED INDEX [IDX_7567233] ON [dbo].[RuijieSwitch]
(
	[RESOURCEID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[RuijieSwitch] ADD  DEFAULT ('Not Available') FOR [HW_VER]
GO
ALTER TABLE [dbo].[RuijieSwitch] ADD  DEFAULT ('Not Available') FOR [BOOT_VER]
GO
ALTER TABLE [dbo].[RuijieSwitch]  WITH CHECK ADD  CONSTRAINT [RuijieSwitch_FK1] FOREIGN KEY([RESOURCEID])
REFERENCES [dbo].[NCMResource] ([RESOURCEID])
GO
ALTER TABLE [dbo].[RuijieSwitch] CHECK CONSTRAINT [RuijieSwitch_FK1]
GO
