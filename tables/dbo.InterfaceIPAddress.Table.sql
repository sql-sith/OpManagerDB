USE [OpManagerDB]
GO
/****** Object:  Table [dbo].[InterfaceIPAddress]    Script Date: 6/29/2019 5:48:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[InterfaceIPAddress](
	[ROUTER_ID] [int] NOT NULL,
	[INTERFACE_INDEX] [int] NOT NULL,
	[INTERFACE_IPADDRESS] [varchar](250) NOT NULL,
 CONSTRAINT [InterfaceIPAddress_PK] PRIMARY KEY CLUSTERED 
(
	[ROUTER_ID] ASC,
	[INTERFACE_INDEX] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Index [IDX__1473745648]    Script Date: 6/29/2019 5:53:30 PM ******/
CREATE NONCLUSTERED INDEX [IDX__1473745648] ON [dbo].[InterfaceIPAddress]
(
	[ROUTER_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[InterfaceIPAddress]  WITH CHECK ADD  CONSTRAINT [InterfaceIPAddress_FK] FOREIGN KEY([ROUTER_ID])
REFERENCES [dbo].[NetFlow_Router] ([ROUTER_ID])
GO
ALTER TABLE [dbo].[InterfaceIPAddress] CHECK CONSTRAINT [InterfaceIPAddress_FK]
GO
