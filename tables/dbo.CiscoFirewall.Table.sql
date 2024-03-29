USE [OpManagerDB]
GO
/****** Object:  Table [dbo].[CiscoFirewall]    Script Date: 6/29/2019 5:46:34 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CiscoFirewall](
	[RESOURCEID] [bigint] NOT NULL,
	[CPU] [varchar](20) NOT NULL,
	[DRAMSIZE] [varchar](15) NOT NULL,
	[FLASHSIZE] [varchar](15) NOT NULL,
	[BIOSFLASHSIZE] [varchar](15) NOT NULL,
	[VPNDES] [varchar](15) NOT NULL,
	[VPN3DESAES] [varchar](15) NOT NULL,
	[FAILOVER] [varchar](15) NOT NULL,
	[MAXINTERFACES] [varchar](15) NOT NULL,
	[GUARDS] [varchar](15) NOT NULL,
	[URLFILTERING] [varchar](15) NOT NULL,
 CONSTRAINT [CiscoFirewall_PK] PRIMARY KEY CLUSTERED 
(
	[RESOURCEID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Index [IDX_1238708422]    Script Date: 6/29/2019 5:53:29 PM ******/
CREATE NONCLUSTERED INDEX [IDX_1238708422] ON [dbo].[CiscoFirewall]
(
	[RESOURCEID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[CiscoFirewall] ADD  DEFAULT ('Not Available') FOR [CPU]
GO
ALTER TABLE [dbo].[CiscoFirewall] ADD  DEFAULT ('Not Available') FOR [DRAMSIZE]
GO
ALTER TABLE [dbo].[CiscoFirewall] ADD  DEFAULT ('Not Available') FOR [FLASHSIZE]
GO
ALTER TABLE [dbo].[CiscoFirewall] ADD  DEFAULT ('Not Available') FOR [BIOSFLASHSIZE]
GO
ALTER TABLE [dbo].[CiscoFirewall] ADD  DEFAULT ('Not Available') FOR [VPNDES]
GO
ALTER TABLE [dbo].[CiscoFirewall] ADD  DEFAULT ('Not Available') FOR [VPN3DESAES]
GO
ALTER TABLE [dbo].[CiscoFirewall] ADD  DEFAULT ('Not Available') FOR [FAILOVER]
GO
ALTER TABLE [dbo].[CiscoFirewall] ADD  DEFAULT ('Not Available') FOR [MAXINTERFACES]
GO
ALTER TABLE [dbo].[CiscoFirewall] ADD  DEFAULT ('Not Available') FOR [GUARDS]
GO
ALTER TABLE [dbo].[CiscoFirewall] ADD  DEFAULT ('Not Available') FOR [URLFILTERING]
GO
ALTER TABLE [dbo].[CiscoFirewall]  WITH CHECK ADD  CONSTRAINT [CiscoFirewall_FK1] FOREIGN KEY([RESOURCEID])
REFERENCES [dbo].[NCMResource] ([RESOURCEID])
GO
ALTER TABLE [dbo].[CiscoFirewall] CHECK CONSTRAINT [CiscoFirewall_FK1]
GO
