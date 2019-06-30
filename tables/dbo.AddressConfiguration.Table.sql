USE [OpManagerDB]
GO
/****** Object:  Table [dbo].[AddressConfiguration]    Script Date: 6/29/2019 5:45:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AddressConfiguration](
	[ADDRESSTYPE] [varchar](25) NOT NULL,
	[ADDRESSID] [bigint] NOT NULL,
	[NETWORKNAME] [varchar](250) NULL,
	[NENAME] [varchar](250) NULL,
	[USE_TCP_DISCOVERY] [bit] NULL,
	[USE_ICMP_DISCOVERY] [bit] NULL,
	[TCP_CONNECT_TIMEOUT] [int] NOT NULL,
	[DISCOVER_ON_STARTUP] [bit] NULL,
 CONSTRAINT [AddrConf_PK] PRIMARY KEY CLUSTERED 
(
	[ADDRESSID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IDX_113119250]    Script Date: 6/29/2019 5:53:29 PM ******/
CREATE NONCLUSTERED INDEX [IDX_113119250] ON [dbo].[AddressConfiguration]
(
	[NETWORKNAME] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IDX_113119251]    Script Date: 6/29/2019 5:53:29 PM ******/
CREATE NONCLUSTERED INDEX [IDX_113119251] ON [dbo].[AddressConfiguration]
(
	[NENAME] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[AddressConfiguration] ADD  DEFAULT ((1)) FOR [USE_TCP_DISCOVERY]
GO
ALTER TABLE [dbo].[AddressConfiguration] ADD  DEFAULT ((1)) FOR [USE_ICMP_DISCOVERY]
GO
ALTER TABLE [dbo].[AddressConfiguration] ADD  DEFAULT ('2') FOR [TCP_CONNECT_TIMEOUT]
GO
ALTER TABLE [dbo].[AddressConfiguration] ADD  DEFAULT ((1)) FOR [DISCOVER_ON_STARTUP]
GO
ALTER TABLE [dbo].[AddressConfiguration]  WITH CHECK ADD  CONSTRAINT [AddConf_FK1] FOREIGN KEY([NETWORKNAME])
REFERENCES [dbo].[NetworkConfiguration] ([NAME])
GO
ALTER TABLE [dbo].[AddressConfiguration] CHECK CONSTRAINT [AddConf_FK1]
GO
ALTER TABLE [dbo].[AddressConfiguration]  WITH CHECK ADD  CONSTRAINT [AddConf_FK2] FOREIGN KEY([NENAME])
REFERENCES [dbo].[NetworkElementConfiguration] ([NAME])
GO
ALTER TABLE [dbo].[AddressConfiguration] CHECK CONSTRAINT [AddConf_FK2]
GO
