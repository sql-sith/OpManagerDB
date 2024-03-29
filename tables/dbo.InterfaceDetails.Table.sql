USE [OpManagerDB]
GO
/****** Object:  Table [dbo].[InterfaceDetails]    Script Date: 6/29/2019 5:48:30 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[InterfaceDetails](
	[INTERFACEID] [bigint] NOT NULL,
	[RID] [bigint] NOT NULL,
	[INTERFACE_NAME] [nvarchar](250) NOT NULL,
	[ALIAS_NAME] [nvarchar](250) NOT NULL,
	[VDOM_NAME] [nvarchar](250) NULL,
	[SERVICES_ALLOWED] [nvarchar](1000) NULL,
	[IPADDRESS] [nvarchar](250) NULL,
	[LOG] [nvarchar](10) NULL,
	[ACTIVE] [nvarchar](10) NULL,
	[INTERFACE_TYPE] [nvarchar](100) NULL,
	[MODE] [nvarchar](100) NULL,
	[ARP_FORWARD] [nvarchar](10) NULL,
	[USED] [int] NULL,
	[SECURITY_LEVEL] [nvarchar](50) NULL,
	[SPEED] [nvarchar](50) NULL,
	[DUPLEX] [nvarchar](50) NULL,
	[DESCRIPTION] [nvarchar](1000) NULL,
	[INTERFACE_NETWORK_ZONE] [nvarchar](50) NULL,
 CONSTRAINT [InterfaceDetails_PK] PRIMARY KEY CLUSTERED 
(
	[INTERFACEID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Index [IDX_1458528694]    Script Date: 6/29/2019 5:53:30 PM ******/
CREATE NONCLUSTERED INDEX [IDX_1458528694] ON [dbo].[InterfaceDetails]
(
	[RID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[InterfaceDetails] ADD  DEFAULT ('-') FOR [ALIAS_NAME]
GO
ALTER TABLE [dbo].[InterfaceDetails] ADD  DEFAULT ('0') FOR [USED]
GO
ALTER TABLE [dbo].[InterfaceDetails]  WITH CHECK ADD  CONSTRAINT [InterfaceDetails_FK1] FOREIGN KEY([RID])
REFERENCES [dbo].[Resources] ([RESOURCEID])
GO
ALTER TABLE [dbo].[InterfaceDetails] CHECK CONSTRAINT [InterfaceDetails_FK1]
GO
