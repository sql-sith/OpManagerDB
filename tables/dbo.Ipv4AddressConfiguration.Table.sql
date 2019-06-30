USE [OpManagerDB]
GO
/****** Object:  Table [dbo].[Ipv4AddressConfiguration]    Script Date: 6/29/2019 5:48:38 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Ipv4AddressConfiguration](
	[IPADDRESS] [varchar](15) NOT NULL,
	[ENDIPADDRESS] [varchar](15) NULL,
	[NETMASK] [varchar](15) NOT NULL,
	[DOMAINNAME] [varchar](250) NULL,
	[ADDRESSID] [bigint] NOT NULL,
	[ISDHCP] [bit] NOT NULL,
 CONSTRAINT [Ipv4AddrConf_PK] PRIMARY KEY CLUSTERED 
(
	[ADDRESSID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Index [IDX__1555394009]    Script Date: 6/29/2019 5:53:30 PM ******/
CREATE NONCLUSTERED INDEX [IDX__1555394009] ON [dbo].[Ipv4AddressConfiguration]
(
	[ADDRESSID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Ipv4AddressConfiguration] ADD  DEFAULT ((0)) FOR [ISDHCP]
GO
ALTER TABLE [dbo].[Ipv4AddressConfiguration]  WITH CHECK ADD  CONSTRAINT [Ipv4AddrConf_FK1] FOREIGN KEY([ADDRESSID])
REFERENCES [dbo].[AddressConfiguration] ([ADDRESSID])
GO
ALTER TABLE [dbo].[Ipv4AddressConfiguration] CHECK CONSTRAINT [Ipv4AddrConf_FK1]
GO
