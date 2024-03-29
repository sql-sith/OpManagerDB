USE [OpManagerDB]
GO
/****** Object:  Table [dbo].[PaloAltoFirewall]    Script Date: 6/29/2019 5:50:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PaloAltoFirewall](
	[RESOURCEID] [bigint] NOT NULL,
	[SW_VERSION] [varchar](50) NULL,
	[VPNCLIENT_VER] [varchar](50) NULL,
	[APP_VERSION] [varchar](50) NULL,
	[AV_VERSION] [varchar](50) NULL,
	[THREAT_VERSION] [varchar](50) NULL,
	[LOGDB_VERSION] [varchar](50) NULL,
	[URL_FILTERING] [varchar](50) NULL,
 CONSTRAINT [PaloAltoFirewall_PK] PRIMARY KEY CLUSTERED 
(
	[RESOURCEID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Index [IDX__1331390777]    Script Date: 6/29/2019 5:53:30 PM ******/
CREATE NONCLUSTERED INDEX [IDX__1331390777] ON [dbo].[PaloAltoFirewall]
(
	[RESOURCEID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[PaloAltoFirewall] ADD  DEFAULT ('Not Available') FOR [SW_VERSION]
GO
ALTER TABLE [dbo].[PaloAltoFirewall] ADD  DEFAULT ('Not Available') FOR [VPNCLIENT_VER]
GO
ALTER TABLE [dbo].[PaloAltoFirewall] ADD  DEFAULT ('Not Available') FOR [APP_VERSION]
GO
ALTER TABLE [dbo].[PaloAltoFirewall] ADD  DEFAULT ('Not Available') FOR [AV_VERSION]
GO
ALTER TABLE [dbo].[PaloAltoFirewall] ADD  DEFAULT ('Not Available') FOR [THREAT_VERSION]
GO
ALTER TABLE [dbo].[PaloAltoFirewall] ADD  DEFAULT ('Not Available') FOR [LOGDB_VERSION]
GO
ALTER TABLE [dbo].[PaloAltoFirewall] ADD  DEFAULT ('Not Available') FOR [URL_FILTERING]
GO
ALTER TABLE [dbo].[PaloAltoFirewall]  WITH CHECK ADD  CONSTRAINT [PaloAltoFirewall_FK1] FOREIGN KEY([RESOURCEID])
REFERENCES [dbo].[NCMResource] ([RESOURCEID])
GO
ALTER TABLE [dbo].[PaloAltoFirewall] CHECK CONSTRAINT [PaloAltoFirewall_FK1]
GO
