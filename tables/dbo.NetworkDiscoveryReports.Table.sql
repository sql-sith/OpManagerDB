USE [OpManagerDB]
GO
/****** Object:  Table [dbo].[NetworkDiscoveryReports]    Script Date: 6/29/2019 5:49:48 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NetworkDiscoveryReports](
	[ID] [bigint] NOT NULL,
	[PROFILEID] [bigint] NOT NULL,
	[DEVICENAME] [varchar](200) NULL,
	[IPADDRESS] [varchar](200) NULL,
	[DEVICETYPE] [varchar](250) NULL,
	[SNMPENABLED] [varchar](25) NULL,
	[ACTION] [varchar](50) NULL,
	[ACTIONDESCRITION] [varchar](250) NULL,
	[TYPE] [varchar](25) NOT NULL,
	[TIME] [bigint] NOT NULL,
	[CATEGORY] [varchar](100) NULL,
	[VENDORNAME] [varchar](200) NULL,
 CONSTRAINT [NetworkDiscoveryReports_PK1] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
