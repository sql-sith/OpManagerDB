USE [OpManagerDB]
GO
/****** Object:  Table [dbo].[NetscreenFirewall]    Script Date: 6/29/2019 5:49:47 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NetscreenFirewall](
	[RESOURCEID] [bigint] NOT NULL,
	[HARDWAREVERSION] [varchar](20) NOT NULL,
	[SYSTEMMODE] [varchar](20) NOT NULL,
	[DSTSTATUS] [varchar](20) NOT NULL,
	[NTPSTATUS] [varchar](20) NOT NULL,
 CONSTRAINT [NetscreenFirewall_PK] PRIMARY KEY CLUSTERED 
(
	[RESOURCEID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Index [IDX__258229482]    Script Date: 6/29/2019 5:53:30 PM ******/
CREATE NONCLUSTERED INDEX [IDX__258229482] ON [dbo].[NetscreenFirewall]
(
	[RESOURCEID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[NetscreenFirewall] ADD  DEFAULT ('Not Available') FOR [HARDWAREVERSION]
GO
ALTER TABLE [dbo].[NetscreenFirewall] ADD  DEFAULT ('Not Available') FOR [SYSTEMMODE]
GO
ALTER TABLE [dbo].[NetscreenFirewall] ADD  DEFAULT ('Not Available') FOR [DSTSTATUS]
GO
ALTER TABLE [dbo].[NetscreenFirewall] ADD  DEFAULT ('Not Available') FOR [NTPSTATUS]
GO
ALTER TABLE [dbo].[NetscreenFirewall]  WITH CHECK ADD  CONSTRAINT [NetscreenFirewall_FK1] FOREIGN KEY([RESOURCEID])
REFERENCES [dbo].[NCMResource] ([RESOURCEID])
GO
ALTER TABLE [dbo].[NetscreenFirewall] CHECK CONSTRAINT [NetscreenFirewall_FK1]
GO
