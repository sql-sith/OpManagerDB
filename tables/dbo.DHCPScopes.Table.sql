USE [OpManagerDB]
GO
/****** Object:  Table [dbo].[DHCPScopes]    Script Date: 6/29/2019 5:47:10 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DHCPScopes](
	[DHCPScopeID] [bigint] NOT NULL,
	[DHCPServerID] [bigint] NOT NULL,
	[ScopeName] [varchar](200) NULL,
	[ScopeAddress] [varchar](15) NOT NULL,
	[SubNetMask] [varchar](15) NOT NULL,
	[StartAddrInLong] [bigint] NOT NULL,
	[EndAddrInLong] [bigint] NOT NULL,
	[ScopeSize] [bigint] NULL,
	[ReservedIPs] [int] NULL,
	[LeasedIPs] [int] NULL,
	[ScopeState] [varchar](25) NULL,
	[ScopeUsage] [real] NULL,
	[ScopeComments] [varchar](1000) NULL,
	[AddedTime] [datetime] NULL,
 CONSTRAINT [DHCPScopes_PK] PRIMARY KEY CLUSTERED 
(
	[DHCPScopeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Index [IDX_188139325]    Script Date: 6/29/2019 5:53:30 PM ******/
CREATE NONCLUSTERED INDEX [IDX_188139325] ON [dbo].[DHCPScopes]
(
	[DHCPServerID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[DHCPScopes]  WITH CHECK ADD  CONSTRAINT [DHCPScopes_FK1] FOREIGN KEY([DHCPServerID])
REFERENCES [dbo].[DHCPServers] ([DHCPServerID])
GO
ALTER TABLE [dbo].[DHCPScopes] CHECK CONSTRAINT [DHCPScopes_FK1]
GO
