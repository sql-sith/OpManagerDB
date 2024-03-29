USE [OpManagerDB]
GO
/****** Object:  Table [dbo].[RegionalServerInfo]    Script Date: 6/29/2019 5:50:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RegionalServerInfo](
	[NAME] [varchar](100) NOT NULL,
	[OWNERNAME] [varchar](25) NOT NULL,
	[IPADDRESS] [varchar](50) NULL,
	[TIMEDIFF] [bigint] NULL,
	[TIMEZONE] [varchar](50) NULL,
	[OSNAME] [varchar](50) NULL,
	[LASTUPDATETIME] [bigint] NULL,
	[DNSNAME] [varchar](50) NULL,
	[READINTERVAL] [bigint] NULL,
	[WRITEINTERVAL] [bigint] NULL,
	[STARTID] [bigint] NULL,
	[FRESHINST] [varchar](50) NULL,
	[NATNAME] [varchar](50) NULL,
	[NATPORT] [bigint] NULL,
	[NATPROTOCOL] [varchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[NAME] ASC,
	[OWNERNAME] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [RegionalServerInfo0_ndx]    Script Date: 6/29/2019 5:53:30 PM ******/
CREATE NONCLUSTERED INDEX [RegionalServerInfo0_ndx] ON [dbo].[RegionalServerInfo]
(
	[NAME] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [RegionalServerInfo1_ndx]    Script Date: 6/29/2019 5:53:30 PM ******/
CREATE NONCLUSTERED INDEX [RegionalServerInfo1_ndx] ON [dbo].[RegionalServerInfo]
(
	[OWNERNAME] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
