USE [OpManagerDB]
GO
/****** Object:  Table [dbo].[DHCPServers]    Script Date: 6/29/2019 5:47:10 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DHCPServers](
	[DHCPServerID] [bigint] NOT NULL,
	[ServerAddress] [varchar](15) NOT NULL,
	[AddrInLong] [bigint] NOT NULL,
	[ServerType] [varchar](200) NULL,
	[IPUsage] [real] NULL,
	[TotalScopes] [int] NULL,
	[TotalIps] [int] NULL,
	[LeasedIps] [int] NULL,
	[ReservedIps] [int] NULL,
	[AvailableIpsForLease] [int] NULL,
	[LastScanTime] [datetime] NULL,
	[AddedBy] [varchar](200) NULL,
	[AddedTime] [datetime] NULL,
	[ScanStatus] [int] NULL,
	[DOMAIN_ID] [bigint] NOT NULL,
	[REMARKS] [varchar](200) NOT NULL,
 CONSTRAINT [DHCPServers_PK] PRIMARY KEY CLUSTERED 
(
	[DHCPServerID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Index [IDX_1874438188]    Script Date: 6/29/2019 5:53:30 PM ******/
CREATE NONCLUSTERED INDEX [IDX_1874438188] ON [dbo].[DHCPServers]
(
	[DOMAIN_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[DHCPServers] ADD  DEFAULT ('  ') FOR [REMARKS]
GO
ALTER TABLE [dbo].[DHCPServers]  WITH CHECK ADD  CONSTRAINT [DHCPServers_FK1] FOREIGN KEY([DOMAIN_ID])
REFERENCES [dbo].[ADDomain] ([DOMAIN_ID])
GO
ALTER TABLE [dbo].[DHCPServers] CHECK CONSTRAINT [DHCPServers_FK1]
GO
