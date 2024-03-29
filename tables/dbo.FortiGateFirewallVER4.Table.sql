USE [OpManagerDB]
GO
/****** Object:  Table [dbo].[FortiGateFirewallVER4]    Script Date: 6/29/2019 5:47:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FortiGateFirewallVER4](
	[RESOURCEID] [bigint] NOT NULL,
	[BIOS] [varchar](150) NOT NULL,
	[RELEASE_VERSION] [varchar](150) NOT NULL,
	[PATCH] [varchar](150) NOT NULL,
 CONSTRAINT [FortiGateFirewallVER4_PK] PRIMARY KEY CLUSTERED 
(
	[RESOURCEID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Index [IDX_737427911]    Script Date: 6/29/2019 5:53:30 PM ******/
CREATE NONCLUSTERED INDEX [IDX_737427911] ON [dbo].[FortiGateFirewallVER4]
(
	[RESOURCEID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[FortiGateFirewallVER4] ADD  DEFAULT ('Not Available') FOR [BIOS]
GO
ALTER TABLE [dbo].[FortiGateFirewallVER4] ADD  DEFAULT ('Not Available') FOR [RELEASE_VERSION]
GO
ALTER TABLE [dbo].[FortiGateFirewallVER4] ADD  DEFAULT ('Not Available') FOR [PATCH]
GO
ALTER TABLE [dbo].[FortiGateFirewallVER4]  WITH CHECK ADD  CONSTRAINT [FortiGateFirewallVER4_FK1] FOREIGN KEY([RESOURCEID])
REFERENCES [dbo].[NCMResource] ([RESOURCEID])
GO
ALTER TABLE [dbo].[FortiGateFirewallVER4] CHECK CONSTRAINT [FortiGateFirewallVER4_FK1]
GO
