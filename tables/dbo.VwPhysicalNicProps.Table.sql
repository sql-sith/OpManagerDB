USE [OpManagerDB]
GO
/****** Object:  Table [dbo].[VwPhysicalNicProps]    Script Date: 6/29/2019 5:53:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[VwPhysicalNicProps](
	[UPLINK_ID] [bigint] NOT NULL,
	[VHOST_ID] [bigint] NOT NULL,
	[UPLINK_NAME] [varchar](50) NOT NULL,
	[MAC_ADDRESS] [varchar](50) NOT NULL,
	[UPLINK_DRIVER] [varchar](100) NOT NULL,
	[NIC_IPADDRESS] [varchar](50) NULL,
	[NIC_SUBNET] [varchar](50) NULL,
	[LINK_SPEED] [int] NULL,
	[FULL_DUPLEX] [bit] NOT NULL,
	[CONNECT_STATUS] [bit] NOT NULL,
 CONSTRAINT [VwPhysicalNicProps_PK] PRIMARY KEY CLUSTERED 
(
	[UPLINK_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY],
 CONSTRAINT [VwPhysicalNicProps_UK0] UNIQUE NONCLUSTERED 
(
	[UPLINK_NAME] ASC,
	[VHOST_ID] ASC,
	[MAC_ADDRESS] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Index [IDX__914178419]    Script Date: 6/29/2019 5:53:30 PM ******/
CREATE NONCLUSTERED INDEX [IDX__914178419] ON [dbo].[VwPhysicalNicProps]
(
	[VHOST_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[VwPhysicalNicProps]  WITH CHECK ADD  CONSTRAINT [VwPhysicalNicProps_FK1] FOREIGN KEY([VHOST_ID])
REFERENCES [dbo].[VwHOSTPROPS] ([VHOST_ID])
GO
ALTER TABLE [dbo].[VwPhysicalNicProps] CHECK CONSTRAINT [VwPhysicalNicProps_FK1]
GO
