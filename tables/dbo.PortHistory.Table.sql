USE [OpManagerDB]
GO
/****** Object:  Table [dbo].[PortHistory]    Script Date: 6/29/2019 5:50:20 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PortHistory](
	[ID] [bigint] NOT NULL,
	[SWITCH_ID] [bigint] NOT NULL,
	[MACADDRESS] [varchar](17) NULL,
	[IFINDEX] [int] NOT NULL,
	[PORTNO] [int] NULL,
	[IFDESCR] [varchar](250) NOT NULL,
	[BAUDRATE] [varchar](30) NULL,
	[IFTYPE] [int] NULL,
	[IFMTU] [int] NULL,
	[IFALIASNAME] [varchar](100) NULL,
	[VLAN] [int] NULL,
	[VLAN_NAME] [varchar](50) NULL,
	[DUPLEX] [varchar](10) NULL,
	[IPADDRESS] [varchar](15) NULL,
	[DNSNAME] [varchar](150) NULL,
	[DETECTEDTIME] [datetime] NOT NULL,
	[DESCRIPTION] [varchar](200) NOT NULL,
 CONSTRAINT [PortHistory_PK] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[PortHistory] ADD  DEFAULT ('No Data') FOR [IFDESCR]
GO
ALTER TABLE [dbo].[PortHistory] ADD  DEFAULT ('0 Mbps') FOR [BAUDRATE]
GO
